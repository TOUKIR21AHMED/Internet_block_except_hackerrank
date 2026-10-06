@echo off
setlocal

:menu
cls
echo ============================================
echo        IUPC HackerRank Site-Blocker
echo ============================================
echo.
echo 1. Apply Blocking Rules - HackerRank Allowed
echo 2. Restore Internet
echo 3. Exit
echo.
echo ============================================
set /p choice=Enter your choice (1/2/3): 

if "%choice%"=="1" goto block_sites
if "%choice%"=="2" goto restore_internet
if "%choice%"=="3" goto end
goto menu


:block_sites
cls

net session >nul 2>&1
if not "%errorlevel%"=="0" (
    echo.
    echo ERROR: Please Run This BAT File As Administrator.
    echo.
    pause
    goto menu
)

echo.
echo Applying IUPC blocking rules...
echo HackerRank will remain accessible.
echo.

attrib -r -s -h "%SystemRoot%\System32\drivers\etc\hosts" >nul 2>&1

(
echo 127.0.0.1 localhost
echo ::1 localhost

echo 0.0.0.0 toph.co
echo 0.0.0.0 www.toph.co
echo 0.0.0.0 api.toph.co
echo 0.0.0.0 arena.toph.co

echo 0.0.0.0 facebook.com
echo 0.0.0.0 www.facebook.com
echo 0.0.0.0 m.facebook.com
echo 0.0.0.0 web.facebook.com

echo 0.0.0.0 instagram.com
echo 0.0.0.0 www.instagram.com

echo 0.0.0.0 twitter.com
echo 0.0.0.0 www.twitter.com
echo 0.0.0.0 x.com
echo 0.0.0.0 www.x.com

echo 0.0.0.0 tiktok.com
echo 0.0.0.0 www.tiktok.com

echo 0.0.0.0 snapchat.com
echo 0.0.0.0 www.snapchat.com

echo 0.0.0.0 reddit.com
echo 0.0.0.0 www.reddit.com

echo 0.0.0.0 linkedin.com
echo 0.0.0.0 www.linkedin.com

echo 0.0.0.0 pinterest.com
echo 0.0.0.0 www.pinterest.com


echo 0.0.0.0 google.com
echo 0.0.0.0 www.google.com
echo 0.0.0.0 chrome.google.com

echo 0.0.0.0 bing.com
echo 0.0.0.0 www.bing.com

echo 0.0.0.0 yahoo.com
echo 0.0.0.0 www.yahoo.com

echo 0.0.0.0 duckduckgo.com
echo 0.0.0.0 www.duckduckgo.com

echo 0.0.0.0 yandex.com
echo 0.0.0.0 www.yandex.com

echo 0.0.0.0 ask.com
echo 0.0.0.0 www.ask.com

echo 0.0.0.0 ecosia.org
echo 0.0.0.0 www.ecosia.org

echo 0.0.0.0 qwant.com
echo 0.0.0.0 www.qwant.com


echo 0.0.0.0 chatgpt.com
echo 0.0.0.0 www.chatgpt.com
echo 0.0.0.0 chat.openai.com
echo 0.0.0.0 openai.com
echo 0.0.0.0 www.openai.com

echo 0.0.0.0 claude.ai
echo 0.0.0.0 www.claude.ai
echo 0.0.0.0 anthropic.com
echo 0.0.0.0 www.anthropic.com

echo 0.0.0.0 deepseek.com
echo 0.0.0.0 www.deepseek.com
echo 0.0.0.0 chat.deepseek.com
echo 0.0.0.0 api.deepseek.com

echo 0.0.0.0 kimi.com
echo 0.0.0.0 www.kimi.com
echo 0.0.0.0 kimi.ai
echo 0.0.0.0 www.kimi.ai
echo 0.0.0.0 moonshot.cn
echo 0.0.0.0 www.moonshot.cn

echo 0.0.0.0 qwen.ai
echo 0.0.0.0 www.qwen.ai
echo 0.0.0.0 chat.qwen.ai
echo 0.0.0.0 tongyi.aliyun.com

echo 0.0.0.0 z.ai
echo 0.0.0.0 www.z.ai
echo 0.0.0.0 chat.z.ai
echo 0.0.0.0 api.z.ai

echo 0.0.0.0 bigmodel.cn
echo 0.0.0.0 www.bigmodel.cn
echo 0.0.0.0 open.bigmodel.cn

echo 0.0.0.0 chatglm.cn
echo 0.0.0.0 www.chatglm.cn

echo 0.0.0.0 gemini.google.com
echo 0.0.0.0 bard.google.com

echo 0.0.0.0 perplexity.ai
echo 0.0.0.0 www.perplexity.ai

echo 0.0.0.0 copilot.microsoft.com
echo 0.0.0.0 copilot.com
echo 0.0.0.0 www.copilot.com

echo 0.0.0.0 grok.com
echo 0.0.0.0 www.grok.com
echo 0.0.0.0 x.ai
echo 0.0.0.0 www.x.ai

echo 0.0.0.0 poe.com
echo 0.0.0.0 www.poe.com

echo 0.0.0.0 meta.ai
echo 0.0.0.0 www.meta.ai

echo 0.0.0.0 mistral.ai
echo 0.0.0.0 www.mistral.ai
echo 0.0.0.0 chat.mistral.ai

echo 0.0.0.0 huggingface.co
echo 0.0.0.0 www.huggingface.co


echo 0.0.0.0 youtube.com
echo 0.0.0.0 www.youtube.com
echo 0.0.0.0 m.youtube.com

echo 0.0.0.0 netflix.com
echo 0.0.0.0 www.netflix.com

echo 0.0.0.0 spotify.com
echo 0.0.0.0 www.spotify.com

echo 0.0.0.0 soundcloud.com
echo 0.0.0.0 www.soundcloud.com

echo 0.0.0.0 vimeo.com
echo 0.0.0.0 www.vimeo.com

echo 0.0.0.0 twitch.tv
echo 0.0.0.0 www.twitch.tv


echo 0.0.0.0 github.com
echo 0.0.0.0 www.github.com
echo 0.0.0.0 gist.github.com
echo 0.0.0.0 raw.githubusercontent.com

echo 0.0.0.0 gitlab.com
echo 0.0.0.0 www.gitlab.com

echo 0.0.0.0 bitbucket.org
echo 0.0.0.0 www.bitbucket.org

echo 0.0.0.0 stackoverflow.com
echo 0.0.0.0 www.stackoverflow.com

echo 0.0.0.0 npmjs.com
echo 0.0.0.0 www.npmjs.com

echo 0.0.0.0 codepen.io
echo 0.0.0.0 www.codepen.io

echo 0.0.0.0 jsfiddle.net
echo 0.0.0.0 www.jsfiddle.net

echo 0.0.0.0 codesandbox.io
echo 0.0.0.0 www.codesandbox.io

echo 0.0.0.0 replit.com
echo 0.0.0.0 www.replit.com
echo 0.0.0.0 repl.it
echo 0.0.0.0 www.repl.it


echo 0.0.0.0 marketplace.visualstudio.com
echo 0.0.0.0 www.marketplace.visualstudio.com

echo 0.0.0.0 gallery.vsassets.io
echo 0.0.0.0 gallerycdn.vsassets.io

echo 0.0.0.0 update.code.visualstudio.com
echo 0.0.0.0 code.visualstudio.com
echo 0.0.0.0 www.code.visualstudio.com

echo 0.0.0.0 vscode.download.prss.microsoft.com
echo 0.0.0.0 download.visualstudio.microsoft.com

echo 0.0.0.0 vscode.dev
echo 0.0.0.0 www.vscode.dev

echo 0.0.0.0 vscode-unpkg.net
echo 0.0.0.0 vscode-cdn.net

echo 0.0.0.0 vsmarketplacebadges.dev
echo 0.0.0.0 www.vsmarketplacebadges.dev

echo 0.0.0.0 vscode-sync.trafficmanager.net
echo 0.0.0.0 vscode-sync-insiders.trafficmanager.net

echo 0.0.0.0 default.exp-tas.com

echo 0.0.0.0 go.microsoft.com


echo 0.0.0.0 drive.google.com
echo 0.0.0.0 docs.google.com
echo 0.0.0.0 sheets.google.com
echo 0.0.0.0 slides.google.com
echo 0.0.0.0 forms.google.com
echo 0.0.0.0 mail.google.com
echo 0.0.0.0 scholar.google.com

echo 0.0.0.0 dropbox.com
echo 0.0.0.0 www.dropbox.com

echo 0.0.0.0 onedrive.com
echo 0.0.0.0 www.onedrive.com

echo 0.0.0.0 mega.nz
echo 0.0.0.0 www.mega.nz

echo 0.0.0.0 mediafire.com
echo 0.0.0.0 www.mediafire.com


echo 0.0.0.0 whatsapp.com
echo 0.0.0.0 www.whatsapp.com
echo 0.0.0.0 web.whatsapp.com

echo 0.0.0.0 messenger.com
echo 0.0.0.0 www.messenger.com

echo 0.0.0.0 telegram.org
echo 0.0.0.0 www.telegram.org
echo 0.0.0.0 web.telegram.org

echo 0.0.0.0 discord.com
echo 0.0.0.0 www.discord.com

echo 0.0.0.0 slack.com
echo 0.0.0.0 www.slack.com


echo 0.0.0.0 quora.com
echo 0.0.0.0 www.quora.com

echo 0.0.0.0 medium.com
echo 0.0.0.0 www.medium.com

echo 0.0.0.0 wikipedia.org
echo 0.0.0.0 www.wikipedia.org
echo 0.0.0.0 en.wikipedia.org


echo 0.0.0.0 codeforces.com
echo 0.0.0.0 www.codeforces.com

echo 0.0.0.0 atcoder.jp
echo 0.0.0.0 www.atcoder.jp

echo 0.0.0.0 codechef.com
echo 0.0.0.0 www.codechef.com

echo 0.0.0.0 geeksforgeeks.org
echo 0.0.0.0 www.geeksforgeeks.org
echo 0.0.0.0 ide.geeksforgeeks.org

echo 0.0.0.0 vjudge.net
echo 0.0.0.0 www.vjudge.net

echo 0.0.0.0 leetcode.com
echo 0.0.0.0 www.leetcode.com

echo 0.0.0.0 spoj.com
echo 0.0.0.0 www.spoj.com

echo 0.0.0.0 topcoder.com
echo 0.0.0.0 www.topcoder.com

echo 0.0.0.0 codingame.com
echo 0.0.0.0 www.codingame.com

echo 0.0.0.0 csacademy.com
echo 0.0.0.0 www.csacademy.com

echo 0.0.0.0 cses.fi
echo 0.0.0.0 www.cses.fi

echo 0.0.0.0 hackerearth.com
echo 0.0.0.0 www.hackerearth.com

echo 0.0.0.0 interviewbit.com
echo 0.0.0.0 www.interviewbit.com

echo 0.0.0.0 projecteuler.net
echo 0.0.0.0 www.projecteuler.net

echo 0.0.0.0 lightoj.com
echo 0.0.0.0 www.lightoj.com

echo 0.0.0.0 cp-algorithms.com
echo 0.0.0.0 www.cp-algorithms.com


echo 0.0.0.0 pastebin.com
echo 0.0.0.0 www.pastebin.com

echo 0.0.0.0 paste.ee
echo 0.0.0.0 www.paste.ee

echo 0.0.0.0 ideone.com
echo 0.0.0.0 www.ideone.com

echo 0.0.0.0 codewars.com
echo 0.0.0.0 www.codewars.com

echo 0.0.0.0 paiza.io
echo 0.0.0.0 www.paiza.io

echo 0.0.0.0 coderpad.io
echo 0.0.0.0 www.coderpad.io

echo 0.0.0.0 cplusplus.com
echo 0.0.0.0 www.cplusplus.com

echo 0.0.0.0 wolframalpha.com
echo 0.0.0.0 www.wolframalpha.com

echo 0.0.0.0 desmos.com
echo 0.0.0.0 www.desmos.com

) > "%SystemRoot%\System32\drivers\etc\hosts"


