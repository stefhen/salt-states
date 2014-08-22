stefhen:
  ssh_auth:
    - present
    - source: salt://ssh-keys/keys/stefhen-rightscale.pub
    {% if grains['os'] == 'Ubuntu' %}
    - user: ubuntu
    {% elif grains['os'] == 'CentOS' %}
    - user: root
    {% endif %}
