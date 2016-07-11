{% set salt_states = salt['pillar.get']('salt_states', {}) %}
{% for label, state in salt_states|dictsort(true, 'key') %}
# {{ label }}
{{ state|yaml }}
{% endfor %}
