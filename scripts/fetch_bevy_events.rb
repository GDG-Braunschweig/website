require 'net/http'
require 'json'
require 'yaml'
require 'fileutils'

CHAPTER_ID = 510
API_URL = "https://gdg.community.dev/api/event/?chapter=#{CHAPTER_ID}"
OUTPUT_DIR = "_data"
OUTPUT_FILE = "#{OUTPUT_DIR}/events.yml"

def fetch_events
  uri = URI(API_URL)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
rescue => e
  puts "Error fetching events: #{e.message}"
  nil
end

def process_events(data)
  return [] unless data && data['results']
  
  # Map Bevy API results to a cleaner format for Jekyll
  data['results'].map do |event|
    {
      'id' => event['id'],
      'title' => event['title'],
      'start_date' => event['start_date'],
      'end_date' => event['end_date'],
      'url' => event['url'],
      'status' => event['status']
    }
  end
end

puts "Fetching events for Chapter #{CHAPTER_ID}..."
raw_data = fetch_events
events = process_events(raw_data)

FileUtils.mkdir_p(OUTPUT_DIR)
File.write(OUTPUT_FILE, events.to_yaml)

puts "Successfully saved #{events.length} events to #{OUTPUT_FILE}"