if not "%errorlevel%"=="0" (
    echo.
    echo ERROR: Could not modify hosts file.
    echo.
    pause
    goto menu
)

ipconfig /flushdns >nul 2>&1

echo.
echo ============================================
echo        CONTEST MODE ENABLED
echo ============================================
echo.
echo HackerRank       : ALLOWED
echo Toph             : BLOCKED
echo AI Sites         : BLOCKED
echo Google           : BLOCKED
echo CP Sites         : BLOCKED
echo GitHub           : BLOCKED
echo VS Code Market   : BLOCKED
echo VS Code Updates  : BLOCKED
echo VS Code Web      : BLOCKED
echo.
echo Close all browser windows.
echo Restart VS Code before contest.
echo.
pause
goto menu



:restore_internet
cls

echo.
echo ============================================
echo          RESTORING INTERNET
echo ============================================
echo.

net session >nul 2>&1

if not "%errorlevel%"=="0" (
    echo ERROR: Administrator permission required.
    echo.
    echo Run this BAT file as Administrator.
    echo.
    pause
    goto menu
)

echo Removing blocking rules...
echo.

attrib -r -s -h "%SystemRoot%\System32\drivers\etc\hosts" >nul 2>&1

del /f /q "%SystemRoot%\System32\drivers\etc\hosts" >nul 2>&1

(
echo 127.0.0.1 localhost
echo ::1 localhost
) > "%SystemRoot%\System32\drivers\etc\hosts"

if not "%errorlevel%"=="0" (
    echo.
    echo ERROR: Could not restore hosts file.
    echo.
    pause
    goto menu
)

echo Flushing DNS cache...
ipconfig /flushdns >nul 2>&1

echo.
echo ============================================
echo       INTERNET RESTORED SUCCESSFULLY
echo ============================================
echo.
echo All blocking rules have been removed.
echo.
echo Close ALL browser windows and reopen browser.
echo Restart VS Code if it was open.
echo.
pause
goto menu



:end
endlocal
exit /b