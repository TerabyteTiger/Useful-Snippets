Import-Module posh-git
Import-Module oh-my-posh
Import-Module PoShFuck
Import-Module PSColor
Set-Theme Robbyrussell

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
