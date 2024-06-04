# Homekit.sh plugin for Harmony One remote control

Prerequisites
-------------
- get a computer (e.g. a server or a Raspberry Pi)
- install [Nix](https://nixos.org/download/)
- install [Homekit.sh](https://github.com/jyrimatti/homekit.sh)

Setup for home automation
-------------------------

```
cd ~/.config/homekit.sh/accessories
```

Clone this repo
```
git clone https://github.com/jyrimatti/harmony.git
cd harmony
```

Store Harmony hub ID and address
```
echo '<my harmony hub address>' > .harmony-ip
echo '<my harmony hub ID>' > .harmony-id
chmod go-rwx .harmony*
```

You can use ./provision_info.sh to find your hub ID.
