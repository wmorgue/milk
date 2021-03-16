## 🥛 milk tweak
---

Tap on status bar — get UIAlert.


To follow along, you will require the following things:

1. [Theos].
2. A machine running macOS, Windows 10 with WSL, or Linux with swift toolchain.
3. A jailbroken iOS device.


### Using

```bash
$ git clone git@github.com:wmorgue/milk.git
$ cd milk
$ # export device IP address, for example:
$ export THEOS_DEVICE_IP=10.10.1.50
$ make do
```


[Theos]: https://github.com/theos/theos/wiki/Installation

### Uninstalling

1. Remove it just from `Cydia`.
2. Manually via `ssh`:

```bash
ssh youDevice
apt remove com.vrm0rgu3.milk
```

Restart SpringBoard manually like dat:

```bash
ps aux | grep -i spring
kill -9 PID
```
