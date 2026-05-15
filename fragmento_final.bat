@echo off
chcp 65001 >nul 2>&1
setlocal enabledelayedexpansion
mode con cols=65 lines=38
title ATLAS OS . ARQUIVO SELADO . IX

:: ================================================================
::  ATLAS OS . ARQUIVO SELADO . PROJETO IX
::  classificado / uso interno
::
::  Fragmento Oculto (base64):
::  RnJhZ21lbnRvIFhJViAtIE8gQXJxdWl2aXN0YQoKU2Ugdm9jZSBjaGVn
::  b3UgYXRlIG8gY29kaWdvLWZvbnRlIGRvIC5iYXQsCm8gQXJxdWl2aXN0
::  YSBqYSBzYWJpYSBxdWUgY2hlZ2FyaWEuCgpPIEF0bGFzIGZvaSBjb25z
::  dHJ1aWRvIHBvciBxdWVtIGZpY291LgpOYW8gcG9yIHF1ZW0gcGFzc291
::  LgoKLSBQcm9qZXRvIElYIC8gMTMvMDUvMjAyNg==
::
::  Dica: voce sabe o que fazer com base64.
:: ================================================================

:: ============================
::  VERIFICACAO DE ACESSO
:: ============================
cls
echo.
echo.
echo  ===================================================
echo  ATLAS OS . ARQUIVO SELADO
echo  ===================================================
echo.
echo  Este arquivo esta protegido.
echo  Acesso requer chave de autorizacao.
echo.
set /p "CHAVE=  chave: "
if /i not "!CHAVE!"=="TREZE" (
  echo.
  echo  [ACESSO NEGADO]
  echo.
  echo  A chave esta incorreta.
  echo  O arquivo permanece selado.
  echo.
  timeout /t 3 /nobreak >nul
  endlocal
  exit
)
echo.
echo  [ACESSO CONCEDIDO]
echo.
timeout /t 1 /nobreak >nul

for /f %%a in ('echo prompt $E^| cmd /q') do set "ESC=%%a"
set "Gn=!ESC![32m" & set "Rd=!ESC![31m" & set "Yw=!ESC![33m"
set "Cy=!ESC![36m" & set "Wh=!ESC![97m" & set "Dm=!ESC![90m"
set "Hi=!ESC![96m" & set "Zz=!ESC![0m"  & set "Bd=!ESC![1m"

set "CWD=raiz"
set "PESSOAL_UNLOCKED=0"
set "RASTRO_DECRYPTED=0"

:: ============================
::  BOOT
:: ============================
:BOOT
cls
echo.
echo.
echo.
timeout /t 1 /nobreak >nul
echo          !Dm!A T L A S  O S!Zz!
timeout /t 1 /nobreak >nul
echo.
echo          !Cy!!Bd!    I   X  !Zz!
echo          !Cy!!Bd!   / \ / \ !Zz!
echo          !Cy!!Bd!  /   X   \!Zz!
echo          !Cy!!Bd!     / \   !Zz!
echo          !Cy!!Bd!    /   \  !Zz!
echo.
timeout /t 1 /nobreak >nul
echo          !Dm!P R O J E T O  I X!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Dm!  =================================================!Zz!
timeout /t 1 /nobreak >nul
echo  !Rd!  SISTEMA SELADO DESDE 13/05/2026 . 23:11:42!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  =================================================!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Dm!  Detectando tentativa de acesso...!Zz!
timeout /t 2 /nobreak >nul
echo  !Yw!  [AVISO]!Zz! !Dm!Backdoor ativo no setor IX.!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  Iniciando bypass automatico...!Zz!
timeout /t 2 /nobreak >nul
echo  !Gn!  Acesso concedido.!Zz!
timeout /t 1 /nobreak >nul
echo.
echo  !Dm!  "Eu deixei uma porta aberta.!Zz!
echo  !Dm!   Sabia que alguem chegaria ate aqui."!Zz!
echo.
timeout /t 3 /nobreak >nul
echo  !Dm!  [ pressione qualquer tecla ]!Zz!
pause >nul

