export APP_ENV="local"
export HOMEBREW_NO_ANALYTICS=1
export COMPOSER_MEMORY_LIMIT=-1
export PATH="$PATH:$HOME/.composer/vendor/bin"

alias vimrc="vim ~/.vimrc"
alias profile="vim ~/.zshrc"
alias refresh="source ~/.zshrc"

alias gr='git rebase -i $(git merge-base `git rev-parse --abbrev-ref HEAD` master)'
alias artisan="php artisan"
alias dc=docker-compose
alias web="dc exec web /bin/bash"

