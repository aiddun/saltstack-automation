include:
- qubes.vmreloader

systemctl restart --no-block qubes-reloadvms.service:
  cmd.run:
  - require:
    - file: /etc/systemd/system/qubes-reloadvms.service
    - file: /usr/local/bin/qvm-reloadvms
    - cmd: systemctl daemon-reload
