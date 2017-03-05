echo "---------- Brew ----------"
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
    /usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
else
    brew --version
fi

# ansible
echo "---------- Ansible ----------"
which -s ansible
if [[ $? != 0 ]] ; then
    brew install ansible
else
    ansible --version
fi

