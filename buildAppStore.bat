mode con: cols=50 lines=35
@echo off
@taskkill /f /im Appstore.exe>nul
cls
cd /d %~dp0Appstore\Appstore
@echo ���²˵�����....
call updater.bat
@echo ���²˵��������!
cd /d %~dp0
if exist Appstore.exe del /q /f Appstore*.exe*
@echo ���ƿտ��ļ���...
copy bin\AppStore.exe Appstore.exe>nul
@echo ����̵굽�տ��ļ�AppStore.exe...
bin\7zx64 a AppStore.exe AppStore\ >nul
echo AppStore.exe�������!
echo ����ӵ������ũ����Ʒ������̵�������ɣ��������·�ʹ�ð�!
pause

