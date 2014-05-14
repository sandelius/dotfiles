# SETTINGS
export EDITOR='subl'
export CLICOLOR=1

# PATHS
export PATH="~/bin:${PATH}:/usr/local/bin"

# PROMT
export PS1='\e[0:35m⌘\e[m \e[0:36m\w/\e[m \e[0:33m`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\e[m'

# RBENV
export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

# ALIASES
alias be="bundle exec"

alias db:reset="bundle exec rake db:drop db:create db:migrate db:seed"

alias mysql:start="mysql.server start"
alias mysql:stop="mysql.server stop"

alias pg:start="pg_ctl -D /usr/local/var/postgres start"
alias pg:stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias redis:start="redis-server /usr/local/etc/redis.conf"
alias redis:stop="redis-cli shutdown"

alias memcached:start="memcached -d"
alias memcached:stop="killall memcached"

alias mongo:start="brew services start mongodb"
alias mongo:stop="brew services stop mongodb"
