# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import rng_tools with context %}

rng-tools/package/install:
  pkg.installed:
    - name: {{ rng_tools.pkg.name }}
