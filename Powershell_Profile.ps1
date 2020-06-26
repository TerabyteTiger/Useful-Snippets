Import-Module posh-git
Import-Module oh-my-posh
Import-Module PoShFuck
Import-Module PSColor
Set-Theme Robbyrussell

# Change Color of Commands to Magenta (-b in git checkout -b)
Set-PSReadLineOption -TokenKind Parameter -ForegroundColor Magenta

# Change color of Operators to Red (Easier to read)
Set-PSReadLineOption -TokenKind Operator -ForegroundColor Red

# Change file colors to not be hard to read
$global:PSColor.File.Hidden.Color = 'Green'

function commit {
  git add *
  git commit -m $args
}

function push {
  git push
}

function clone {
  git clone $args
}

function sync {
  git pull
  git push
}

function remote {
  git pull
  git checkout --track origin/$args
}

function codes {
  code .
  npm run serve
}

cd .\Desktop\
