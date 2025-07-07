@echo off
setlocal enabledelayedexpansion

REM Copy and rename regular map tiles: CellImg_X-Y.jpg ➜ MapImg_X_Y.jpg
for %%F in (CellImg_*-*.jpg) do (
    set "filename=%%~nF"
    set "filename=!filename:CellImg_=!"
    set "filename=!filename:-=_!"
    copy /Y "%%F" "MapImg_!filename!.jpg" >nul
)

REM Copy and rename tradewind tiles: CellTradewindImg_X-Y.jpg ➜ MapImg_TW_X_Y.jpg
for %%F in (CellTradewindImg_*-*.jpg) do (
    set "filename=%%~nF"
    set "filename=!filename:CellTradewindImg_=!"
    set "filename=!filename:-=_!"
    copy /Y "%%F" "MapImg_TW_!filename!.jpg" >nul
)

REM Copy and rename regular map tiles: CellImg_X-Y.jpg ➜ MapImg_X_Y.jpg
for %%F in (CellImg_*-*.png) do (
    set "filename=%%~nF"
    set "filename=!filename:CellImg_=!"
    set "filename=!filename:-=_!"
    copy /Y "%%F" "MapImg_!filename!.png" >nul
)

REM Copy and rename tradewind tiles: CellTradewindImg_X-Y.jpg ➜ MapImg_TW_X_Y.jpg
for %%F in (CellTradewindImg_*-*.png) do (
    set "filename=%%~nF"
    set "filename=!filename:CellTradewindImg_=!"
    set "filename=!filename:-=_!"
    copy /Y "%%F" "MapImg_TW_!filename!.png" >nul
)


echo Map image tiles copied and renamed (originals preserved).
pause
