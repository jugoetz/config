# file/directory operations
alias ls="ls -GF"
alias ll="ls -lh"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"
alias gcand="git commit --amend --no-edit --date='now'"
alias sshagent='eval "$(ssh-agent -s)"'

# open in other program
alias f="open -a Finder ./"

#   cdf:  'Cd's to frontmost window of MacOS Finder
#   ------------------------------------------------------
    cdf () {
        currFolderPath=$( /usr/bin/osascript <<EOT
            tell application "Finder"
                try
            set currFolder to (folder of the front window as alias)
                on error
            set currFolder to (path to desktop folder as alias)
                end try
                POSIX path of currFolder
            end tell
EOT
        )
        echo "cd to \"$currFolderPath\""
        cd "$currFolderPath"
    }

# resource management

#   memHogsTop, memHogsPs:  Find memory hogs
#   -----------------------------------------------------
    alias mem_hogs='top -l 1 -o rsize | head -20'
    alias mem_hogs_ps='ps wwaxm -o pid,stat,vsize,rss,time,command | head -10'

#   cpuHogs:  Find CPU hogs
#   -----------------------------------------------------
    alias cpu_hogs='ps wwaxr -o pid,stat,%cpu,time,command | head -10'

