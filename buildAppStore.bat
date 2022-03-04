mode con: cols=50 lines=35
@echo off
@taskkill /f /im Appstore.exe>nul
cls
cd /d %~dp0Appstore\Appstore
@echo 更新菜单缓存....
call updater.bat
@echo 更新菜单缓存完成!
cd /d %~dp0
if exist Appstore.exe del /q /f Appstore*.exe*
@echo 复制空壳文件中...
copy bin\AppStore.exe Appstore.exe>nul
@echo 打包商店到空壳文件AppStore.exe...
bin\7zx64 a AppStore.exe AppStore\ >nul
echo AppStore.exe生成完毕!
echo 生成拥有自主农副产品的软件商店制作完成！快脱下衣服使用吧!
pause

