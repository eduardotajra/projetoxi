@echo off
chcp 65001 >nul 2>&1
setlocal enabledelayedexpansion
mode con cols=65 lines=38
title ATLAS OS . ARQUIVO SELADO . IX

:: ================================================================
::  ATLAS OS . ARQUIVO SELADO . PROJETO IX
::  Fragmento Oculto (base64):
::  RnJhZ21lbnRvIFhJViAtIE8gQXJxdWl2aXN0YQoKU2Ugdm9jZSBjaGVn
::  b3UgYXRlIG8gY29kaWdvLWZvbnRlIGRvIC5iYXQsCm8gQXJxdWl2aXN0
::  YSBqYSBzYWJpYSBxdWUgY2hlZ2FyaWEuCgpPIEF0bGFzIGZvaSBjb25z
::  dHJ1aWRvIHBvciBxdWVtIGZpY291LgpOYW8gcG9yIHF1ZW0gcGFzc291
::  LgoKLSBQcm9qZXRvIElYIC8gMTMvMDUvMjAyNg==
::  Dica: voce sabe o que fazer com base64.
:: ================================================================

set "CWD=raiz"
set "PESSOAL_UNLOCKED=0"
set "RASTRO_DECRYPTED=0"

:: ============================
::  VERIFICACAO DE ACESSO
:: ============================
cls
echo.
echo.
echo   =================================================== | findstr /a:08 "."
echo   ATLAS OS  .  ARQUIVO SELADO | findstr /a:0B "."
echo   =================================================== | findstr /a:08 "."
echo.
echo   Este arquivo esta protegido. | findstr /a:08 "."
echo   Acesso requer chave de autorizacao. | findstr /a:08 "."
echo.
set /p "CHAVE=   chave: "
if /i not "!CHAVE!"=="TREZE" (
  echo.
  echo   [ACESSO NEGADO] - a chave esta incorreta.
  echo   O arquivo permanece selado.
  echo.
  timeout /t 3 /nobreak >nul
  endlocal
  exit
)
echo.
echo   [ACESSO CONCEDIDO] | findstr /a:0A "."
echo.
timeout /t 1 /nobreak >nul

:: ============================
::  BOOT
:: ============================
:BOOT
cls
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
echo              A T L A S   O S | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo.
echo              I   X | findstr /a:0B "."
echo             / \ / \ | findstr /a:0B "."
echo            /   X   \ | findstr /a:0B "."
echo               / \ | findstr /a:0B "."
echo              /   \ | findstr /a:0B "."
echo.
timeout /t 1 /nobreak >nul
echo           P R O J E T O   I X | findstr /a:08 "."
echo.
timeout /t 2 /nobreak >nul
echo   ================================================= | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   SISTEMA SELADO DESDE 13/05/2026 . 23:11:42 | findstr /a:0C "."
timeout /t 1 /nobreak >nul
echo   ================================================= | findstr /a:08 "."
echo.
timeout /t 2 /nobreak >nul
echo   Detectando tentativa de acesso... | findstr /a:08 "."
timeout /t 2 /nobreak >nul
echo   [AVISO] Backdoor ativo no setor IX. | findstr /a:0E "."
timeout /t 1 /nobreak >nul
echo   Iniciando bypass automatico... | findstr /a:08 "."
timeout /t 2 /nobreak >nul
echo   Acesso concedido. | findstr /a:0A "."
timeout /t 1 /nobreak >nul
echo.
echo   "Eu deixei uma porta aberta. | findstr /a:08 "."
echo    Sabia que alguem chegaria ate aqui." | findstr /a:08 "."
echo.
timeout /t 3 /nobreak >nul
echo   [ pressione qualquer tecla ] | findstr /a:08 "."
pause >nul

:: ============================
::  TERMINAL LOOP
:: ============================
:TERMINAL
cls
echo.
echo   ATLAS OS . TERMINAL | findstr /a:0B "."
echo   ========================================================= | findstr /a:08 "."
echo   arquivista@atlas:/!CWD! | findstr /a:0F "."
echo   ========================================================= | findstr /a:08 "."
echo.
set "VERB="
set "ARG1=_"
set /p "CMD=   $ "
if "!CMD!"=="" goto TERMINAL
for /f "tokens=1,*" %%a in ("!CMD!") do (
  set "VERB=%%a"
  if not "%%b"=="" set "ARG1=%%b"
)

