# dotfiles installation workflow
## Install [thoughtbot/rcm](https://github.com/thoughtbot/rcm)
rcm can be installed under MacOS and Ubuntu via Homebrew:
```bash
# brew tap thoughtbot/formulae
# Seems that thoughtbot/formulae is not needed anymore
brew install rcm
```
## Clone this repo to home in .dotfiles
```bash
cd ~
git clone https://github.com/v-egorov/dotfiles.git .dotfiles
```
## Install/update rc files from repo
```bash
rcup
```
See ```man rcup```, ```man mkrc``` for details
## Add new rc file
```bash
cd ~
mkrc .new_rc_file
cd .dotfiles
git add .new_rc_file
git commit
git push
```
Then update on other hosts via pulling updated repo and running ```rcup```
