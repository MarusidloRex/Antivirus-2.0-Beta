@echo off
color 0
cls

echo ahoj jsem Antivirus 2.0 Beta jak v m mohu pomoci?
:vypis_akci
echo Mo§n‚ akce:
echo    konec
echo    karant‚na 
echo    odstranit
echo    vybrat
echo    hacker
echo    skenovat
echo    kod md5
echo    akce
echo    informace
:start
set  /p _vstup=Zadej akci: 
TITLE Antivirus 2.0 Beta
if "%_vstup%"=="konec" goto konec
if "%_vstup%"=="karant‚na" goto karantena
if "%_vstup%"=="odstranit" goto odstranit
if "%_vstup%"=="vybrat" goto vybrat
if "%_vstup%"=="hacker" goto hacker
if "%_vstup%"=="skenovat" goto skenovat
if "%_vstup%"=="kod md5" goto kod_md5
if "%_vstup%"=="akce" goto vypis_akci
if "%_vstup%"=="informace" goto informace
if "%_vstup%"=="scan chov nˇ" goto scan_chovani
echo Nezn m  akce
goto start

:odstranit
echo odstraĺov nˇ
@timeout 3 > nul
del hacker.jpg
del halo.bat
echo odstranŘno!
echo chyby (co dŘlal virus?) 765499569code 021codeS
goto start

:vybrat
echo Antivirus
set  /p _vir=zadejte jm‚no virusu:
echo ach jo
timeout 3 > nul
move /Y %_vir% karantena > nul
echo pýesunuto do karant‚ny
timeout 1 > nul
goto start

:karantena
echo Jseç v karant‚nŘ!
goto start

:skenovat
echo Virus nebyl nalezen :)
goto start

:kod_md5
set _tmp_file=code_md5.txt
set /p file=Zadej jm‚no souboru: 
@rem sem (nahoýe) zad ç jm‚no souboru
@rem tohle pýed  md5 hash do souboru
@CertUtil -hashfile %file% MD5 > %_tmp_file% 
@rem tohle pýeźte md5 hash souboru
for /f "tokens=1*delims=:" %%G in ('findstr /n "^" %_tmp_file%') do if %%G equ 2 set filemd5=%%H
@rem tohle sma§e soubor s md5 hashem
del %_tmp_file%

if "%filemd5%" == "1f 13 39 6f a5 9d 38 eb e7 6c cc 58 7c cb 11 bb" goto Navashield
if "%filemd5%" == "c0 0b 9c 16 28 8d f6 78 fe d2 08 90 e5 ea 7f 5d" goto prd
if "%filemd5%" == "01 63 e2 20 b0 16 04 d4 f0 85 49 8f 23 31 95 b5" goto iloveyou
if "%filemd5%" == "f2 24 ef a7 1d e2 c2 25 4f 7c d0 5f 57 62 bc fd" goto Brytt
if "%filemd5%" == "d3 2c 35 e9 53 e9 46 bd db e5 0b fe 98 05 cb 06" goto TurkishRansom
if "%filemd5%" == "ef 4f df 65 fc 90 bf da 8d 1d 2a e6 d2 0a ff 60" goto NoEscape
if "%filemd5%" == "31 59 1a 4a b9 50 06 41 5e 8e 0e 2a f7 e3 5f 19" goto AntivirusGOLD 
if "%filemd5%" == "aa 9e ca 49 c7 22 ec 1b ab bc 21 55 f1 a9 10 39" goto Nimda
if "%filemd5%" == "6f 57 67 ec 5a 9c c6 f7 d1 95 dd e3 c3 93 91 20" goto CodeRed
if "%filemd5%" == "d1 3f 89 00 34 a6 8c cb 4a f4 e0 bf 51 e2 b5 ec" goto Defray
if "%filemd5%" == "38 ff 71 c1 de e2 a9 ad d6 7f 1e db 1a 30 ff 8c" goto MrsMajor
if "%filemd5%" == "83 c5 20 4b ac b4 9b 83 af ec ea 31 be af 1f 63" goto MrsMajor
if "%filemd5%" == "45 0f 49 42 6b 45 19 ec aa c8 cd 04 81 4c 03 a4" goto MrsMajor
if "%filemd5%" == "62 35 6a 97 dd ad c7 d8 87 bd 66 de c1 8b 9b 4c" goto UnknownTrojan
goto bezpecny