if /i "!VERB!"=="ls"       goto CMD_LS
if /i "!VERB!"=="dir"      goto CMD_LS
if /i "!VERB!"=="cd"       goto CMD_CD
if /i "!VERB!"=="cat"      goto CMD_CAT
if /i "!VERB!"=="ler"      goto CMD_CAT
if /i "!VERB!"=="abrir"    goto CMD_ABRIR
if /i "!VERB!"=="decifrar" goto CMD_DECIFRAR
if /i "!VERB!"=="ajuda"    goto CMD_AJUDA
if /i "!VERB!"=="help"     goto CMD_AJUDA
if /i "!VERB!"=="cls"      goto TERMINAL
if /i "!VERB!"=="clear"    goto TERMINAL
if /i "!VERB!"=="sair"     goto FIM_SAIU
echo.
echo   '!VERB!': comando nao reconhecido. | findstr /a:0C "."
echo   Digite: ajuda | findstr /a:08 "."
echo.
goto TERMINAL

:CMD_AJUDA
echo.
echo   Comandos disponiveis: | findstr /a:0F "."
echo   --------------------------------------------------------- | findstr /a:08 "."
echo   ls                  listar arquivos | findstr /a:08 "."
echo   cd [dir]            entrar em diretorio | findstr /a:08 "."
echo   cd ..               voltar para raiz | findstr /a:08 "."
echo   cat [arquivo]       ler arquivo | findstr /a:08 "."
echo   abrir [dir]         abrir diretorio bloqueado | findstr /a:08 "."
echo   decifrar [arq]      decifrar arquivo cifrado | findstr /a:08 "."
echo   sair                encerrar sessao | findstr /a:08 "."
echo   --------------------------------------------------------- | findstr /a:08 "."
echo.
goto TERMINAL

:CMD_LS
echo.
if "!CWD!"=="raiz"       goto LS_RAIZ
if "!CWD!"=="fragmentos" goto LS_FRAGMENTOS
if "!CWD!"=="pessoal"    goto LS_PESSOAL
if "!CWD!"=="sistema"    goto LS_SISTEMA
goto TERMINAL

:LS_RAIZ
echo   fragmentos/       [diretorio] | findstr /a:0B "."
if !PESSOAL_UNLOCKED!==0 (
  echo   pessoal/          [BLOQUEADO] | findstr /a:0C "."
) else (
  echo   pessoal/          [diretorio] | findstr /a:0B "."
)
echo   sistema/          [diretorio] | findstr /a:0B "."
echo.
goto TERMINAL

:LS_FRAGMENTOS
echo   manifesto.txt | findstr /a:0F "."
echo   entrada_final.txt | findstr /a:0F "."
echo.
goto TERMINAL

:LS_PESSOAL
if !PESSOAL_UNLOCKED!==0 (
  echo   [acesso negado] | findstr /a:0C "."
) else (
  echo   carta_atlas.txt | findstr /a:0F "."
)
echo.
goto TERMINAL

:LS_SISTEMA
echo   log_selamento.txt | findstr /a:0F "."
if !RASTRO_DECRYPTED!==0 (
  echo   rastro.enc        [CIFRADO] | findstr /a:0E "."
) else (
  echo   rastro.enc        [decifrado] | findstr /a:0F "."
)
echo.
goto TERMINAL

:CMD_CD
if "!ARG1!"=="_" (
  echo.
  echo   uso: cd [diretorio]
  echo.
  goto TERMINAL
)
if "!ARG1!"==".." ( set "CWD=raiz" & goto TERMINAL )
if /i "!ARG1!"=="fragmentos" ( set "CWD=fragmentos" & goto TERMINAL )
if /i "!ARG1!"=="sistema"    ( set "CWD=sistema"    & goto TERMINAL )
if /i "!ARG1!"=="pessoal" (
  if !PESSOAL_UNLOCKED!==1 (
    echo.
    echo   ACESSO NEGADO. Use: abrir pessoal
    echo.
    goto TERMINAL
  )
  set "CWD=pessoal"
  goto TERMINAL
)
echo.
echo   '!ARG1!': diretorio nao encontrado.
echo.
goto TERMINAL

