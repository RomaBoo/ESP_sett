@echo off
TITLE ESP32 Tool
ECHO.

rem set _port=COM20
rem 
set _port=COM3

set _filename=spiffsw
set _filedir=files_w

set _esptool="d:\GCC\ESP32_IDF\esp-idf-v5.1.1\components\esptool_py\esptool\esptool.py"
set _python="d:\GCC\ESP32\.espressif\python_env\idf5.1_py3.11_env\Scripts\python.exe"
set _mkspiffs="d:\GCC\ESP32\ESP32_util\mkspiffs\mkspiffs.exe"

rem 
%_mkspiffs% -c %_filedir% -b 4096 -p 256 -s 0xF0000 %_filename%.bin

rem 
%_python% %_esptool% --chip esp32 --port %_port% --baud 921600 write_flash -z 0x210000 %_filename%.bin


rem pause