:: ============================
::  TERMINAL LOOP
:: ============================
:TERMINAL
cls
echo.
echo  !Cy!!Bd!  ATLAS OS . TERMINAL!Zz!
echo  !Dm!  =========================================================!Zz!
echo  !Dm!  arquivista@atlas:!Zz!!Wh!/!CWD!!Zz!  !Dm!— digite 'ajuda' para comandos!Zz!
echo  !Dm!  =========================================================!Zz!
echo.
set "VERB="
set "ARG1=_"
set /p "CMD=  !Dm!$!Zz! "
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
echo  !Rd!  '!VERB!': comando nao reconhecido.!Zz! !Dm!Digite 'ajuda'.!Zz!
echo.
goto TERMINAL

:: ── ajuda ─────────────────────────────────────────────────
:CMD_AJUDA
echo.
echo  !Wh!  Comandos:!Zz!
echo  !Dm!  ls                !Zz!— listar arquivos do diretorio atual
echo  !Dm!  cd [dir]          !Zz!— entrar em diretorio
echo  !Dm!  cd ..             !Zz!— voltar para raiz
echo  !Dm!  cat [arquivo]     !Zz!— ler arquivo
echo  !Dm!  abrir [dir]       !Zz!— abrir diretorio bloqueado
echo  !Dm!  decifrar [arq]    !Zz!— decifrar arquivo cifrado
echo  !Dm!  sair              !Zz!— encerrar sessao
echo.
goto TERMINAL

:: ── ls ────────────────────────────────────────────────────
:CMD_LS
echo.
if "!CWD!"=="raiz" (
  echo  !Cy!  fragmentos!Zz!     !Dm![diretorio]!Zz!
  if !PESSOAL_UNLOCKED!==0 (
    echo  !Rd!  pessoal!Zz!        !Dm![BLOQUEADO]!Zz!
  ) else (
    echo  !Cy!  pessoal!Zz!        !Dm![diretorio]!Zz!
  )
  echo  !Cy!  sistema!Zz!        !Dm![diretorio]!Zz!
)
if "!CWD!"=="fragmentos" (
  echo  !Wh!  manifesto.txt!Zz!
  echo  !Wh!  entrada_final.txt!Zz!
)
if "!CWD!"=="pessoal" (
  if !PESSOAL_UNLOCKED!==0 (
    echo  !Rd!  [acesso negado]!Zz!
  ) else (
    echo  !Wh!  carta_atlas.txt!Zz!
  )
)
if "!CWD!"=="sistema" (
  echo  !Wh!  log_selamento.txt!Zz!
  if !RASTRO_DECRYPTED!==0 (
    echo  !Yw!  rastro.enc!Zz!         !Dm![CIFRADO]!Zz!
  ) else (
    echo  !Wh!  rastro.enc!Zz!         !Dm![decifrado]!Zz!
  )
)
echo.
goto TERMINAL

:: ── cd ────────────────────────────────────────────────────
:CMD_CD
if "!ARG1!"=="_" ( echo. & echo  !Rd!  uso: cd [diretorio]!Zz! & echo. & goto TERMINAL )
if "!ARG1!"==".." ( set "CWD=raiz" & goto TERMINAL )
if /i "!ARG1!"=="fragmentos" ( set "CWD=fragmentos" & goto TERMINAL )
if /i "!ARG1!"=="sistema"    ( set "CWD=sistema"    & goto TERMINAL )
if /i "!ARG1!"=="pessoal" (
  if !PESSOAL_UNLOCKED!==1 ( set "CWD=pessoal" & goto TERMINAL )
  echo.
  echo  !Rd!  ACESSO NEGADO.!Zz!
  echo  !Dm!  Use 'abrir pessoal' para tentar acesso.!Zz!
  echo.
  goto TERMINAL
)
echo. & echo  !Rd!  '!ARG1!': diretorio nao encontrado.!Zz! & echo.
goto TERMINAL

:: ── cat ───────────────────────────────────────────────────
:CMD_CAT
if "!ARG1!"=="_" ( echo. & echo  !Rd!  uso: cat [arquivo]!Zz! & echo. & goto TERMINAL )

