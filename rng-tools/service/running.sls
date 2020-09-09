# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_config_file = tplroot ~ '.config.file' %}
{%- from tplroot ~ "/map.jinja" import rng_tools with context %}

include:
  - {{ sls_config_file }}

rng-tools/service/running:
  service.running:
    - name: {{ rng_tools.service.name }}
    - enable: true
    - watch:
      - sls: {{ sls_config_file }}
