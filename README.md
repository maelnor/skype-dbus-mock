# skype-dbus-mock
Mocked systemd dbus interface for skype 8.30+.
Fixes segfault of skype on non-systemd systems.

## installation
On Gentoo put provided ebuild in your local overlay and emerge. But look who I'm telling. :)
On others copy:
```
skype-dbus-mock.conig -> /usr/share/dbus-1/system.d/
org.freedesktop.login1.service -> /usr/share/dbus-1/system-services/
skype-dbus-mock.py -> /usr/bin/skype-dbus-mock
```

run `sudo chmod +x /usr/bin/skype-dbus-mock` and restart udev service
