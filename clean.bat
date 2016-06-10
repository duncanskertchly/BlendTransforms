cd %cd%\build
for /r %%i in (*) do (
	if not %%~xi==.gitkeep del %%i
)
for /d %%d in (*) do (
	rd /s /q %%d
)