if /i "!ARG1!"=="manifesto.txt" (
  if not "!CWD!"=="fragmentos" ( echo. & echo  !Rd!  arquivo nao encontrado aqui.!Zz! & echo. & goto TERMINAL )
  goto LER_MANIFESTO
)
if /i "!ARG1!"=="entrada_final.txt" (
  if not "!CWD!"=="fragmentos" ( echo. & echo  !Rd!  arquivo nao encontrado aqui.!Zz! & echo. & goto TERMINAL )
  goto LER_ENTRADA
)
if /i "!ARG1!"=="log_selamento.txt" (
  if not "!CWD!"=="sistema" ( echo. & echo  !Rd!  arquivo nao encontrado aqui.!Zz! & echo. & goto TERMINAL )
  goto LER_LOG
)
if /i "!ARG1!"=="rastro.enc" (
  if not "!CWD!"=="sistema" ( echo. & echo  !Rd!  arquivo nao encontrado aqui.!Zz! & echo. & goto TERMINAL )
  if !RASTRO_DECRYPTED!==0 (
    echo. & echo  !Yw!  [CIFRADO]!Zz! !Dm!Use 'decifrar rastro.enc' primeiro.!Zz! & echo. & goto TERMINAL
  )
  goto LER_RASTRO
)
if /i "!ARG1!"=="carta_atlas.txt" (
  if not "!CWD!"=="pessoal" ( echo. & echo  !Rd!  arquivo nao encontrado aqui.!Zz! & echo. & goto TERMINAL )
  if !PESSOAL_UNLOCKED!==0 ( echo. & echo  !Rd!  acesso negado.!Zz! & echo. & goto TERMINAL )
  goto CARTA_ATLAS
)
echo. & echo  !Rd!  '!ARG1!': arquivo nao encontrado.!Zz! & echo.
goto TERMINAL

:: ── abrir ─────────────────────────────────────────────────
:CMD_ABRIR
if /i not "!ARG1!"=="pessoal" (
  echo. & echo  !Rd!  nao e possivel abrir: !ARG1!!Zz! & echo. & goto TERMINAL
)
if !PESSOAL_UNLOCKED!==1 ( set "CWD=pessoal" & goto TERMINAL )
echo.
echo  !Yw!  DIRETORIO SELADO . AUTENTICACAO NECESSARIA!Zz!
echo  !Dm!  -------------------------------------------------!Zz!
echo.
set /p "PASS=  senha: "
if /i "!PASS!"=="LACUNA" (
  echo.
  echo  !Gn!  Acesso concedido.!Zz!
  set "PESSOAL_UNLOCKED=1"
  set "CWD=pessoal"
  timeout /t 1 /nobreak >nul
) else (
  echo.
  echo  !Rd!  Senha incorreta.!Zz!
  echo  !Dm!  Dica: o que existe entre os dias?!Zz!
)
echo.
goto TERMINAL

:: ── decifrar ──────────────────────────────────────────────
:CMD_DECIFRAR
if /i not "!ARG1!"=="rastro.enc" (
  echo. & echo  !Rd!  nao e possivel decifrar: !ARG1!!Zz! & echo. & goto TERMINAL
)
if not "!CWD!"=="sistema" (
  echo. & echo  !Rd!  arquivo nao encontrado aqui.!Zz! & echo. & goto TERMINAL
)
if !RASTRO_DECRYPTED!==1 (
  echo. & echo  !Dm!  Ja decifrado. Use 'cat rastro.enc'.!Zz! & echo. & goto TERMINAL
)
cls
echo.
echo  !Hi!!Bd!  DECIFRAR . rastro.enc!Zz!
echo  !Dm!  =================================================!Zz!
echo.
echo  !Dm!  Conteudo em hex ASCII:!Zz!
echo.
echo  !Yw!!Bd!        41  54  4C  41  53!Zz!
echo.
echo  !Dm!  Converta para texto.!Zz!
echo  !Dm!  "o nome que nos une."!Zz!
echo.
set /p "DANS=  resposta: "
if /i "!DANS!"=="ATLAS" (
  echo.
  echo  !Gn!  Decifrado.!Zz!
  set "RASTRO_DECRYPTED=1"
  timeout /t 1 /nobreak >nul
  echo  !Dm!  Use 'cat rastro.enc' para ler.!Zz!
) else (
  echo.
  echo  !Rd!  Resposta incorreta.!Zz!
  echo  !Dm!  Dica: 41=A, 54=T...!Zz!
)
echo.
goto TERMINAL

