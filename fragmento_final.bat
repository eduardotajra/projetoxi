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

set "CWD=raiz"
set "PESSOAL_UNLOCKED=0"
set "RASTRO_DECRYPTED=0"

:: ============================
::  VERIFICACAO DE ACESSO
:: ============================
cls
echo.
echo.
echo   ===================================================
echo   ATLAS OS . ARQUIVO SELADO
echo   ===================================================
echo.
echo   Este arquivo esta protegido.
echo   Acesso requer chave de autorizacao.
echo.
set /p "CHAVE=   chave: "
if /i not "!CHAVE!"=="TREZE" (
  echo.
  echo   [ACESSO NEGADO]
  echo.
  echo   A chave esta incorreta.
  echo   O arquivo permanece selado.
  echo.
  timeout /t 3 /nobreak >nul
  endlocal
  exit
)
echo.
echo   [ACESSO CONCEDIDO]
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
echo              A T L A S  O S
timeout /t 1 /nobreak >nul
echo.
echo              I   X
echo             / \ / \
echo            /   X   \
echo               / \
echo              /   \
echo.
timeout /t 1 /nobreak >nul
echo           P R O J E T O  I X
echo.
timeout /t 2 /nobreak >nul
echo   =================================================
timeout /t 1 /nobreak >nul
echo   SISTEMA SELADO DESDE 13/05/2026 . 23:11:42
timeout /t 1 /nobreak >nul
echo   =================================================
echo.
timeout /t 2 /nobreak >nul
echo   Detectando tentativa de acesso...
timeout /t 2 /nobreak >nul
echo   [AVISO] Backdoor ativo no setor IX.
timeout /t 1 /nobreak >nul
echo   Iniciando bypass automatico...
timeout /t 2 /nobreak >nul
echo   Acesso concedido.
timeout /t 1 /nobreak >nul
echo.
echo   "Eu deixei uma porta aberta.
echo    Sabia que alguem chegaria ate aqui."
echo.
timeout /t 3 /nobreak >nul
echo   [ pressione qualquer tecla ]
pause >nul

:: ============================
::  TERMINAL LOOP
:: ============================
:TERMINAL
cls
echo.
echo   ATLAS OS . TERMINAL
echo   =========================================================
echo   arquivista@atlas:/!CWD!
echo   =========================================================
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
echo   '!VERB!': comando nao reconhecido. Digite: ajuda
echo.
goto TERMINAL

:CMD_AJUDA
echo.
echo   Comandos disponiveis:
echo   ---------------------------------------------------------
echo   ls                  listar arquivos
echo   cd [dir]            entrar em diretorio
echo   cd ..               voltar para raiz
echo   cat [arquivo]       ler arquivo
echo   abrir [dir]         abrir diretorio bloqueado
echo   decifrar [arq]      decifrar arquivo cifrado
echo   sair                encerrar sessao
echo   ---------------------------------------------------------
echo.
goto TERMINAL

