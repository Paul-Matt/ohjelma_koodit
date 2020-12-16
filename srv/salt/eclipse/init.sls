openjdk-11-jdk:
  pkg.installed

/usr/eclipse:
  file.recurse:
    - source: salt://eclipse/eclipse
    - dir_mode: 0755

/usr/share/applications/eclipse.desktop:
  file.managed:
    - source: salt://eclipse/eclipse.desktop
    - mode: 0755

/usr/bin/eclipse:
  file.symlink:
    - target: /usr/eclipse/eclipse
    - dir_mode: 0755