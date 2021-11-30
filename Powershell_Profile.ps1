Import-Module posh-git
Import-Module oh-my-posh
Import-Module PoShFuck
Import-Module PSColor
Set-PoshPrompt -Theme M365Princess

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
