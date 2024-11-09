@echo off
:start
set option=0
cls
echo Content Switcher by GomXDD
echo.
echo 1 Keitan's Classic Formal Vest
echo 2 Gom's Craftable Merge for ma gf
echo 3 CocoMe's shirts + hats
echo.
echo c Check the applied status
echo.
set /p "option=:> "
if /i "%option%" equ "1" goto option1
if /i "%option%" equ "2" goto option2
if /i "%option%" equ "3" goto option3

if /i "%option%" equ "c" goto check
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
if exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets\Craftables-old.xnb" (
	echo This option has installed before, Reverting...
	del /f "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets\Craftables.xnb" 
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets\Craftables-old.xnb" "Craftables.xnb"
	echo Successfully reverted.
	pause
	goto :start
) else (
	echo This option is not installed before. Applying...
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets\Craftables.xnb" "Craftables-old.xnb"
	powershell Invoke-WebRequest "https://github.com/GomXDD/Content-Switcher/raw/refs/heads/main/resources/options/2/Craftables.xnb" -OutFile "%TEMP%\Craftables.xnb"
	move %TEMP%\Craftables.xnb "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets"
	echo Successfully applied. If you want to restore the content, Re-launch this script.
	pause
	goto :start
)

:option3
rem restore to check if there's option thirds revert file because incase if someone applied first option for same time but i hope you don't.
if exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts-old3.xnb" (
	echo This option has installed before, Reverting...
	del /f "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts.xnb"
	del /f "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\hats.xnb"
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts-old3.xnb" "shirts.xnb"
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\hats-old3.xnb" "hats.xnb"
	echo Successfully reverted.
	pause
	goto :start
) else (
	echo This option is not installed before. Applying...
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts.xnb" "shirts-old3.xnb"
	rename "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\hats.xnb" "hats-old3.xnb"
	powershell Invoke-WebRequest "https://github.com/GomXDD/Content-Switcher/raw/refs/heads/main/resources/options/3/shirts.xnb" -OutFile "%TEMP%\shirts.xnb"
	powershell Invoke-WebRequest "https://github.com/GomXDD/Content-Switcher/raw/refs/heads/main/resources/options/3/hats.xnb" -OutFile "%TEMP%"\hats.xnb"
	move %TEMP%\shirts.xnb "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer"
	move %TEMP%\hats.xnb "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer"
	echo Successfully applied. If you want to restore the content, Re-launch this script.
	pause
	goto :start
)

:check
if exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets\shirts-old.xnb" (echo Option 1 : Applied) else (echo Option 1 : Not Applied)
if exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\TileSheets\Craftables-old.xnb" (echo Option 2 : Applied) else (echo Option 2 : Not Applied)
if exist "C:\Program Files (x86)\Steam\steamapps\common\Stardew Valley\Content\Characters\Farmer\shirts-old3.xnb" (echo Option 3 : Applied) else (echo Option 3 : Not Applied)
pause
goto :start