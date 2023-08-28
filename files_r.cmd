@echo off
TITLE ESP32 Tool
ECHO.

rem set _port=COM20
rem 
set _port=COM5

set _mkspiffs="d:\GCC\ESP32\ESP32_util\mkspiffs\mkspiffs.exe"

set _esptool="d:\GCC\ESP32_IDF\esp-idf-5\esp-idf-v5.0.1\components\esptool_py\esptool\esptool.py"
set _python38="d:\GCC\ESP32\.espressif\python_env\idf5.0_py3.8_env\Scripts\python.exe"

rem set _esptool="d:\GCC\ESP32_IDF\esp-idf\components\esptool_py\esptool\esptool.py"
rem set _python38="d:\GCC\ESP32\.espressif\python_env\idf4.4_py3.8_env\Scripts\python.exe"


rem 
%_python38% %_esptool% --chip esp32 --port %_port% --baud 921600 read_flash 0x210000 0xF0000 spiffsr.bin

%_mkspiffs% -u files_r spiffsr.bin

rem 
pause
