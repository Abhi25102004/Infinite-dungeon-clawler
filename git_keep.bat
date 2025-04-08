@echo off
for /d /r %%D in (*) do (
    pushd "%%D" >nul
    dir /b | findstr . >nul || echo. > .gitkeep
    popd >nul
)
echo .gitkeep files added to all empty folders.