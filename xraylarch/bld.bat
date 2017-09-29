
"%SCRIPTS%\pip.exe" install --upgrade --use-wheel fabio pyFAI
"%PYTHON%" setup.py install
if errorlevel 1 exit 1
