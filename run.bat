@echo off
title bot-name Bot by @MeoMunDep
color 0A

cd %~dp0

echo Checking for bot updates...
git pull origin main > nul 2>&1
echo Bot updated!

echo Checking configuration files...

if not exist configs.json (
    echo {> configs.json
    echo   "saveNewWallets": true,>> configs.json
    echo   "saveNewWallets": true,>> configs.json
    echo   "pingInterval": 15000,>> configs.json
    echo   "delayEachAccount": [5, 8],>> configs.json
    echo   "howManyAccountsRunInOneTime": 100,>> configs.json
    echo   "howManyNewWalletsToCreate": 100,>> configs.json
    echo   "referralCodes": [""]>> configs.json
    echo }>> configs.json
    echo Created configs.json
)

(for %%F in (privateKeys.txt proxies.txt) do (
    if not exist %%F (
        type nul > %%F
        echo Created %%F
    )
))

echo Configuration files checked.

echo Checking dependencies...
if exist "..\node_modules" (
    echo Using node_modules from parent directory...
    cd ..
    CALL npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger ws
    cd %~dp0
) else (
    echo Installing dependencies in current directory...
    CALL npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger ws 
)
echo Dependencies installation completed!

echo Starting the bot...
node meomundep

pause
exit