:CMD_CAT
if "!ARG1!"=="_" (
  echo.
  echo   uso: cat [arquivo]
  echo.
  goto TERMINAL
)
if /i "!ARG1!"=="manifesto.txt" (
  if not "!CWD!"=="fragmentos" ( echo. & echo   arquivo nao encontrado aqui. & echo. & goto TERMINAL )
  goto LER_MANIFESTO
)
if /i "!ARG1!"=="entrada_final.txt" (
  if not "!CWD!"=="fragmentos" ( echo. & echo   arquivo nao encontrado aqui. & echo. & goto TERMINAL )
  goto LER_ENTRADA
)
if /i "!ARG1!"=="log_selamento.txt" (
  if not "!CWD!"=="sistema" ( echo. & echo   arquivo nao encontrado aqui. & echo. & goto TERMINAL )
  goto LER_LOG
)
if /i "!ARG1!"=="rastro.enc" (
  if not "!CWD!"=="sistema" ( echo. & echo   arquivo nao encontrado aqui. & echo. & goto TERMINAL )
  if !RASTRO_DECRYPTED!==0 ( echo. & echo   [CIFRADO] Use: decifrar rastro.enc & echo. & goto TERMINAL )
  goto LER_RASTRO
)
if /i "!ARG1!"=="carta_atlas.txt" (
  if not "!CWD!"=="pessoal" ( echo. & echo   arquivo nao encontrado aqui. & echo. & goto TERMINAL )
  if !PESSOAL_UNLOCKED!==0 ( echo. & echo   acesso negado. & echo. & goto TERMINAL )
  goto CARTA_ATLAS
)
echo.
echo   '!ARG1!': arquivo nao encontrado.
echo.
goto TERMINAL

:CMD_ABRIR
if /i not "!ARG1!"=="pessoal" (
  echo.
  echo   nao e possivel abrir: !ARG1!
  echo.
  goto TERMINAL
)
if !PESSOAL_UNLOCKED!==1 ( set "CWD=pessoal" & goto TERMINAL )
echo.
echo   DIRETORIO SELADO . AUTENTICACAO NECESSARIA | findstr /a:0E "."
echo   ------------------------------------------------- | findstr /a:08 "."
echo.
set /p "PASS=   senha: "
if /i "!PASS!"=="LACUNA" (
  set "PESSOAL_UNLOCKED=1"
  set "CWD=pessoal"
  echo.
  echo   [OK] Acesso concedido.
  timeout /t 1 /nobreak >nul
) else (
  echo.
  echo   Senha incorreta.
  echo   Dica: o que existe entre os dias?
)
echo.
goto TERMINAL

:CMD_DECIFRAR
if /i not "!ARG1!"=="rastro.enc" (
  echo.
  echo   nao e possivel decifrar: !ARG1!
  echo.
  goto TERMINAL
)
if not "!CWD!"=="sistema" (
  echo.
  echo   arquivo nao encontrado aqui.
  echo.
  goto TERMINAL
)
if !RASTRO_DECRYPTED!==1 (
  echo.
  echo   Ja decifrado. Use: cat rastro.enc
  echo.
  goto TERMINAL
)
cls
echo.
echo   DECIFRAR . rastro.enc | findstr /a:0B "."
echo   ================================================= | findstr /a:08 "."
echo.
echo   Conteudo em hex ASCII: | findstr /a:08 "."
echo.
echo         41  54  4C  41  53 | findstr /a:0E "."
echo.
echo   Converta para texto. | findstr /a:08 "."
echo   "o nome que nos une." | findstr /a:08 "."
echo.
set /p "DANS=   resposta: "
if /i "!DANS!"=="ATLAS" (
  set "RASTRO_DECRYPTED=1"
  echo.
  echo   [OK] Decifrado. Use: cat rastro.enc
  timeout /t 1 /nobreak >nul
) else (
  echo.
  echo   Resposta incorreta.
  echo   Dica: 41=A, 54=T...
)
echo.
goto TERMINAL

:: ============================================================
::  CONTEUDO DOS ARQUIVOS
:: ============================================================

