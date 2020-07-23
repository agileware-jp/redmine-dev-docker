## Requirements
- Git
- Docker

## Checkout Redmine

Clone `agileware-jp/redmine`

```sh
git clone git@github.com:agileware-jp/redmine.git
```

Write the path to REDMINE into `.env`

```sh
REDMINE_ROOT=/my/path/to/redmine
```

## Update local Redmine to latest commit

```sh
# Inside redmine directory
git fetch
git co master
git reset --hard origin/master
```

## Install Redmine

```sh
docker-compose up --no-start --build
docker-compose run redmine bundle install
docker-compose run redmine rails db:drop db:create db:migrate
```

## Start Redmine

```sh
docker-compose up
```
