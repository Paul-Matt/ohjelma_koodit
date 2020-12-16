openjdk-11-jdk:
  pkg.installed

/usr/eclipse:
  file.directory:
    - source: salt://eclipse/eclipse

/usr/share/applications/eclipse.desktop:
  file.managed:
    - source: salt://eclipse/eclipse.desktop

/usr/bin/eclipse:
  file.symlink:
    - target: /usr/eclipse/eclipse
