core_packages:
  pkg:
    - installed
    - pkgs:
      - xfsprogs
      - rsync
      - git
      - lvm2
      - mosh
      - screen
      - tmux
      - nmap
      - python-pip

boto:
  pip.installed

awscli:
  pip.installed
