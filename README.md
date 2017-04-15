# **DBTeamV2-MLCS** #

[![Library](https://img.shields.io/badge/TDLib-beta-brightgreen.svg)](https://core.telegram.org/tdlib)
[![Telegram-cli](https://img.shields.io/badge/TDCli-Bitbucket-green.svg)](https://bitbucket.org/vysheng/tdcli)
[![Lua](https://img.shields.io/badge/Lua-5.2-blue.svg)](https://www.lua.org/)
[![Redis](https://img.shields.io/badge/Redis-3.2.8-red.svg)](https://redis.io/)
[![License](https://img.shields.io/badge/License-GNU%20GPL--3-yellow.svg)](https://github.com/Josepdal/DBTeamV1/blob/master/LICENSE)


### An administration Telegram bot using Telegram-cli

DBTeamV2-MLCS is a a powerful administration userbot that uses [Telegram-Cli](https://valtman.name/telegram-cli).  
It is programmed in [Lua](https://www.lua.org/) and uses the rapid [Redis](https://redis.io/) database.

The difference among the old [DBTeamV2](https://github.com/saman9074/DBTeamV2) and [DBTeamV2-MLCS](https://github.com/saman9074/DBTeamV2-MLCS) is that  Multi-Language Commands Support

# Summary

- Easy to setup and to update, no compilation needed.
- Uses a plugins system so you can easily configure or add what you need.
- Multilanguage and easy to add new languages.
- Has many funtions that normal bots are not able to do, e.g., remove messages.
- Advanced moderation system.
- Has privilege ranges (sudo, admin, mod, user).
- Simple and intuitive command usages.
- Compatible with most of recent added telegram additions.
- Really fast and stable.
- Multi-Language commands Support


# Installation

Debian/Ubuntu and derivatives:
```bash
# Tested on Ubuntu 16.04 and Debian 8.7.1 stable. (please use release "stable", isn't working on stretch/testing)
sudo apt-get install git redis-server libconfig8-dev libjansson-dev lua5.2 liblua5.2-dev lua-lgi glib-2.0 libnotify-dev libssl-dev libssl1.0.0 make libstdc++6 g++-4.9 unzip tmux -y

# If you have errors (maybe you'll need this on Ubuntu)
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y; sudo apt-get autoclean; sudo apt-get update
sudo apt-get install git redis-server libconfig8-dev libjansson-dev lua5.2 liblua5.2-dev lua-lgi glib-2.0 libnotify-dev libssl-dev libssl1.0.0 make libstdc++6 g++-4.9 unzip libreadline-gplv2-dev libreadline5-dev tmux -y

#luarocks install
wget http://luarocks.org/releases/luarocks-2.2.2.tar.gz
tar zxpf luarocks-2.2.2.tar.gz
cd luarocks-2.2.2
./configure; sudo make bootstrap
sudo luarocks install serpent
#if error clone
git config --global url."https://".insteadOf git://
```

Arch:
```bash
sudo pacman -S yaourt
sudo yaourt -S git redis-server libconfig8-dev libjansson-dev lua5.2 liblua5.2-dev lua-lgi glib-2.0 libnotify-dev libssl-dev libssl1.0.0 tmux
```

Fedora:
```bash
sudo dnf install git redis-server libconfig8-dev libjansson-dev lua5.2 liblua5.2-dev lua-lgi glib-2.0 libnotify-dev libssl-dev libssl1.0.0 tmux
```                   
---------------------------------

After installing the dependencies, lets install the bot:
```bash
 git clone https://github.com/saman9074/DBTeamV2-MLCS.git
 cd DBTeamV2-MLCS
 chmod +x launch.sh
 ./launch.sh install # you can use the option --no-download and only configure DBTeam
 ./launch.sh # Will ask you for a phone number & confirmation code.
```

To update the bot, you must exit the Tg-Cli console:
```bash
quit
```
And execute the following command:
```bash
./launch.sh update
```
The code will be updated if there is something new.

You can also run the bot in a Tmux session if you want:
```bash
./launch.sh tmux # create a session tmux

./launch.sh attach # if you want back to tmux session

./launch.sh kill # close session tmux
```


DBTeamV2-MLCS Developers:
--------------------
[![https://telegram.me/Golden3_ir_admin](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-AliAbdi-blue.svg)](https://t.me/Golden3_ir_admin)



Special thanks to:
==================
Yago Pérez and his telegram-bot
-------------------------------
[![https://telegram.me/Yago_Perez](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-Yago_Perez-blue.svg)](https://t.me/Yago_Perez)
[![https://github.com/yagop/telegram-bot](https://img.shields.io/badge/%F0%9F%92%AC_GitHub-Telegram_bot-green.svg)](https://github.com/yagop/telegram-bot)


Riccardo and his GroupButler
----------------------------
[![https://telegram.me/Riccardo](https://img.shields.io/badge/%F0%9F%92%AC_Telegram-bac0nnn-blue.svg)](https://t.me/bac0nnn)
[![https://github.com/RememberTheAir/GroupButler](https://img.shields.io/badge/%F0%9F%92%AC_GitHub-GroupButler-green.svg)](https://github.com/RememberTheAir/GroupButler)


vysheng and his new tg-cli
--------------------------
[![https://valtman.name/telegram-cli](https://img.shields.io/badge/%F0%9F%92%AC_WebPage-valtman.name-red.svg)](https://valtman.name/telegram-cli)
[![https://github.com/vysheng](https://img.shields.io/badge/%F0%9F%92%AC_GitHub-vysheng-green.svg)](https://github.com/vysheng)


rizaumami and his tdcli lib
---------------------------
[![https://github.com/rizaumami/tdcli.lua](https://img.shields.io/badge/%F0%9F%92%AC_GitHub-rizaumami-green.svg)](https://github.com/rizaumami/tdcli.lua)

Josepdal and his DBTeamV2
---------------------------
[![https://github.com/Josepdal/DBTeamV2](https://img.shields.io/badge/%F0%9F%92%AC_GitHub-Josepdal-green.svg)](https://github.com/Josepdal/DBTeamV2)



Thanks to [@Reload_Life](https://t.me/Reload_Life) for [settings design](https://github.com/Reload-Life).
