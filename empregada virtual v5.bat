@echo off
title Empregada virtual V 0.4
color 1f

:menu

echo [1] iniciar faxina
echo [2] procurar por problemas no script
echo [3] Instalar
echo [4] limpar memoria
echo [5] sobre a empregada virtual v5
echo [6] sair

set /p op=Digite o numero da opcao desejada=^>

if %op% equ 1 goto iniciar
if %op% equ 2 goto verificar
if %op% equ 3 goto instalar
if %op% equ 4 goto limpar
if %op% equ 5 goto sobre
if %op% equ 6 goto sair

:iniciar
echo #PROGRAMADOR RESPONSAVEL: Jamerson Walderson Nascimento da Silva
echo #DATA DA COMPILACAO: 04/10/2014
echo #LOCAL DA COMPILACAO: Maceió-AL
pause
rem Iniciando os arquivos de limpeza....
rem ------------- Movendo arquivos de Biblioteca
move Bau\*.txt J:\Biblioteca\Anotacoes
move Bau\*.pdf J:\Biblioteca\Livros&Apostilas
move Bau\*.doc J:\Biblioteca\Documentos
move Bau\*.html J:\Biblioteca\HTML
rem -----------------------------------------------------------------------------
rem ------------- Movendo arquivos de audio
move Bau\*.mp3 J:\Midia\Audio
rem ------------------------------------------------------------------------------
rem ------------- Movendo arquivos de video
move Bau\*.avi J:\Midia\Videos
move Bau\*.3gp J:\Midia\Videos
move Bau\*.mp4 J:\Midia\Videos
move Bau\*.rmvb J:\Midia\Videos
move Bau\*.mvk J:\Midia\Videos
move Bau\*.flv J:\Midia\Videos
move Bau\*.mkv J:\Midia\Videos
rem ------------------------------------------------------------------------------
rem ------------ Movendo imgagens
move Bau\*.jpg J:\Midia\Imagens
move Bau\*.jpeg J:\Midia\Imagens
move Bau\*.gif J:\Midia\Imagens
move Bau\*.png J:\Midia\Imagens
move Bau\*.bmp J:\Midia\Imagens
move Bau\*.psd J:\Midia\Imagens
move Bau\*.tiff J:\Midia\Imagens
rem ------------- Movendo arquivos suspeitos
move Bau\*.bat J:\Quarentena
move Bau\*.dll J:\Quarentena
move Bau\*.ini J:\Quarentena
move Bau\*.cmd J:\Quarentena
move Bau\*.scr J:\Quarentena
move Bau\*.ws J:\Quarentena
move Bau\*.xls J:\Quarentena
move Bau\*.ppt J:\Quarentena
rem -------------------------------------------------------------------------------
move Bau\*.rar J:\compactados
move Bau\*.zip J:\compactados
pause
cls
color 1f
goto menu




:verificar
rem __________________________________________________________________________
cls
color 20
if exist Bau (echo Nenhum problema encontrado na pasta limpeza.) else (echo Pasta limpeza inexistente)
if exist midia (echo Nenhum problema encontrado na pasta midia.) else (echo Pasta midia inexistente)
if exist Biblioteca (echo Nenhum problema encontrado na pasta Biblioteca.) else (echo Pasta Biblioteca inexistente)
if exist jogos (echo Nenhum problema encontrado na pasta jogos.) else (echo Pasta Jogos inexistente)
pause
cls
color 1f
goto menu
pause




:instalar
mkdir Midia Biblioteca Bau Jogos Quarentena compactados
rem --------------------------------------------------------
rem Criando arquivos na pasta: Midia
mkdir J:\Midia\Audio
mkdir J:\Midia\Videos
mkdir J:\Midia\Imagens
mkdir J:\Midia\Coletania
rem --------------------------------------------------------
rem Criando arquivos na pasta: Biblioteca
mkdir J:\Biblioteca\Anotacoes
mkdir J:\Biblioteca\Livros&Apostilas
mkdir J:\Biblioteca\Documentos
mkdir J:\Biblioteca\HTML
pause
cls
color 1f
goto menu



:limpar
%windir%\system32\rundll32.exe advapi32.dll,ProcessIdleTasks
msg * Memoria limpa
pause
cls
color 1f
goto menu

:sair
rem __________________________________________________________________________
exit
