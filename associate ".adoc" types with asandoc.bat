set ftypename=asandoc_signed_file
set extension=.adoc
set pathtoexe="C:\Program Files\AsanDocClient\AsanDocClient.exe"
set pathtoicon=""

if %pathtoicon%=="" set pathtoicon=%pathtoexe%,0
REG ADD HKEY_CLASSES_ROOT\%extension%\ /t REG_SZ /d %ftypename% /f
REG ADD HKLM\SOFTWARE\Classes\%ftypename%\DefaultIcon\ /t REG_SZ /d %pathtoicon% /f
ftype %ftypename%=%pathtoexe% "%%1" %%*
assoc %extension%=%ftypename%
