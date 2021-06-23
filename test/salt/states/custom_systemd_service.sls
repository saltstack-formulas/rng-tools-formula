# This state is used to prepare environment for formula testing

# In distros that have a systemd unit, make sure the service is
# started even if running in a containerized environment

test-salt-states-custom-systemd-service-unit-file-file-managed:
  file.managed:
    - name: /etc/systemd/system/rngd.service
    - makedirs: true
    - contents: |
        # This file is managed by Salt
        [Unit]
        Description=Hardware RNG Entropy Gatherer Daemon
        [Service]
        ExecStart=/usr/sbin/rngd -f
        [Install]
        WantedBy=multi-user.target
    - watch_in:
      - cmd: test-salt-states-custom-systemd-systemctl-reload-cmd-wait
    - require_in:
      - service: rng-tools/service/running

test-salt-states-custom-systemd-systemctl-reload-cmd-wait:
  cmd.wait:
    - name: systemctl daemon-reload
    - runas: root
