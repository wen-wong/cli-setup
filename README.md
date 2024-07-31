# 💆🏻‍♂️ cli-setup
This project allows users to create a Debian CLI profile by running a single bash script. The idea was initially created to generate profiles for the purpose of setting up new virtual machines everyday. This led to lots of overhead and lots of googling to setup a dev environment. So this project installs all the tools required to look like a dev.

## 🏃🏻‍♀️ How to run it
1. Clone the repository
```
git clone git@github.com:wen-wong/automatic-giggle.git
```
2. Install GNU Stow
```
sudo apt install stow
```
3. Change directory to `cli-setup`
```
cd <PATH>/cli-setup
```
4. Ship configuration from `cli-setup`
```
stow .
```
**NOTE: The installation assumes that you're running it in a Debian environment with Git, Vim and Bash installed.**

## 👀 What does it look like
Here is the following project structure
```
cli-setup
```

## 💪🏻 What does each script do
### `install.sh`
Install all software packages.
### `delete.sh`
Remove all software packages.
