@echo off
REM Stop the script if any command fails
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

echo Installing dependencies...
pip install -r requirements.txt

echo Collecting static files...
python manage.py collectstatic --noinput

echo Running migrations...
python manage.py migrate
