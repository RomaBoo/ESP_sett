@echo off
TITLE ESP32 Tool
ECHO.

rem set _port=COM20
rem 
set _port=COM5

set _filename=spiffsw
set _filedir=files_w

set _esptool="d:\GCC\ESP32_IDF\esp-idf-5\esp-idf-v5.0.1\components\esptool_py\esptool\esptool.py"
set _python38="d:\GCC\ESP32\.espressif\python_env\idf5.0_py3.8_env\Scripts\python.exe"
set _mkspiffs="d:\GCC\ESP32\ESP32_util\mkspiffs\mkspiffs.exe"

rem 
%_mkspiffs% -c %_filedir% -b 4096 -p 256 -s 0xF0000 %_filename%.bin

rem 
%_python38% %_esptool% --chip esp32 --port %_port% --baud 921600 write_flash -z 0x210000 %_filename%.bin


rem pause
