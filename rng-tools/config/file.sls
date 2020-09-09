# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- set sls_package_install = tplroot ~ '.package.install' %}
{%- from tplroot ~ "/map.jinja" import rng_tools with context %}
{%- from tplroot ~ "/libtofs.jinja" import files_switch with context %}

include:
  - {{ sls_package_install }}

rng-tools/config/install:
  file.managed:
    - name: {{ rng_tools.config_file }}
    - source: {{ files_switch(['rng-tools.tmpl.jinja'],
                              lookup='rng-tools/config/install'
                 )
              }}
    - template: jinja
    - user: root
    - group: root
    - mode: 644
    - makedirs: true
    - require:
      - sls: {{ sls_package_install }}
    - context:
        config: {{ rng_tools.config | json }}