:: ============================================================
::  CONTEUDO DOS ARQUIVOS
:: ============================================================

:LER_MANIFESTO
cls
echo.
echo  !Dm!  =================================================!Zz!
echo  !Wh!!Bd!  fragmentos / manifesto.txt!Zz!
echo  !Dm!  =================================================!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Wh!  O Projeto IX nao nasceu de um plano.!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!  Nasceu de uma percepcao simples:!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Dm!  O Atlas ja existia antes de ter nome.!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  Existia nas conversas de madrugada,!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  nos servidores que ficaram de pe!Zz!
echo  !Dm!  quando todo mundo ja tinha ido embora,!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  nas construcoes que ninguem pediu!Zz!
echo  !Dm!  mas que todo mundo ficou para ver.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Wh!  O numero nove nunca foi um numero.!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!  Foi o espaco entre o que foi planejado!Zz!
echo  !Wh!  e o que realmente aconteceu.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Dm!  Treze fragmentos. Treze escolhas.!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  Cada um deles, uma homenagem.!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Dm!  Eu apenas documentei.!Zz!
echo.
echo  !Dm!  -- O Arquivista!Zz!
echo.
echo  !Dm!  =================================================!Zz!
echo  !Dm!  [ qualquer tecla ]!Zz!
pause >nul
goto TERMINAL

:LER_ENTRADA
cls
echo.
echo  !Dm!  =================================================!Zz!
echo  !Wh!!Bd!  fragmentos / entrada_final.txt!Zz!
echo  !Dm!  13/05/2026 . 23:11!Zz!
echo  !Dm!  =================================================!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Dm!  Este e o ultimo registro antes do selamento.!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Wh!  Treze fragmentos verificados.!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!  Treze nomes. Treze historias.!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!  Uma comunidade.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Dm!  O arquivo vai ser selado.!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  Nao porque as historias acabaram.!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  Mas porque algumas coisas precisam!Zz!
echo  !Dm!  ser guardadas para quem realmente procura.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Wh!  Se alguem chegar ate aqui:!Zz!
echo  !Wh!  o que voce procura esta em /pessoal.!Zz!
echo  !Wh!  A senha e o que existe entre os dias.!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Dm!  -- O Arquivista!Zz!
echo.
echo  !Dm!  =================================================!Zz!
echo  !Dm!  [ qualquer tecla ]!Zz!
pause >nul
goto TERMINAL

:LER_LOG
cls
echo.
echo  !Dm!  =================================================!Zz!
echo  !Hi!!Bd!  sistema / log_selamento.txt!Zz!
echo  !Dm!  =================================================!Zz!
echo.
echo  !Dm!  [2026-05-13 23:11:42] Iniciando selamento...!Zz!
timeout /t 1 /nobreak >nul
echo  !Gn!  [OK]!Zz!    !Dm!fragmentos verificados: 13/13!Zz!
timeout /t 1 /nobreak >nul
echo  !Gn!  [OK]!Zz!    !Dm!arquivos indexados!Zz!
timeout /t 1 /nobreak >nul
echo  !Yw!  [INFO]!Zz!  !Dm!rastro.enc: cifrado em hex ASCII!Zz!
timeout /t 1 /nobreak >nul
echo  !Yw!  [INFO]!Zz!  !Dm!chave de decifragem: o nome que nos une!Zz!
timeout /t 1 /nobreak >nul
echo  !Yw!  [INFO]!Zz!  !Dm!/pessoal: selado com a lacuna!Zz!
timeout /t 1 /nobreak >nul
echo  !Gn!  [OK]!Zz!    !Dm!selamento concluido!Zz!
echo.
echo  !Dm!  [2026-05-13 23:11:58] Sistema offline.!Zz!
echo.
echo  !Dm!  =================================================!Zz!
echo  !Dm!  [ qualquer tecla ]!Zz!
pause >nul
goto TERMINAL

:LER_RASTRO
cls
echo.
echo  !Dm!  =================================================!Zz!
echo  !Hi!!Bd!  sistema / rastro.enc . [decifrado]!Zz!
echo  !Dm!  =================================================!Zz!
echo.
echo  !Dm!  hex original:!Zz!
echo.
echo  !Dm!        41  54  4C  41  53!Zz!
echo.
echo  !Gn!  =  ATLAS!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Dm!  "O nome que nos une!Zz!
echo  !Dm!   nunca precisou de traducao."!Zz!
echo.
echo  !Dm!  =================================================!Zz!
echo  !Dm!  [ qualquer tecla ]!Zz!
pause >nul
goto TERMINAL

