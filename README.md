NewEra
===

## System Requirement

* Ruby ~> 3.0.4
* PostgreSQL ~> 14.0
* Node.js ~> 16.0

## Development

The development environment is based on macOS.

### Homebrew

We use [Homebrew](https://brew.sh/index_zh-tw) to manage the packages on macOS.

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

We can use `brew doctor` to ensure the Homebrew is available after installing it.

### Ruby

To smooth upgrade the Ruby version, we choose `rbenv` to manage the Ruby versions.

```bash
brew install rbenv
```

After installation, please follow the message to configure `.bashrc` or your shell config.

```bash
rbenv install 3.0.4
```

You may need to install `bundler` by yourself if the `bundle` command is not found.

```bash
# Ensure already switch to correct Ruby version
ruby -v
# => ruby 3.0.4p208 (2022-04-12 revision 3fa771dded) [x86_64-darwin21]

gem install bundler
```
### PostgreSQL

Before install PostgreSQL, please check the version is pin with correct version.

```bash
# Install
brew install postgresql@13

# Start server
brew services start postgresql@13
```

### Node.js

We will need Node.js to compile JavaScript and CSS.

```bash
brew install node
```

The Rails use `yarn` as package manager for Node.js.

```bash
brew install yarn
```

> The Node.js version doesn't constraint to specify the version, the latest stable version is suggested.

### Rails

Use `git clone git@github.com:BasalticStudio/new-era.git` to your machine.

```bash
# Switch to project folder.
cd new-era

# Install ncessary packages
bundle install
yarn install

# Setup the git hook
bundle exec overcommit --install
```

Overcommit will check for:

1. pre-commit: rubocop for syntax, sorbet for type check
2. pre-push: brakeman for security auditing

```bash
# Initialize batabase
bundle exec rake db:create

# Update schema to latest version
bundle exec rake db:migrate
```

## Operate in local

### Dev Server

```bash
./bin/dev
```

You can see the website at `http://localhost:3000`

#### PendingMigration Error

Run `db:migrate` again to update the schema

```bash
bundle exec rake db:migrate
```

#### Foreman not found

Our project use Foreman to run Rails server with JavaScript / CSS compiler.

```bash
gem install foreman
```

### Running Unit Test

```bash
bundle exec rspec
```

### Running E2E Test

```bash
bundle exec cucumber
```

### Ruby Syntax Check

```bash
bundle exec rubocop
```

### Ruby Security Check

```bash
bundle exec brakeman
```

### Setup `.env`

Create a `.env` will allow you change settings in local dev environment.

```bash
cp .env.example .env
```

## License

There are two license for source code and assets.

The source code is released under [Apache 2.0](LICENSE.Apache-2.0) and assets is under [CC BY-NC-SA 4.0](LICENSE.BY-NC-SA-4.0).