:CMD_LS
echo.
if "!CWD!"=="raiz" (
  echo   fragmentos/       [diretorio]
  if !PESSOAL_UNLOCKED!==0 (
    echo   pessoal/          [BLOQUEADO]
  ) else (
    echo   pessoal/          [diretorio]
  )
  echo   sistema/          [diretorio]
)
if "!CWD!"=="fragmentos" (
  echo   manifesto.txt
  echo   entrada_final.txt
)
if "!CWD!"=="pessoal" (
  if !PESSOAL_UNLOCKED!==0 (
    echo   [acesso negado]
  ) else (
    echo   carta_atlas.txt
  )
)
if "!CWD!"=="sistema" (
  echo   log_selamento.txt
  if !RASTRO_DECRYPTED!==0 (
    echo   rastro.enc        [CIFRADO]
  ) else (
    echo   rastro.enc        [decifrado]
  )
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
    echo   ACESSO NEGADO.
    echo   Use: abrir pessoal
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
  if not "!CWD!"=="fragmentos" (
    echo.
    echo   arquivo nao encontrado aqui.
    echo.
    goto TERMINAL
  )
  goto LER_MANIFESTO
)
if /i "!ARG1!"=="entrada_final.txt" (
  if not "!CWD!"=="fragmentos" (
    echo.
    echo   arquivo nao encontrado aqui.
    echo.
    goto TERMINAL
  )
  goto LER_ENTRADA
)
if /i "!ARG1!"=="log_selamento.txt" (
  if not "!CWD!"=="sistema" (
    echo.
    echo   arquivo nao encontrado aqui.
    echo.
    goto TERMINAL
  )
  goto LER_LOG
)
if /i "!ARG1!"=="rastro.enc" (
  if not "!CWD!"=="sistema" (
    echo.
    echo   arquivo nao encontrado aqui.
    echo.
    goto TERMINAL
  )
  if !RASTRO_DECRYPTED!==0 (
    echo.
    echo   [CIFRADO] Use: decifrar rastro.enc
    echo.
    goto TERMINAL
  )
  goto LER_RASTRO
)
if /i "!ARG1!"=="carta_atlas.txt" (
  if not "!CWD!"=="pessoal" (
    echo.
    echo   arquivo nao encontrado aqui.
    echo.
    goto TERMINAL
  )
  if !PESSOAL_UNLOCKED!==0 (
    echo.
    echo   acesso negado.
    echo.
    goto TERMINAL
  )
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
echo   DIRETORIO SELADO . AUTENTICACAO NECESSARIA
echo   -------------------------------------------------
echo.
set /p "PASS=   senha: "
if /i "!PASS!"=="LACUNA" (
  echo.
  echo   [OK] Acesso concedido.
  set "PESSOAL_UNLOCKED=1"
  set "CWD=pessoal"
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
echo   DECIFRAR . rastro.enc
echo   =================================================
echo.
echo   Conteudo em hex ASCII:
echo.
echo         41  54  4C  41  53
echo.
echo   Converta para texto.
echo   "o nome que nos une."
echo.
set /p "DANS=   resposta: "
if /i "!DANS!"=="ATLAS" (
  echo.
  echo   [OK] Decifrado. Use: cat rastro.enc
  set "RASTRO_DECRYPTED=1"
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
echo   =================================================
echo   fragmentos / manifesto.txt
echo   =================================================
echo.
timeout /t 1 /nobreak >nul
echo   O Projeto IX nao nasceu de um plano.
timeout /t 1 /nobreak >nul
echo   Nasceu de uma percepcao simples:
echo.
timeout /t 1 /nobreak >nul
echo   O Atlas ja existia antes de ter nome.
timeout /t 1 /nobreak >nul
echo   Existia nas conversas de madrugada,
timeout /t 1 /nobreak >nul
echo   nos servidores que ficaram de pe
echo   quando todo mundo ja tinha ido embora,
timeout /t 1 /nobreak >nul
echo   nas construcoes que ninguem pediu
echo   mas que todo mundo ficou para ver.
echo.
timeout /t 2 /nobreak >nul
echo   O numero nove nunca foi um numero.
timeout /t 1 /nobreak >nul
echo   Foi o espaco entre o que foi planejado
echo   e o que realmente aconteceu.
echo.
timeout /t 2 /nobreak >nul
echo   Treze fragmentos. Treze escolhas.
timeout /t 1 /nobreak >nul
echo   Cada um deles, uma homenagem.
echo.
timeout /t 1 /nobreak >nul
echo   Eu apenas documentei.
echo.
echo   -- O Arquivista
echo.
echo   =================================================
echo   [ qualquer tecla ]
pause >nul
goto TERMINAL

:LER_ENTRADA
cls
echo.
echo   =================================================
echo   fragmentos / entrada_final.txt
echo   13/05/2026 . 23:11
echo   =================================================
echo.
timeout /t 1 /nobreak >nul
echo   Este e o ultimo registro antes do selamento.
echo.
timeout /t 1 /nobreak >nul
echo   Treze fragmentos verificados.
timeout /t 1 /nobreak >nul
echo   Treze nomes. Treze historias.
timeout /t 1 /nobreak >nul
echo   Uma comunidade.
echo.
timeout /t 2 /nobreak >nul
echo   O arquivo vai ser selado.
timeout /t 1 /nobreak >nul
echo   Nao porque as historias acabaram.
timeout /t 1 /nobreak >nul
echo   Mas porque algumas coisas precisam
echo   ser guardadas para quem realmente procura.
echo.
timeout /t 2 /nobreak >nul
echo   Se alguem chegar ate aqui:
echo   o que voce procura esta em /pessoal.
echo   A senha e o que existe entre os dias.
echo.
timeout /t 1 /nobreak >nul
echo   -- O Arquivista
echo.
echo   =================================================
echo   [ qualquer tecla ]
pause >nul
goto TERMINAL

:LER_LOG
cls
echo.
echo   =================================================
echo   sistema / log_selamento.txt
echo   =================================================
echo.
echo   [2026-05-13 23:11:42] Iniciando selamento...
timeout /t 1 /nobreak >nul
echo   [OK]    fragmentos verificados: 13/13
timeout /t 1 /nobreak >nul
echo   [OK]    arquivos indexados
timeout /t 1 /nobreak >nul
echo   [INFO]  rastro.enc: cifrado em hex ASCII
timeout /t 1 /nobreak >nul
echo   [INFO]  chave: o nome que nos une
timeout /t 1 /nobreak >nul
echo   [INFO]  /pessoal: selado com a lacuna
timeout /t 1 /nobreak >nul
echo   [OK]    selamento concluido
echo.
echo   [2026-05-13 23:11:58] Sistema offline.
echo.
echo   =================================================
echo   [ qualquer tecla ]
pause >nul
goto TERMINAL

:LER_RASTRO
cls
echo.
echo   =================================================
echo   sistema / rastro.enc [decifrado]
echo   =================================================
echo.
echo   hex original:
echo.
echo         41  54  4C  41  53
echo.
echo   =  ATLAS
echo.
timeout /t 1 /nobreak >nul
echo   "O nome que nos une
echo    nunca precisou de traducao."
echo.
echo   =================================================
echo   [ qualquer tecla ]
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
echo   =================================================
timeout /t 1 /nobreak >nul
echo   pessoal / carta_atlas.txt
timeout /t 1 /nobreak >nul
echo   =================================================
echo.
timeout /t 2 /nobreak >nul
echo   Se voce esta lendo isto,
timeout /t 1 /nobreak >nul
echo   e porque foi fundo o suficiente.
echo.
timeout /t 2 /nobreak >nul
echo   Construi o Projeto IX como um espelho.
timeout /t 1 /nobreak >nul
echo   Nao do que o Atlas e.
timeout /t 1 /nobreak >nul
echo   Mas do que ele sempre foi,
timeout /t 1 /nobreak >nul
echo   mesmo antes de existir.
echo.
timeout /t 2 /nobreak >nul
echo   Cada fragmento foi uma escolha.
timeout /t 1 /nobreak >nul
echo   Cada pista, uma homenagem.
timeout /t 1 /nobreak >nul
echo   Cada nome escondido na grade,
timeout /t 1 /nobreak >nul
echo   uma forma de dizer:
echo.
timeout /t 1 /nobreak >nul
echo   VOCE IMPORTA. VOCE PERTENCE.
echo.
timeout /t 3 /nobreak >nul
echo   O Atlas foi construido por quem ficou.
timeout /t 1 /nobreak >nul
echo   Nao por quem passou.
echo.
timeout /t 2 /nobreak >nul
echo   Voce ficou.
echo.
timeout /t 2 /nobreak >nul
echo   -- O Arquivista
echo      13/05/2026 . 23:11
echo.
timeout /t 3 /nobreak >nul
echo   =================================================
echo.
timeout /t 1 /nobreak >nul
echo   O arquivo esta completo.
echo.
timeout /t 2 /nobreak >nul
echo   O Arquivista deixou uma ultima instrucao:
echo.
timeout /t 1 /nobreak >nul
echo   "Se alguem encontrar isto, deve escolher."
echo.
timeout /t 2 /nobreak >nul
echo   1 . Selar o arquivo novamente.
echo   2 . Deixar o arquivo aberto.
echo.
choice /c 12 /n /m "   Sua escolha: "
if !errorlevel!==1 goto ENDING_SELAR
goto ENDING_ABRIR

:ENDING_SELAR
cls
echo.
timeout /t 1 /nobreak >nul
echo   Selando arquivo...
timeout /t 1 /nobreak >nul
echo   [OK] arquivo selado.
echo.
timeout /t 2 /nobreak >nul
echo   "Algumas coisas precisam esperar
echo    pelo momento certo.
echo.
echo    O Arquivista entende."
echo.
timeout /t 2 /nobreak >nul
echo   O arquivo aguardara o proximo que chegar.
echo.
timeout /t 2 /nobreak >nul
goto FIM_END

:ENDING_ABRIR
cls
echo.
timeout /t 1 /nobreak >nul
echo   Liberando arquivo...
timeout /t 1 /nobreak >nul
echo   [OK] arquivo liberado.
echo.
timeout /t 2 /nobreak >nul
echo   "Isso e o Atlas:
timeout /t 1 /nobreak >nul
echo    pessoas que chegam ate o fim
timeout /t 1 /nobreak >nul
echo    e escolhem compartilhar
timeout /t 1 /nobreak >nul
echo    em vez de guardar."
echo.
timeout /t 2 /nobreak >nul
echo   O Arquivista aprovaria.
echo.
timeout /t 2 /nobreak >nul
goto FIM_END

:FIM_SAIU
cls
echo.
echo   Sessao encerrada.
echo.
timeout /t 1 /nobreak >nul
echo   "O arquivo continua aqui.
echo    Esperando."
echo.

:FIM_END
timeout /t 2 /nobreak >nul
echo   =================================================
echo   ATLAS OS . ARQUIVO SELADO . IX
echo   =================================================
echo.
echo   [ qualquer tecla para sair ]
pause >nul
endlocal
exit
