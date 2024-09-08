echo "Welcome back,"
echo '    _____'
echo '  /\`    \                 󰔶 󰝤  '
echo '  \ \ \L\_\    ___   ___  __  __ '
echo '   \ \____ \  /` , \/\  \/` \/` \ '
echo '    \/\ \L\ \/\ \L\ \ \   ,   ,  \'
echo '     \ \_____\ \__,\_\ \__\\\\__\\\\__\ '
echo '      \/_____/\/__,/_/\/__//__//__/'
echo

# create sym link to icloud
ICLOUD_PATH="~/Library/Mobile\ Documents/com~apple~CloudDocs"
if [ ! -L ~/icloud ]; then
    ln -s $ICLOUD_PATH ~/icloud
fi

# set initial working directory to icloud
cd ~/icloud

# aliases for navigation
alias me="cd ~"
alias ic="cd ~/icloud"
alias r="cd ~/icloud/repos"
alias d="cd ~/icloud/docs"
alias u="cd ~/icloud/utils"
alias wow="clear"

# aliases for nextjs
alias njsrun="npm run dev || (rm -rf node_modules && npm install && npm run dev)"

# zed zsh editor 
# Usage: zed [file_path] 
#        -> ctrl+j to save and close
autoload zed

# initialize oh-my-posh and load theme from
# $OH_MY_POSH_THEME (local path or https to json config file)
OH_MY_POSH_THEME="https://raw.githubusercontent.com/samuelbmarks/dotfiles/main/oh-my-posh/pinktoepro.omp.json"
eval "$(oh-my-posh init zsh --config $OH_MY_POSH_THEME)"

echo "Quick nav commands:"
echo "    ~               =>  me"
echo "    ~/icloud        =>  ic"
echo "    ~/icloud/repos  =>  r"
echo "    ~/icloud/docs   =>  d"
echo "    ~/icloud/utils  =>  u"
echo