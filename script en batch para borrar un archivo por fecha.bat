@echo off
set /p r= "cual es la ruta del directorio "
set /p d= "fecha de creacion o modificacion del archivo "
forfiles /p "%r%" /d -%d% /c "cmd /c echo @path"
forfiles /p "%r%" /d -%d% /c "cmd /c del @path"