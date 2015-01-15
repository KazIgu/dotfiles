# -------------------------------------
# その他
# -------------------------------------

# cdしたあとで、自動的に ls する
function chpwd() { ls -1 }

# giboをpecoと一緒に
ggibo() {
  gibo -l | peco | xargs gibo
}

# cd-bookmark
fpath=($HOME/.zsh/functions/cd-bookmark(N-/) $fpath)
autoload -Uz cd-bookmark
alias cdb='cd-bookmark'

# iTerm2のタブ名を変更する
function title {
    echo -ne "\033]0;"$*"\007"
}

# iTerm2の背景色を変更する
background-color(){
  local R=$1
  local G=$2
  local B=$3
  /usr/bin/osascript <<EOF
tell application "iTerm"
  tell the current terminal
    tell the current session
      set background color to {$(($R*65535/255)), $(($G*65535/255)), $(($B*65535/255))}
    end tell
  end tell
end tell
EOF
}
bgcolor(){
  if [ "$#" = 1 ];then
    if [ "$1" = "-r" ];then
      background-color $(($RANDOM%256)) $(($RANDOM%256)) $(($RANDOM%256))
    else
      if [ "$1" = "-d" ];then
        background-color 0 0 0
      fi
    fi
  else
    if [ "$#" = 3 ];then
      background-color $1 $2 $3
    fi
  fi
}

# iTerm2の背景画像を変更する
background-image(){
  if [ "$1" = "-d" ];then
    local Image=""
  else
    local Image=$HOME/Pictures/iTerm2/background.png
  fi
  /usr/bin/osascript <<EOF
tell application "iTerm"
  tell the current terminal
    tell the current session
      set background image path to "$Image"
    end tell
  end tell
end tell
EOF
}
bgimage(){
  local Image=$HOME/Pictures/iTerm2/background.png
  local Context="$HOME/Pictures/iTerm2/"
  local Width=$(($(tput lines)*10))
  local Height=$(($(tput cols)*5))
  if [ "$#" = 0 ];then
    return false
  fi
  if [ "$1" = "-d" ];then
    background-image -d
  else
    if [ "$1" = "-r" ];then
      if [ "$#" = 1 ];then
        local DirNum="$(ls -1F ~/Pictures/iTerm2 | grep / | wc -l)"
        local DirRan="$(((RANDOM%$DirNum)+1))"
        local DirName="$(ls -1F ~/Pictures/iTerm2 | grep /| head -n $DirRan |tail -n 1)"
      else
        local DirName=$2
      fi
      local Num="$(ls -1F ~/Pictures/iTerm2/$DirName | grep -v / | wc -l)"
      local Ran="$(((RANDOM%$Num)+1))"
      local File="$(ls -1F ~/Pictures/iTerm2/$DirName | grep -v / | head -n $Ran |tail -n 1)"
      local FilePath="$DirName/$File"
      convert $Context$FilePath -resize "$Height"x"$Width" -size "$Height"x"$Width" xc:"#000000" +swap -gravity center -composite $Image
      background-image
      echo bgimage \"$FilePath\"
    else
      convert $Context$1 -resize "$Height"x"$Width" -size "$Height"x"$Width" xc:"#000000" +swap -gravity center -composite $Image
      background-image
    fi
  fi
}

# iTerm2の背景色と背景画像をRandomに変更する
background(){
  if [ "$1" = "-d" ];then
    bgcolor -d
    bgimage -d
  fi
  if [ "$1" = "-r" ];then
    bgimage -r
    bgcolor -r
  fi
}
