
"%SCRIPTS%\pip.exe" install --upgrade fabio pyFAI
"%PYTHON%" setup.py install
if errorlevel 1 exit 1
