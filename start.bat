@echo off
echo.
echo Content Switcher by GomXDD
echo.
echo 1 Keitan's Classic Formal Vest
echo.
set /p "option=:> "
if /i "%option%" equ "1" goto option1
goto :start

:option1
if exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts-old.xnb" (
	echo This option has installed before, Reverting...
	del /f "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts.xnb" >nul
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts-old.xnb" "shirts.xnb" >nul
	echo Successfully reverted.
	pause
	goto :start
) else (
	echo This option is not installed before. Applying...
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts.xnb" "shirts-old.xnb"
	powershell Invoke-WebRequest "https://github.com/GomXDD/Content-Switcher/raw/refs/heads/main/resources/options/1/shirts.xnb" -OutFile "%TEMP%\shirts.xnb"
	move %TEMP%\shirts.xnb "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer"
	echo Successfully applied. If you want to restore the content, Re-launch this script.
	pause
	goto :start
)