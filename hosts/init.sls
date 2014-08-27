{% from "hosts/map.jinja" import hosts with context %}

# Replace /etc/hosts with our managed version
/etc/hosts:
  file.managed:
  - source: salt://hosts/files/hosts.{{ grains['os_family'] }}
  - user: root
  - group: root
  - mode: 644
  - template: jinja

# Replace appropriate hostname file with our version
{{ hosts.hostname }}:
  file.managed:
    - source: salt://hosts/files/hostname.{{ grains['os_family'] }}
    - user: root
    - group: root
    - mode: 644
    - template: jinja

# Update hostname so we don't have to reboot right now
/bin/hostname {{ grains['id'] }}:
  cmd.run