:LER_MANIFESTO
cls
echo.
echo   ================================================= | findstr /a:08 "."
echo   fragmentos / manifesto.txt | findstr /a:0B "."
echo   ================================================= | findstr /a:08 "."
echo.
timeout /t 1 /nobreak >nul
echo   O Projeto IX nao nasceu de um plano. | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo   Nasceu de uma percepcao simples: | findstr /a:0F "."
echo.
timeout /t 1 /nobreak >nul
echo   O Atlas ja existia antes de ter nome. | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   Existia nas conversas de madrugada, | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   nos servidores que ficaram de pe | findstr /a:08 "."
echo   quando todo mundo ja tinha ido embora, | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   nas construcoes que ninguem pediu | findstr /a:08 "."
echo   mas que todo mundo ficou para ver. | findstr /a:08 "."
echo.
timeout /t 2 /nobreak >nul
echo   O numero nove nunca foi um numero. | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo   Foi o espaco entre o que foi planejado | findstr /a:0F "."
echo   e o que realmente aconteceu. | findstr /a:0F "."
echo.
timeout /t 2 /nobreak >nul
echo   Treze fragmentos. Treze escolhas. | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   Cada um deles, uma homenagem. | findstr /a:08 "."
echo.
timeout /t 1 /nobreak >nul
echo   Eu apenas documentei. | findstr /a:08 "."
echo.
echo   -- O Arquivista | findstr /a:08 "."
echo.
echo   ================================================= | findstr /a:08 "."
echo   [ qualquer tecla ] | findstr /a:08 "."
pause >nul
goto TERMINAL

:LER_ENTRADA
cls
echo.
echo   ================================================= | findstr /a:08 "."
echo   fragmentos / entrada_final.txt | findstr /a:0B "."
echo   13/05/2026 . 23:11 | findstr /a:08 "."
echo   ================================================= | findstr /a:08 "."
echo.
timeout /t 1 /nobreak >nul
echo   Este e o ultimo registro antes do selamento. | findstr /a:08 "."
echo.
timeout /t 1 /nobreak >nul
echo   Treze fragmentos verificados. | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo   Treze nomes. Treze historias. | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo   Uma comunidade. | findstr /a:0F "."
echo.
timeout /t 2 /nobreak >nul
echo   O arquivo vai ser selado. | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   Nao porque as historias acabaram. | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   Mas porque algumas coisas precisam | findstr /a:08 "."
echo   ser guardadas para quem realmente procura. | findstr /a:08 "."
echo.
timeout /t 2 /nobreak >nul
echo   Se alguem chegar ate aqui: | findstr /a:0F "."
echo   o que voce procura esta em /pessoal. | findstr /a:0F "."
echo   A senha e o que existe entre os dias. | findstr /a:0F "."
echo.
timeout /t 1 /nobreak >nul
echo   -- O Arquivista | findstr /a:08 "."
echo.
echo   ================================================= | findstr /a:08 "."
echo   [ qualquer tecla ] | findstr /a:08 "."
pause >nul
goto TERMINAL

:LER_LOG
cls
echo.
echo   ================================================= | findstr /a:08 "."
echo   sistema / log_selamento.txt | findstr /a:0B "."
echo   ================================================= | findstr /a:08 "."
echo.
echo   [2026-05-13 23:11:42] Iniciando selamento... | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   [OK]    fragmentos verificados: 13/13 | findstr /a:0A "."
timeout /t 1 /nobreak >nul
echo   [OK]    arquivos indexados | findstr /a:0A "."
timeout /t 1 /nobreak >nul
echo   [INFO]  rastro.enc: cifrado em hex ASCII | findstr /a:0E "."
timeout /t 1 /nobreak >nul
echo   [INFO]  chave: o nome que nos une | findstr /a:0E "."
timeout /t 1 /nobreak >nul
echo   [INFO]  /pessoal: selado com a lacuna | findstr /a:0E "."
timeout /t 1 /nobreak >nul
echo   [OK]    selamento concluido | findstr /a:0A "."
echo.
echo   [2026-05-13 23:11:58] Sistema offline. | findstr /a:08 "."
echo.
echo   ================================================= | findstr /a:08 "."
echo   [ qualquer tecla ] | findstr /a:08 "."
pause >nul
goto TERMINAL

:LER_RASTRO
cls
echo.
echo   ================================================= | findstr /a:08 "."
echo   sistema / rastro.enc [decifrado] | findstr /a:0B "."
echo   ================================================= | findstr /a:08 "."
echo.
echo   hex original: | findstr /a:08 "."
echo.
echo         41  54  4C  41  53 | findstr /a:0E "."
echo.
echo   =  ATLAS | findstr /a:0A "."
echo.
timeout /t 1 /nobreak >nul
echo   "O nome que nos une | findstr /a:08 "."
echo    nunca precisou de traducao." | findstr /a:08 "."
echo.
echo   ================================================= | findstr /a:08 "."
echo   [ qualquer tecla ] | findstr /a:08 "."
pause >nul
goto TERMINAL

