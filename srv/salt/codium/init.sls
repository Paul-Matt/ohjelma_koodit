/etc/apt/trusted.gpg.d/vscodium.gpg:
  file.managed:
    - source: salt://codium/vscodium.gpg

/etc/apt/sources.list.d/vscodium.list:
  file.managed:
    - source: salt://codium/vscodium.list

codium:
  pkg.installed:
    - refresh: True
