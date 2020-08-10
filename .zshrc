export HOMEBREW_NO_ANALYTICS=1

alias vimrc="vim ~/.vimrc"
alias profile="vim ~/.zshrc"
alias refresh="source ~/.zshrc"

alias git=hub
alias gr=git rebase -i $(git merge-base `git rev-parse --abbrev-ref HEAD` master)

alias dc="docker-compose"
