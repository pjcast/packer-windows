:: https://www.python.org/ftp/python/3.8.3/python-3.8.3.exe
if not exist "C:\Windows\Temp\python-install.exe" (
  powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.8.3/python-3.8.3.exe', 'C:\Windows\Temp\python-install.exe')" <NUL
)

C:\Windows\Temp\python-install.exe /passive /quiet PrependPath=1 TargetDir=C:\python /log C:\Windows\Temp\python.log

c:\python\python -m pip install --upgrade pip
c:\python\python -m pip install pytest