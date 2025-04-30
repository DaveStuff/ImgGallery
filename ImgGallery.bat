@ECHO OFF
ECHO ImgGallery.bat v1.2 for Windows
ECHO Displays all images in a folder as a HTML gallery
ECHO.
ECHO Originally based on Pict_NT.bat v2.00 by Rob van der Woude
ECHO http://www.robvanderwoude.com
ECHO.
ECHO Enhanced by Dave
ECHO https://github.com/DaveStuff/ImgGallery.git
ECHO.

REM set working directory to current directory (allows script to be run via console from another location)
cd /D %CD%

SETLOCAL

REM define codepage/charset
FOR /F "tokens=*" %%A IN ('CHCP') DO FOR %%B IN (%%A) DO SET CodePage=%%B
IF %CodePage% LSS 1000 (SET CharSet=ibm%CodePage%) ELSE (SET Charset=windows-%CodePage%)

REM set name of output HTML file ("%~n0.htm" uses the same base name as this batch file)
SET OutFile="%~n0.htm"

REM HTML
	>  %OutFile% ECHO ^<!DOCTYPE html^>
	>> %OutFile% ECHO ^<html lang="en"^>
	>> %OutFile% ECHO ^<html^>
	>> %OutFile% ECHO ^<head^>

	REM use current directory as page title
	>> %OutFile% ECHO ^<title^>%CD%^</title^>

	REM CSS
		>> %OutFile% ECHO 	^<style^>
		>> %OutFile% ECHO 		body {
		>> %OutFile% ECHO 			margin: auto;
		>> %OutFile% ECHO 			background-color: #707070;
		>> %OutFile% ECHO 		}
 		>> %OutFile% ECHO 		.gallery {
		>> %OutFile% ECHO 			margin: 20px;
		>> %OutFile% ECHO 			padding: 10px;
 		>> %OutFile% ECHO 			display: flex;
 		>> %OutFile% ECHO 			flex-flow: row wrap;
 		>> %OutFile% ECHO 		}
		>> %OutFile% ECHO 		.box {
		>> %OutFile% ECHO 			margin: 5px;
		>> %OutFile% ECHO			display: flex;
		>> %OutFile% ECHO 			justify-content: center;
 		>> %OutFile% ECHO 			align-items: center;
		>> %OutFile% ECHO 		}
 		>> %OutFile% ECHO 		.image {
		>> %OutFile% ECHO 			padding-top: 4px;
		>> %OutFile% ECHO 			padding-left: 4px;
		>> %OutFile% ECHO 			padding-right: 4px;
		>> %OutFile% ECHO 			background-color: #171717;
		>> %OutFile% ECHO 		}
		>> %OutFile% ECHO 	^</style^>
	REM /CSS 
	
	>> %OutFile% ECHO ^</head^>
		
	REM GALLERY
		>> %OutFile% ECHO 	^<body^>
		>> %OutFile% ECHO 		^<div class="gallery"^>	
			REM add images in working folder to the gallery (GIF, JPG, JPEG, PNG, BMP, WEBP)
			FOR %%A IN (*.GIF *.JPG *.JPEG *.PNG *.BMP *.WEBP) DO (
				>> %OutFile% ECHO 			^<div class="box"^>
 				>> %OutFile% ECHO 				^<div class="image"^>
				>> %OutFile% ECHO 					^<a target="_blank" href="%%~nxA"^>
				>> %OutFile% ECHO 						^<img src="%%~nxA" width="300"/^>
				>> %OutFile% ECHO 					^</a^>
 				>> %OutFile% ECHO 				^</div^>
				>> %OutFile% ECHO 			^</div^>
				)
		>> %OutFile% ECHO 		^</div^>
		>> %OutFile% ECHO ^</body^>
	REM /GALLERY
	>> %OutFile% ECHO ^</html^>
REM /HTML

REM open gallery in default browser
START "" %OutFile%

ENDLOCAL
GOTO:EOF
