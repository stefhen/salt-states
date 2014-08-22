/root/.screenrc:
  file.managed:
    - source: salt://config/files/screenrc
    - user: root
    - group: root
    - mode: 644

{% if grains['os'] == 'Ubuntu' %}
/home/ubuntu/.screenrc:
  file.managed:
    - source: salt://config/files/screenrc
    - user: ubuntu
    - group: ubuntu
    - mode: 644
{% endif %}

/root/.vimrc:
  file.managed:
    - source: salt://config/files/vimrc
    - user: root
    - group: root
    - mode: 644

{% if grains['os'] == 'Ubuntu' %}
/home/ubuntu/.vimrc:
  file.managed:
    - source: salt://config/files/vimrc
    - user: ubuntu
    - group: ubuntu
    - mode: 644
{% endif %}
