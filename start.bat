@echo off
echo.
echo Content Switcher by GomXDD
echo.
echo 1 Keitan's Classic Formal Vest
echo 2 Gom's Craftable Merge for ma gf
echo.
set /p "option=:> "
if /i "%option%" equ "1" goto option1
if /i "%option%" equ "2" goto option2
goto :start

:option1
if exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts-old.xnb" (
	echo This option has installed before, Reverting...
	del /f "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts.xnb"
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts-old.xnb" "shirts.xnb"
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

:option2
if exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets\Craftable-old.xnb" (
	echo This option has installed before, Reverting...
	del /f "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets\Craftable.xnb" 
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets\Craftable-old.xnb" "Craftable.xnb"
	echo Successfully reverted.
	pause
	goto :start
) else (
	echo This option is not installed before. Applying...
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets\Craftable.xnb" "Craftable-old.xnb"
	powershell Invoke-WebRequest "https://github.com/GomXDD/Content-Switcher/raw/refs/heads/main/resources/options/2/Craftable.xnb" -OutFile "%TEMP%\Craftable.xnb"
	move %TEMP%\Craftable.xnb "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets"
	echo Successfully applied. If you want to restore the content, Re-launch this script.
	pause
	goto :start
)