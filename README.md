
# DFMCH Rails Bootcamp 2017

## Mac Setup

### Xcode Command-Line Tools
* It will ask if you want to install all of Xcode, you don't need that.
```bash
xcode-select --install
```

### HomeBrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Basic Utils
```bash
brew install ack gpg imagemagick sqlite
```

### MySQL Server 
* It will ask for a root password, anything is fine-- We need it later though

```bash
brew install mysql
brew services start mysql
```
      
### Cache Server
```bash
brew install memcached
brew services start memcached
```

### Capybara-Webkit
```bash
brew install qt@5.5
echo 'export PATH="$(brew --prefix qt@5.5)/bin:$PATH"' >> ~/.bashrc
brew link --force qt@5.5
```

### RVM - Ruby Version Manager
* Close all terminals when done with this step
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash
```

