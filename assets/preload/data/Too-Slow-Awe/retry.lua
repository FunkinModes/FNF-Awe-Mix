local fullTime = false
local hudYdef


local t = 72
local r = 0.25
local w = 'cubeInOut'

local spin1 = 1

function onSongStart()
	hudYdef = getProperty('camHUD.y')
    setProperty('cameraSpeed', 2)
    setProperty('showComboNum', false);
    setProperty('showRating', false);
end

function onUpdate()
    setTextString('botplayTxt', 'HREDS')
end

function onCreate()
    fullTime = false
	makeAnimatedLuaSprite('DeathScreenSonicExe','DeathScreenSonicExe',0, 0)
	addAnimationByPrefix('DeathScreenSonicExe','idle','appear', 24,false)
    screenCenter('DeathScreenSonicExe','x')
    setObjectCamera('DeathScreenSonicExe','hud')
    addLuaSprite('DeathScreenSonicExe',false)  
    setProperty('DeathScreenSonicExe.visible',false)
    setProperty('skipCountdown', true)
end

function onStepHit()
    if curStep == 1 then
        noteTweenAlpha("noteGoneOpp1", 0, 0.25, 0.1, 'circInOut');
        noteTweenAlpha("noteGoneOpp2", 1, 0.25, 0.1, 'circInOut');
        noteTweenAlpha("noteGoneOpp3", 2, 0.25, 0.1, 'circInOut');
        noteTweenAlpha("noteGoneOpp4", 3, 0.25, 0.1, 'circInOut');
        doTweenY('hudUp','DeathScreenSonicExe',hudYdef-100,2,'sineInOut')
        setProperty('gf.visible', false)
    end
    if curStep == 512 then
        setProperty('defaultCamZoom',0)
        cameraFlash('game', '000000', 1, 1)
        setProperty('dad.visible', false)
        setProperty('boyfriend.visible', false)
    end
    if curStep == 545 then
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 664 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 671 then
        cameraFlash('game', '000000', 1, 5)
    end
    if curStep == 672 then
        cameraFlash('game', '000000', 1, 1)
        setProperty('defaultCamZoom',0.4)
        setProperty('DeathScreenSonicExe.visible',true)
        setProperty('gf.visible', false)
        setProperty('dad.visible', false)
    end
    if curStep == 704 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        setProperty('defaultCamZoom',0.75)
        setProperty('DeathScreenSonicExe.visible',false)
        setProperty('gf.visible', true)
        setProperty('dad.visible', true)
    end
    if curStep == 772 then
        setProperty('defaultCamZoom',0.75)
        cameraFlash('game', 'FFFFFF', 1, 1)
    end


    if curStep == 720 then
        setProperty('defaultCamZoom',0.9)

        noteTweenAngle('r', 0, t * spin1, r, w)
        noteTweenAngle('r1', 1, t * spin1, r, w)
        noteTweenAngle('r2', 2, t * spin1, r, w)
        noteTweenAngle('r3', 3, t * spin1, r, w)
        spin1 = spin1 + 1
        noteTweenAngle('r4', 4, t * spin1, r, w)
        noteTweenAngle('r5', 5, t * spin1, r, w)
        noteTweenAngle('r6', 6, t * spin1, r, w)
        noteTweenAngle('r7', 7, t * spin1, r, w)
    end
    if curStep == 724 then
        setProperty('defaultCamZoom',1.05)
        noteTweenAngle('r', 0, t * spin1, r, w)
        noteTweenAngle('r1', 1, t * spin1, r, w)
        noteTweenAngle('r2', 2, t * spin1, r, w)
        noteTweenAngle('r3', 3, t * spin1, r, w)
        spin1 = spin1 + 1
        noteTweenAngle('r4', 4, t * spin1, r, w)
        noteTweenAngle('r5', 5, t * spin1, r, w)
        noteTweenAngle('r6', 6, t * spin1, r, w)
        noteTweenAngle('r7', 7, t * spin1, r, w)
    end
    if curStep == 728 then
        setProperty('defaultCamZoom',1.2)
        noteTweenAngle('r', 0, t * spin1, r, w)
        noteTweenAngle('r1', 1, t * spin1, r, w)
        noteTweenAngle('r2', 2, t * spin1, r, w)
        noteTweenAngle('r3', 3, t * spin1, r, w)
        spin1 = spin1 + 1
        noteTweenAngle('r4', 4, t * spin1, r, w)
        noteTweenAngle('r5', 5, t * spin1, r, w)
        noteTweenAngle('r6', 6, t * spin1, r, w)
        noteTweenAngle('r7', 7, t * spin1, r, w)
    end
    if curStep == 732 then
        setProperty('defaultCamZoom',1.35)
        noteTweenAngle('r', 0, t * spin1, r, w)
        noteTweenAngle('r1', 1, t * spin1, r, w)
        noteTweenAngle('r2', 2, t * spin1, r, w)
        noteTweenAngle('r3', 3, t * spin1, r, w)
        spin1 = spin1 + 1
        noteTweenAngle('r4', 4, t * spin1, r, w)
        noteTweenAngle('r5', 5, t * spin1, r, w)
        noteTweenAngle('r6', 6, t * spin1, r, w)
        noteTweenAngle('r7', 7, t * spin1, r, w)
    end
    if curStep == 736 then
        setProperty('defaultCamZoom',0.75)
        noteTweenAngle('r', 0, t * spin1, r, w)
        noteTweenAngle('r1', 1, t * spin1, r, w)
        noteTweenAngle('r2', 2, t * spin1, r, w)
        noteTweenAngle('r3', 3, t * spin1, r, w)
        spin1 = spin1 + 1
        noteTweenAngle('r4', 4, t * spin1, r, w)
        noteTweenAngle('r5', 5, t * spin1, r, w)
        noteTweenAngle('r6', 6, t * spin1, r, w)
        noteTweenAngle('r7', 7, t * spin1, r, w)
    end





    if curStep == 752 then
        setProperty('defaultCamZoom',0.9)
        noteTweenAngle('r', 0, t * spin1, r, w)
        noteTweenAngle('r1', 1, t * spin1, r, w)
        noteTweenAngle('r2', 2, t * spin1, r, w)
        noteTweenAngle('r3', 3, t * spin1, r, w)
        spin1 = spin1 + 1
        noteTweenAngle('r4', 4, t * spin1, r, w)
        noteTweenAngle('r5', 5, t * spin1, r, w)
        noteTweenAngle('r6', 6, t * spin1, r, w)
        noteTweenAngle('r7', 7, t * spin1, r, w)
    end
    if curStep == 756 then
        setProperty('defaultCamZoom',1.05)
        noteTweenAngle('r', 0, t * spin1, r, w)
        noteTweenAngle('r1', 1, t * spin1, r, w)
        noteTweenAngle('r2', 2, t * spin1, r, w)
        noteTweenAngle('r3', 3, t * spin1, r, w)
        spin1 = spin1 + 1
        noteTweenAngle('r4', 4, t * spin1, r, w)
        noteTweenAngle('r5', 5, t * spin1, r, w)
        noteTweenAngle('r6', 6, t * spin1, r, w)
        noteTweenAngle('r7', 7, t * spin1, r, w)
    end
    if curStep == 760 then
        setProperty('defaultCamZoom',1.2)
        noteTweenAngle('r', 0, t * spin1, r, w)
        noteTweenAngle('r1', 1, t * spin1, r, w)
        noteTweenAngle('r2', 2, t * spin1, r, w)
        noteTweenAngle('r3', 3, t * spin1, r, w)
        spin1 = spin1 + 1
        noteTweenAngle('r4', 4, t * spin1, r, w)
        noteTweenAngle('r5', 5, t * spin1, r, w)
        noteTweenAngle('r6', 6, t * spin1, r, w)
        noteTweenAngle('r7', 7, t * spin1, r, w)
    end
    if curStep == 764 then
        setProperty('defaultCamZoom',1.35)
        noteTweenAngle('r', 0, t * spin1, r, w)
        noteTweenAngle('r1', 1, t * spin1, r, w)
        noteTweenAngle('r2', 2, t * spin1, r, w)
        noteTweenAngle('r3', 3, t * spin1, r, w)
        spin1 = spin1 + 1
        noteTweenAngle('r4', 4, t * spin1, r, w)
        noteTweenAngle('r5', 5, t * spin1, r, w)
        noteTweenAngle('r6', 6, t * spin1, r, w)
        noteTweenAngle('r7', 7, t * spin1, r, w)
    end
    if curStep == 767 then
        setProperty('defaultCamZoom',0.1)
        noteTweenAngle('r', 0, 360, 0.5, w)
        noteTweenAngle('r1', 1,  360, 0.5, w)
        noteTweenAngle('r2', 2, 360, 0.5, w)
        noteTweenAngle('r3', 3,  360, 0.5, w)
        spin1 = spin1 + 1
        noteTweenAngle('r4', 4,  360, 0.5, w)
        noteTweenAngle('r5', 5,  360, 0.5, w)
        noteTweenAngle('r6', 6,  360, 0.5, w)
        noteTweenAngle('r7', 7,  360, 0.5, w)
    end
    if curStep == 832 then
        cameraFlash('game', '000000', 1, 5)
        doTweenZoom('screenZoom', 'camGame', 0.05, 1.25, 'circInOut');
        doTweenAngle('ttrn', 'camGame', 360, 1.25, 'circInOut')
    end
    if curStep == 848 then
        setProperty('defaultCamZoom',0.75)
        cameraFlash('game', 'FFFFFF', 1, 1)
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 856 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end 
    if curStep == 864 then
        doTweenZoom('screenZoom', 'camGame', 0.5, 0.0125, 'circInOut');
    end
    if curStep == 868 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 872 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 876 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 544 then
        setProperty('boyfriend.visible', true)
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
        setProperty('gf.visible', true)
        setProperty('dad.visible', true)
    end
    if curStep == 560 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 576 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 592 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 632 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 634 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 636 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 638 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 640 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end









    if curStep == 912 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 920 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 928 then
        doTweenZoom('screenZoom', 'camGame', 0.5, 0.0125, 'circInOut');
    end
    if curStep == 932 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 936 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end
    if curStep == 940 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.025, 'circInOut');
    end























    if curStep == 976 then
        setProperty('defaultCamZoom',1.05)
    end
    if curStep == 992 then
        setProperty('defaultCamZoom',0.6)
    end
    if curStep == 1004 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
    end
    if curStep == 1008 then
        setProperty('defaultCamZoom',1.05)
    end
    if curStep == 1024 then
        setProperty('defaultCamZoom',0.6)
    end
    if curStep == 1036 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
    end


    if curStep == 1040 then
        setProperty('defaultCamZoom',1.05)
    end
    if curStep == 1056 then
        setProperty('defaultCamZoom',0.65)
    end
    if curStep == 1068 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
    end
    if curStep == 1072 then
        setProperty('defaultCamZoom',1.05)
    end
    if curStep == 1088 then
        setProperty('defaultCamZoom',0.6)
    end
    if curStep == 1100 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
    end


    if curStep == 1204 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1232 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1248 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1264 then
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1280 then
        setProperty('defaultCamZoom',1)
    end


    if curStep == 1300 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1328 then
        setProperty('defaultCamZoom',1)
    end

    if curStep == 1344 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1352 then
        setProperty('defaultCamZoom',1.05)
    end



    if curStep == 1360 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1376 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1392 then
        cameraFlash('game', 'FFFFFF', 1, 1)
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1408 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1424 then
        cameraFlash('game', '000000', 1, 1)
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1440 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1456 then
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1472 then
        setProperty('defaultCamZoom',1.05)
    end











    if curStep == 1488 then
        cameraFlash('game', '000000', 1, 1)
        setProperty('defaultCamZoom',0.75)
        makeLuaSprite('whiteshit', '', -600, -300)
        makeGraphic('whiteshit',5000,5000,'ffffff')
        addLuaSprite('whiteshit', false)
        setProperty('gf.color', '000000')
        setProperty('dad.color', '000000')
        setProperty('boyfriend.color', '000000')
        doTweenZoom('cameraZ', 'camGame', 1.1, 0.00001, 'sineInOut')
    end
    if curStep == 1680 then
        setProperty('defaultCamZoom',0.75)
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
        cameraFlash('game', '000000', 1, 1)
        removeLuaSprite('whiteshit')
        setProperty('gf.color', getColorFromHex('FFFFFF'))
        setProperty('dad.color', getColorFromHex('FFFFFF'))
        setProperty('boyfriend.color', getColorFromHex('FFFFFF'))
    end




    if curStep == 1520 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
    end
    if curStep == 1552 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
    end
    if curStep == 1584 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
    end
    if curStep == 1616 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
    end
    if curStep == 1630 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
    end

    if curStep == 1648 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
        cameraFlash('game', '000000', 1, 1)
    end
    if curStep == 1654 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
        cameraFlash('game', 'FFFFFF', 1, 1)
    end

    if curStep == 1658 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
        cameraFlash('game', '000000', 1, 1)
    end
    if curStep == 1662 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
        cameraFlash('game', 'FFFFFF', 1, 1)
    end

    if curStep == 1668 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
        cameraFlash('game', '000000', 1, 1)
        setProperty('defaultCamZoom',1.05)
    end
    if curStep == 1672 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
        cameraFlash('game', 'FFFFFF', 1, 1)
    end
    if curStep == 1676 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
        cameraFlash('game', '000000', 1, 1)
    end






    if curStep == 1696 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1712 then
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1728 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1736 then
        setProperty('defaultCamZoom',1.2)
    end
    if curStep == 1744 then
        setProperty('defaultCamZoom',0.75)
    end


    if curStep == 1760 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1776 then
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1792 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1800 then
        setProperty('defaultCamZoom',1.2)
        cameraSetTarget('dad', 1, 1)
    end





    if curStep == 1808 then
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1824 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1840 then
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1856 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1864 then
        setProperty('defaultCamZoom',1.2)
    end
    if curStep == 1872 then
        setProperty('defaultCamZoom',0.75)
    end


    if curStep == 1888 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1904 then
        setProperty('defaultCamZoom',0.75)
    end
    if curStep == 1920 then
        setProperty('defaultCamZoom',1)
    end
    if curStep == 1928 then
        setProperty('defaultCamZoom',1.2)
        cameraSetTarget('dad', 1, 1)
    end


    if curStep == 1936 then
        setProperty('defaultCamZoom',0.75)
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1940 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1944 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1948 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end


    if curStep == 1952 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1956 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1960 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1964 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end

    if curStep == 1968 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1972 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1976 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1980 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end

    if curStep == 1984 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1988 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1992 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 1996 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end

    if curStep == 2000 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2004 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2008 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2012 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end


    if curStep == 2016 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2020 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2024 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2028 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end

    if curStep == 2032 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2036 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2040 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2044 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end


    if curStep == 2048 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2052 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2056 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end
    if curStep == 2060 then
        doTweenZoom('screenZoom', 'camGame', 1.05, 0.0125, 'circInOut');
    end

    if curStep == 2064 then
        doTweenZoom('screenZoom', 'camGame', 1.2, 0.025, 'circInOut');
        cameraFade('hud', '000000', 5, 1)
    end


    if curStep == 1292 then
        cameraSetTarget('boyfriend', 1, 1)
    end
    if curStep == 1480 then
        cameraFlash('game', '000000', 1, 1)
    end
end

