@echo off
Rem This is for activating a python venv and running flask
IF EXIST .\env (
  echo :^) Starting venv
  CALL .\env\Scripts\activate
  echo :^) venv started
  IF EXIST .\flask\%1.py (
    echo :^) Flask App set
    CALL set FLASK_APP=%1.py
    CALL cd .\flask
    CALL flask run
  ) ELSE (
    echo ^(X^) Specified flask file does not exist
    call deactivate
    echo venv deactivated
  )
) ELSE (
  echo ^(X^) No venv folder found. Process aborted
)