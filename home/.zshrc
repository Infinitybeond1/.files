# Prompt
autoload -Uz add-zsh-hook
_nicy_prompt() {
	PS1=$("$HOME/nicy/nicy")
  RPS1="<< $(date +'%I:%M %p') <<"
}
add-zsh-hook precmd _nicy_prompt
# PATH
path() {
  for dir in "$@"
  do
    export PATH=$PATH:$dir
  done  
}
path "$HOME/.local/bin/" "$HOME/.nimble/bin/" "$HOME/.bun/bin" "$HOME/.jitter/bin" "$HOME/.config/nvim/bin" "$HOME/elixir-ls/" "$HOME/dev/flutter/bin" #"$HOME/zig"

# Aliases
aka() {
  alias $1="$2"
}

aka cp "cp -rvf"
aka rm "rm -rvf"
aka ls "exa --icons --color=always"
aka nf "fastfetch"
aka ff "fastfetch"
aka neofetch "fastfetch"
aka lite "lite-xl"
aka init-exe "degit Infinitybeond1/nim-template && nimble init"
aka gen-srcinfo "makepkg --printsrcinfo > .SRCINFO"
aka touch "rTouch"
aka code code-insiders
aka panes "colorscript -e panes"
aka flash "dfu-util -a 0 -d 0483:DF11 -s 0x8000000:leave -D"

scaff() {
  mkdir -p $1 
  cd $1 
  degit $2
}

upload() {
  file=$1
  url=$(curl -s -F"file=@$file" https://0x0.st)
  echo $url
  echo $url | xclip -i -sel clipboard
}

lscd() {
  cd $1
  ls
}

mkcd() {
  mkdir -p $1
  cd $1
}


aka 'cd' 'lscd'

# Syntax Highlighting
source ~/.zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# Autocompletions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/doc/find-the-command/ftc.zsh


# Bun
export BUN_INSTALL="/home/luke/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Nimph
export NIMPH_TOKEN="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"
export GITHUB_TOKEN=$NIMPH_TOKEN
function goto { pushd `nimph path $1`; }
export CHROME_EXECUTABLE=/usr/bin/chromium

if [ -e /home/luke/.nix-profile/etc/profile.d/nix.sh ]; then . /home/luke/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
