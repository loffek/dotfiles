# This is run at login
#   (http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html)

# nothing special here, just load the .bashrc to get consistent behaviour,
# regardless of how bash is loaded (login, remote, scripts, terminal emulator, etc...

# Load .bashrc if it exists and is readable
[[ -r ~/.bashrc ]] && source ~/.bashrc

# only do this at login:
if [[ -r /Users/loffek/.opam/opam-init/init.sh ]] ; then
    . /Users/loffek/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
fi