:: ============================================================
::  CARTA ATLAS — TELA FINAL
:: ============================================================
:CARTA_ATLAS
cls
echo.
echo.
timeout /t 2 /nobreak >nul
echo  !Dm!  =================================================!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!!Bd!  pessoal / carta_atlas.txt!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  =================================================!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Wh!  Se voce esta lendo isto,!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!  e porque foi fundo o suficiente.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Dm!  Construi o Projeto IX como um espelho.!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  Nao do que o Atlas e.!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  Mas do que ele sempre foi —!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  mesmo antes de existir.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Wh!  Cada fragmento foi uma escolha.!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!  Cada pista, uma homenagem.!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!  Cada nome escondido na grade,!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!  uma forma de dizer:!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Hi!!Bd!  voce importa. voce pertence.!Zz!
echo.
timeout /t 3 /nobreak >nul
echo  !Dm!  O Atlas foi construido por quem ficou.!Zz!
timeout /t 1 /nobreak >nul
echo  !Dm!  Nao por quem passou.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Wh!!Bd!  Voce ficou.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Dm!  -- O Arquivista!Zz!
echo  !Dm!     13/05/2026 . 23:11!Zz!
echo.
timeout /t 3 /nobreak >nul
echo  !Dm!  =================================================!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Wh!  O arquivo esta completo.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Dm!  O Arquivista deixou uma ultima instrucao:!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Wh!  "Se alguem encontrar isto, deve escolher."!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Dm!  1 . Selar o arquivo novamente.!Zz!
echo  !Dm!  2 . Deixar o arquivo aberto.!Zz!
echo.
choice /c 12 /n /m "  Sua escolha: "
if !errorlevel!==1 goto ENDING_SELAR
goto ENDING_ABRIR

:: ── Ending 1: Selar ───────────────────────────────────────
:ENDING_SELAR
cls
echo.
timeout /t 1 /nobreak >nul
echo  !Dm!  Selando arquivo...!Zz!
timeout /t 1 /nobreak >nul
echo  !Gn!  [OK]!Zz! !Dm!arquivo selado.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Wh!  "Algumas coisas precisam esperar!Zz!
echo  !Wh!   pelo momento certo.!Zz!
echo.
echo  !Wh!   O Arquivista entende."!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Dm!  O arquivo aguardara o proximo que chegar.!Zz!
echo.
timeout /t 2 /nobreak >nul
goto FIM_END

:: ── Ending 2: Abrir ───────────────────────────────────────
:ENDING_ABRIR
cls
echo.
timeout /t 1 /nobreak >nul
echo  !Dm!  Liberando arquivo...!Zz!
timeout /t 1 /nobreak >nul
echo  !Gn!  [OK]!Zz! !Dm!arquivo liberado.!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Wh!  "Isso e o Atlas:!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!   pessoas que chegam ate o fim!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!   e escolhem compartilhar!Zz!
timeout /t 1 /nobreak >nul
echo  !Wh!   em vez de guardar."!Zz!
echo.
timeout /t 2 /nobreak >nul
echo  !Hi!!Bd!  O Arquivista aprovaria.!Zz!
echo.
timeout /t 2 /nobreak >nul
goto FIM_END

:: ── Saiu sem terminar ─────────────────────────────────────
:FIM_SAIU
cls
echo.
echo  !Dm!  Sessao encerrada.!Zz!
echo.
timeout /t 1 /nobreak >nul
echo  !Dm!  "O arquivo continua aqui.!Zz!
echo  !Dm!   Esperando."!Zz!
echo.

:FIM_END
timeout /t 2 /nobreak >nul
echo  !Dm!  =================================================!Zz!
echo  !Dm!  ATLAS OS . ARQUIVO SELADO . IX!Zz!
echo  !Dm!  =================================================!Zz!
echo.
echo  !Dm!  [ qualquer tecla para sair ]!Zz!
pause >nul
endlocal
exit
