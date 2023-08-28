@echo off
TITLE ESP32 Tool
ECHO.

set _dir="d:\GCC\ESP32_IDF\esp-idf-v4.4.1\components\esptool_py\esptool"
set _python38="d:\GCC\Espressif\python_env\idf4.4_py3.8_env\Scripts\python.exe"
set _mkspiffs="d:\GCC\ESP32_util\mkspiffs\mkspiffs.exe"

rem %_python38% %_dir%\esptool.py --chip esp32 --port COM6 --baud 921600 read_flash 0x110000 0xF0000 spiffs1.bin

%_mkspiffs% -u files spiffs1.bin

rem 
pause
