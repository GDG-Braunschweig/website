---
layout: default
---

<div class="hero">
    <div class="container">
        <h1>Willkommen bei GDG Braunschweig</h1>
        <p>Innovation trifft Tradition im Herzen Niedersachsens.</p>
        <div class="hero-image-container">
            <img src="{{ "/assets/images/community-photo.jpg" | relative_url }}" alt="GDG Braunschweig Community" class="hero-image">
            <div class="lion-overlay">🦁</div>
        </div>
    </div>
</div>

<div class="container">
    <section id="events">
        <h2>Bevorstehende Events</h2>
        <div class="event-list">
            {% assign upcoming_events = site.data.events | where_exp: "item", "item.status == 'Published'" %}
            {% if upcoming_events.size > 0 %}
                <div class="gallery-grid">
                {% for event in upcoming_events limit:3 %}
                    <div class="announcement-item">
                        <h3>{{ event.title }}</h3>
                        <p>{{ event.start_date | date: "%d.%m.%Y %H:%M" }}</p>
                        <a href="{{ event.url }}" class="btn-bevy" target="_blank">Tickets & Info</a>
                    </div>
                {% endfor %}
                </div>
            {% else %}
                <p>Momentan sind keine neuen Events geplant. Schau doch mal auf unserer <a href="{{ site.bevy_link }}">Bevy-Seite</a> vorbei!</p>
            {% endif %}
        </div>
    </section>

    <section id="announcements">
        <h2>Aktuelle Ankündigungen</h2>
        <div class="announcement-list">
            {% for post in site.posts %}
                <article class="announcement-item">
                    <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
                    <p>{{ post.excerpt | strip_html | truncatewords: 30 }}</p>
                </article>
            {% else %}
                <p>Momentan gibt es keine neuen Ankündigungen. Schau bald wieder vorbei!</p>
            {% endfor %}
        </div>
    </section>

    <section id="gallery">
        <h2>Impressionen</h2>
        <p>Fotos von unseren letzten Events.</p>
        <div class="gallery-grid">
            <div class="gallery-item">
                <img src="{{ "/assets/images/community-photo-2.jpg" | relative_url }}" alt="GDG Braunschweig Event 2">
            </div>
            <div class="gallery-item">
                <img src="{{ "/assets/images/community-photo-3.jpg" | relative_url }}" alt="GDG Braunschweig Tech Talk">
            </div>
            <div class="gallery-item">
                <img src="{{ "/assets/images/community-photo.jpg" | relative_url }}" alt="GDG Braunschweig Event 1">
            </div>
            <div class="gallery-item">
                <img src="{{ "/assets/images/community-photo-4.jpg" | relative_url }}" alt="GDG Braunschweig Event 4">
            </div>
            <div class="gallery-item">
                <img src="{{ "/assets/images/community-photo-5.jpg" | relative_url }}" alt="GDG Braunschweig Historisch">
            </div>
            <div class="gallery-item">
                <img src="{{ "/assets/images/community-photo-6.jpg" | relative_url }}" alt="GDG Braunschweig I/O Extended">
            </div>
        </div>
    </section>

    <section id="team">
        <h2>Unser Team</h2>
        <div class="team-grid">
            <div class="team-member">
                <div class="avatar-container">
                    <img src="{{ "/assets/images/christian.jpg" | relative_url }}" alt="Christian Dziuba">
                </div>
                <h3>Christian Dziuba</h3>
                <p>Senior Android Developer</p>
                <a href="https://gdg.community.dev/u/mga38a/" class="btn-profile" target="_blank">Profil ansehen</a>
            </div>
            <div class="team-member">
                <div class="avatar-container">
                    <img src="{{ "/assets/images/philipp.jpg" | relative_url }}" alt="Philipp Neumann">
                </div>
                <h3>Philipp Neumann</h3>
                <p>Frontend Developer</p>
                <a href="https://gdg.community.dev/u/m6sats/" class="btn-profile" target="_blank">Profil ansehen</a>
            </div>
            <div class="team-member">
                <div class="avatar-container">
                    <img src="{{ "/assets/images/matthias.jpg" | relative_url }}" alt="Matthias Raaz">
                </div>
                <h3>Matthias Raaz</h3>
                <p>Organizer</p>
                <a href="https://gdg.community.dev/u/m5wud8/" class="btn-profile" target="_blank">Profil ansehen</a>
            </div>
        </div>
    </section>

    <section id="social">
        <h2>Community & Social Media</h2>
        <p>Werde Teil unserer Community und bleibe auf dem Laufenden.</p>
        <div class="social-links-container">
            <a href="{{ site.bevy_link }}" class="social-card bevy" target="_blank">
                <span class="social-icon">📅</span>
                <span class="social-text">Bevy Events</span>
            </a>
            <a href="{{ site.slack_link }}" class="social-card slack" target="_blank">
                <img src="https://upload.wikimedia.org/wikipedia/commons/d/d5/Slack_icon_2019.svg" alt="Slack" class="social-svg-icon">
                <span class="social-text">Slack Community</span>
            </a>
            <a href="{{ site.linkedin_url }}" class="social-card linkedin" target="_blank">
                <img src="https://upload.wikimedia.org/wikipedia/commons/c/ca/LinkedIn_logo_initials.png" alt="LinkedIn" class="social-svg-icon">
                <span class="social-text">LinkedIn Page</span>
            </a>
            <a href="https://github.com/{{ site.github_username }}" class="social-card github" target="_blank">
                <img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" alt="GitHub" class="social-svg-icon">
                <span class="social-text">GitHub Repo</span>
            </a>
        </div>
    </section>
</div>
