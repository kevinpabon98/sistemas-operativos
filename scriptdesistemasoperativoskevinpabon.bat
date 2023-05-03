@echo off
cd \user\escritorio/desktop
mkdir sistemas_operativos_kevin_pabon
cls
color 3
:menu
echo #--------------------#
echo 1. COPIAR archivo
echo 2. ELIMINAR archivo
echo 3. SALIR
echo #---------------------#
echo .


set /p op= seleccione una opcion:
if %op%==1 goto copiar
if %op%==2 goto eliminar
if %op%==3 goto salir



:copiar
cls
echo HA SELECCIONADO "COPIAR"
set /p source= de la ruta de origen: 
set /p dest= de la ruta del destino: 
echo Sus archivos se estan copiando...
for %%f in ("%source%\*.*") do (
    copy "%%f" "%dest%\%%~nxf"
    echo Archivo %%f copiado el %date% a las %time%
)
pause
goto menu

:eliminar
cls
color 2
echo HA SELECCIONADO "ELIMINAR"
set /p eli= de la ruta a eliminar o direccion del archivo:
echo Sus archivos se estan eliminando
for %%f in ("%eli%\*.*") do (
    del "%%f"
    echo Archivo %%f eliminado el %date% a las %time%
)
pause
goto menu


:salir 
pause
exit