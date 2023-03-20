# osx_install

get this script via safari
https://github.com/bengtbengtsson/osx_install.git

upgrade osx (manual)

install xcode (manual from appstore)

install .shh (manual, download from Lastpass)

<br>

set up xcode

```sh
$ xcode-select --install
```

<br>

install homebrew

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

<br>

install python

```sh
brew install python
```

<br>

install minimal anaconda (miniconda)

```sh
brew install --cask miniconda
```

<br>

install jave sdk

```sh
brew install --cask zulu
```

<br>

install node version manager

```sh
brew install nvm
```

<br>

install gnu pgp

```sh
brew install gnupg
```

<br>

install htop

```sh
brew install htop
```

<br>

install docker

```sh
brew install --cask docker
```

<br>

install ansible

```sh
brew install ansible
```

<br>

install android development

```sh
brew install --cask android-studio
```

<br>

install postman

```sh
brew install --cask postman
```

<br>

install thonny

```sh
brew install --cask thonny
```

<br>

install transmission

```sh
brew install --cask transmission
```

<br>

install utm (virtual machine manager)

```sh
brew install --cask utm
```

<br>

install google chrome

```sh
brew install google-chrome
```

<br>

install brave

```sh
brew install --cask brave-browser
```

<br>

install microsoft office

```sh
brew install --cask microsoft-office
```

<br>

install vlc

```sh
brew install --cask vlc
```

<br>

install visual studio code

```sh
brew install --cask visual-studio-code
```

<br>

install gimp

```sh
brew install --cask gimp
```

<br>

install inkscape

```sh
brew install --cask inkscape
```

<br>

install mullvad vpn

```sh
brew install --cask mullvadvpn
```

<br>

install rosetta 2

```sh
/usr/sbin/softwareupdate --install-rosetta --agree-to-license
```

<br>

install gtkwave

```sh
brew install --cask gtkwave
```

<br>

install unar (the unrchiver command line tool)

```sh
brew install unar
```

<br>

install iterm2

```sh
brew install --cask iterm2
```

<br>

install qemu

```sh
brew install qemu
```

<br>

install arm32 cross-compile toolchain

```sh
brew install --cask gcc-arm-embedded
```

<br>

install mongodb (manual)

log in to (using google chrome)

- github
- slack
- gmail, gcal, gdrive

set up wireless mouse and keyboard (manual)

set up tray (remove & add apps)

set up trackpad

DO NOT install microsoft teams (use web version)

DO NOT install zoom (use web version)

<br>

## ASAHI LINUX

Make a screen dump of result of

```sh
diskutil list
```

<br>

install

```sh
curl https://alx.sh | sh
```

<br>

uninstall, remove EFI partition

```sh
diskutil eraseVolume JHFS+ empty /dev/diskXsY
```
