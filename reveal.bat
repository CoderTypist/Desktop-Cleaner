@echo off
setlocal enabledelayedexpansion
goto main

:main
setlocal

    set desk=C:\Users\%username%\Desktop
    cd "%desk%"

    for /f "tokens=* delims=" %%i in ('dir /b/s/a *') do (
        
        if "%desk%\reveal.bat" == "%%i" (
            call
        ) else if "%desk%\clean.bat" == "%%i" (
            call
        ) else (
            attrib -h "%%i"
        )
    )

endlocal
goto :eof