:MrsMajor
color cf
echo Pozor virus nalezen! (MrsMajor)
echo.
echo Detaily:
echo.
echo Typ viru: Trojský kůň
pause
goto start

:UnknownTrojan
color cf
echo Pozor virus nalezen! (UnknownTrojan)
echo.
echo Detaily:
echo.
echo Typ viru: Trojský kůň
pause
goto start

:Navashield
 color cf
echo pozor virus nalezen! (NavaShield)
goto start

:prd
color cf
echo pozor virus nalezen! (prd)
goto start

:bezpecny
color af
echo virus nenalezen :D
goto start

:iloveyou
color cf
echo pozor virus nalezen! (iloveyou,loveletter)
goto start

:CodeRed
color cf
echo pozor virus nalezen! (Code Red)
goto start


:scan_chovani
color 7
echo Vˇtejte ve scanu chov nˇ jak v m mohu pomoci?
echo.
set  /p _vstup=zadat soubor:
set _tmp_file=code_md5.txt
@rem sem (nahoýe) zad ç jm‚no souboru
@rem tohle pýed  md5 hash do souboru
@CertUtil -hashfile %file% MD5 > %_tmp_file% 
@rem tohle pýeźte md5 hash souboru
for /f "tokens=1*delims=:" %%G in ('findstr /n "^" %_tmp_file%') do if %%G equ 2 set filemd5=%%H
@rem tohle sma§e soubor s md5 hashem
del %_tmp_file%
if "%filemd5%" == "1f 13 39 6f a5 9d 38 eb e7 6c cc 58 7c cb 11 bb" goto Navashield
if "%filemd5%" == "c0 0b 9c 16 28 8d f6 78 fe d2 08 90 e5 ea 7f 5d" goto prd
if "%filemd5%" == "01 63 e2 20 b0 16 04 d4 f0 85 49 8f 23 31 95 b5" goto iloveyou
if "%filemd5%" == "f2 24 ef a7 1d e2 c2 25 4f 7c d0 5f 57 62 bc fd "goto Brytt
if "%filemd5%" == "d3 2c 35 e9 53 e9 46 bd db e5 0b fe 98 05 cb 06"goto TurkishRansom
if "%filemd5%" == "ef 4f df 65 fc 90 bf da 8d 1d 2a e6 d2 0a ff 60"goto NoEscape
if "%filemd5%" == "31 59 1a 4a b9 50 06 41 5e 8e 0e 2a f7 e3 5f 19"goto AntivirusGOLD
if "%filemd5%" == "aa 9e ca 49 c7 22 ec 1b ab bc 21 55 f1 a9 10 39"goto Nimda
if "%filemd5%" == "d1 3f 89 00 34 a6 8c cb 4a f4 e0 bf 51 e2 b5 ec" goto Defray
echo.
echo.
echo Scan Chov nˇ (Beta)
pause > nul




:informace
color 07
echo tento antivirus je zdarma,dŘl  md5 kody posˇl  novinky pýes gmail a ma§e soubory (týeba halo.bat)
goto start

:Brytt
color cf
echo pozor virus nalezen! (Brytt)

:TurkishRansom
color cf
echo pozor virus nalezen! (Turkish Ransom)

:NoEscape
color cf
echo pozor virus nalezen! (NoEscape)
echo Detaily:
echo typ viru: nebezpeźně virus
echo md5: ef 4f df 65 fc 90 bf da 8d 1d 2a e6 d2 0a ff 60

:AntivirusGOLD
color cf
echo pozor virus nalezen! (Antivirus Gold)
echo Detaily:
echo typ viru: faleçně antivirus
echo md5: 31 59 1a 4a b9 50 06 41 5e 8e 0e 2a f7 e3 5f 19

:Nimda
color cf
echo pozor virus nalezen! (Nimda)
echo Detaily:
echo typ viru: Nebezpeźně virus
echo md5: aa 9e ca 49 c7 22 ec 1b ab bc 21 55 f1 a9 10 39

:Defray
color cf
echo pozor virus nalezen! (Defray)
echo Detaily:
echo typ viru: Nebezpeźně virus
echo md5: d1 3f 89 00 34 a6 8c cb 4a f4 e0 bf 51 e2 b5 ec



:konec
rem pause > nul
@echo on
