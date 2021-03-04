# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_config_file = tplroot ~ '.config.file' %}
{%- from tplroot ~ "/map.jinja" import rng_tools with context %}

include:
  - {{ sls_config_file }}

{%- set service_state = 'running' %}
{#- Do not attempt to run the service in a container where the service is configured with #}
{#- `ConditionVirtualization=!container` or similar (e.g. via. `kitchen-salt`) #}
{%- if grains.os_family in ['Suse'] and
      salt['grains.get']('virtual_subtype', '') in ['Docker', 'LXC', 'kubernetes', 'libpod'] %}
{%-   set service_state = 'dead' %}
{%- endif %}
rng-tools/service/{{ service_state }}:
  service.{{ service_state }}:
    - name: {{ rng_tools.service.name }}
    - enable: true
    - watch:
      - sls: {{ sls_config_file }}
