FROM abiosoft/caddy:0.10.7

ADD ./caddy/Caddyfile /etc/Caddyfile
ADD ./www /srv
