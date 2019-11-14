Import-Module posh-git
Import-Module oh-my-posh
Import-Module PoShFuck
Import-Module PSColor
Set-Theme Robbyrussell

# Change Color of Commands to Magenta (-b in git checkout -b)
Set-PSReadlineOption -TokenKind Parameter -ForegroundColor Magenta

# Change color of Operators to Red (Easier to read)
Set-PSReadlineOption -TokenKind Operator -ForegroundColor Red

# Change file colors to not be hard to read
$global:PSColor.File.Hidden.Color = 'Green'

function commit {
  git add *
  git commit -m $args
}

function clone {
  git clone $args
}

function sync {
  git pull
  git push
}

cd .\Desktop\
