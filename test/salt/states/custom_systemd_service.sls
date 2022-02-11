# This state is used to prepare environment for formula testing

# In distros that have a systemd unit, make sure the service is
# started even if running in a containerized environment

{%- set sls_config_file = 'rng-tools.config.file' %}
{%- set service_file = {
      'RedHat': '/usr/lib/systemd/system/rngd.service',
      'Gentoo': '/lib/systemd/system/rngd.service',
      'Suse':   '/usr/lib/systemd/system/rng-tools.service',
      'Arch':   '/usr/lib/systemd/system/rngd.service',
    }.get(grains.os_family, '') %}

test-salt-states-custom-systemd-service-file-replace:
  file.replace:
    - name: {{ service_file }}
    - pattern: 'ConditionVirtualization=!container'
    - repl: ''
    - show_changes: True
    - require:
      - sls: {{ sls_config_file }}

test-salt-states-custom-systemd-service-cmd-run:
  cmd.run:
    - name: systemctl daemon-reload
    - runas: root
    - onchanges:
      - file: test-salt-states-custom-systemd-service-file-replace
    - require_in:
      - service: rng-tools/service/running
