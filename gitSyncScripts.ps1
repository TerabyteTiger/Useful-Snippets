# Run git pull for every directory inside "./test/"
Get-ChildItem './test'  | ForEach-Object {
  echo "$($_.FullName)"
  cd "$($_.FullName)"
  git pull
} 

cd "Return to Base Directory"

# Sync any missing changes with a basic message for every child directory inside './test/'
Get-ChildItem './test'  | ForEach-Object {
  echo "$($_.FullName)"
  cd "$($_.FullName)"
  git add *
  git commit -m "🎲 Script Syncing"
} 

cd "Return to Base Directory"
