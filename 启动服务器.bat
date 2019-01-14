@ECHO OFF
title Minecraft服务器
SET BINDIR=%~dp0
:_MENU
CLS
set tm1=%time:~0,2%
set tm2=%time:~3,2%
set tm3=%time:~6,2%
@echo. 
echo  现在时间：%date% %tm1%点%TM2%分
@echo. -----------------------------------------------------------------
@echo.                         Minecraft服务器                                                                   
@echo.                         服务器即将开启！
@echo.
@echo.           注意:关闭服务器前请在后台输入stop保存玩家数据
@echo.                      否则可能会出现回档情况
@echo.
@echo.                本服务端由MCBBS论坛 酷车手BB弹 搭建
@echo.                        未经允许禁止转载！
@echo.                        请勿用于商业用途！
@echo. -----------------------------------------------------------------
@echo.
@echo. 请按下任意键来启动服务器…………
@echo.
pause
cls
@echo.     
@echo. 现在时间：%date% %tm1%点%TM2%分
@echo. ----------------------------------------------------------------- 
@echo. 
@echo. 
@echo.                   服务器正在启动中,请稍等……
@echo. 
@echo.
@echo. -----------------------------------------------------------------
java -Xms1024M -Xmx1024M -jar paperclip.jar  //左侧的java可替换为自己java的路径 并加上双引号，比如"C:\Program Files\Java\jre1.8.0_101\bin\java.exe"  1024M可更改，若不够用可改为2048M甚至更大（前提是电脑有足够的内存）
@echo.
@echo. ----------------------------------------------------------------- 
@echo.               Minecraft --- 玩家数据保存完毕 已关服
@echo.
@echo.                         按任意键关闭该窗口
@echo. -----------------------------------------------------------------
pause
EXIT