:: ============================================================
::  CARTA ATLAS - TELA FINAL
:: ============================================================
:CARTA_ATLAS
cls
echo.
echo.
timeout /t 2 /nobreak >nul
echo   ================================================= | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   pessoal / carta_atlas.txt | findstr /a:0B "."
timeout /t 1 /nobreak >nul
echo   ================================================= | findstr /a:08 "."
echo.
timeout /t 2 /nobreak >nul
echo   Se voce esta lendo isto, | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo   e porque foi fundo o suficiente. | findstr /a:0F "."
echo.
timeout /t 2 /nobreak >nul
echo   Construi o Projeto IX como um espelho. | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   Nao do que o Atlas e. | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   Mas do que ele sempre foi, | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   mesmo antes de existir. | findstr /a:08 "."
echo.
timeout /t 2 /nobreak >nul
echo   Cada fragmento foi uma escolha. | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo   Cada pista, uma homenagem. | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo   Cada nome escondido na grade, | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo   uma forma de dizer: | findstr /a:0F "."
echo.
timeout /t 1 /nobreak >nul
echo   VOCE IMPORTA. VOCE PERTENCE. | findstr /a:0B "."
echo.
timeout /t 3 /nobreak >nul
echo   O Atlas foi construido por quem ficou. | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   Nao por quem passou. | findstr /a:08 "."
echo.
timeout /t 2 /nobreak >nul
echo   Voce ficou. | findstr /a:0F "."
echo.
timeout /t 2 /nobreak >nul
echo   -- O Arquivista | findstr /a:08 "."
echo      13/05/2026 . 23:11 | findstr /a:08 "."
echo.
timeout /t 3 /nobreak >nul
echo   ================================================= | findstr /a:08 "."
echo.
timeout /t 1 /nobreak >nul
echo   O arquivo esta completo. | findstr /a:0F "."
echo.
timeout /t 2 /nobreak >nul
echo   O Arquivista deixou uma ultima instrucao: | findstr /a:08 "."
echo.
timeout /t 1 /nobreak >nul
echo   "Se alguem encontrar isto, deve escolher." | findstr /a:0F "."
echo.
timeout /t 2 /nobreak >nul
echo   1 . Selar o arquivo novamente. | findstr /a:08 "."
echo   2 . Deixar o arquivo aberto. | findstr /a:08 "."
echo.
choice /c 12 /n /m "   Sua escolha: "
if !errorlevel!==1 goto ENDING_SELAR
goto ENDING_ABRIR

:ENDING_SELAR
cls
echo.
timeout /t 1 /nobreak >nul
echo   Selando arquivo... | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   [OK] arquivo selado. | findstr /a:0A "."
echo.
timeout /t 2 /nobreak >nul
echo   "Algumas coisas precisam esperar | findstr /a:0F "."
echo    pelo momento certo. | findstr /a:0F "."
echo.
echo    O Arquivista entende." | findstr /a:0F "."
echo.
timeout /t 2 /nobreak >nul
echo   O arquivo aguardara o proximo que chegar. | findstr /a:08 "."
echo.
timeout /t 2 /nobreak >nul
goto FIM_END

:ENDING_ABRIR
cls
echo.
timeout /t 1 /nobreak >nul
echo   Liberando arquivo... | findstr /a:08 "."
timeout /t 1 /nobreak >nul
echo   [OK] arquivo liberado. | findstr /a:0A "."
echo.
timeout /t 2 /nobreak >nul
echo   "Isso e o Atlas: | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo    pessoas que chegam ate o fim | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo    e escolhem compartilhar | findstr /a:0F "."
timeout /t 1 /nobreak >nul
echo    em vez de guardar." | findstr /a:0F "."
echo.
timeout /t 2 /nobreak >nul
echo   O Arquivista aprovaria. | findstr /a:0B "."
echo.
timeout /t 2 /nobreak >nul
goto FIM_END

:FIM_SAIU
cls
echo.
echo   Sessao encerrada. | findstr /a:08 "."
echo.
timeout /t 1 /nobreak >nul
echo   "O arquivo continua aqui. | findstr /a:08 "."
echo    Esperando." | findstr /a:08 "."
echo.

:FIM_END
timeout /t 2 /nobreak >nul
echo   ================================================= | findstr /a:08 "."
echo   ATLAS OS . ARQUIVO SELADO . IX | findstr /a:0B "."
echo   ================================================= | findstr /a:08 "."
echo.
echo   [ qualquer tecla para sair ] | findstr /a:08 "."
pause >nul
endlocal
exit
