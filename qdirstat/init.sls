docker_ppa_repo:
  pkgrepo.managed:
    - name: deb http://ppa.launchpad.net/nathan-renniewaldock/qdirstat/ubuntu {{ grains['oscodename'] }} main     
    - file: /etc/apt/sources.list.d/qdirstat.list
    - keyid: 428926204FE30238F00B98224CDB129629A4B41A 
    - keyserver: keyserver.ubuntu.com
    - require_in:
      - qdirstat_package_dependencies

docker_package_dependencies:
  pkg.installed:
    - pkgs:
      - qdirstat
