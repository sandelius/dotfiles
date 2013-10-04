# PROMT
export PS1='\e[0:35m⌘\e[m \e[0:36m\w/\e[m \e[0:33m`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`\e[m'

# RBENV
export RBENV_ROOT="${HOME}/.rbenv"
if [ -d "${RBENV_ROOT}" ]; then
  export PATH="${RBENV_ROOT}/bin:${PATH}"
  eval "$(rbenv init -)"
fi

# ALIASES
alias db:reset="bundle exec rake db:drop db:create db:migrate db:seed"

# PATH
export PATH=/usr/local/bin:/Users/sandelius/bin:/Applications/Postgres.app/Contents/MacOS/bin:$PATH

# SETTINGS
export EDITOR='subl'
export CLICOLOR=1