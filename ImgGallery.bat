@ECHO OFF
ECHO ImgGallery.bat v1.00 for Windows
ECHO Displays all images in current folder in a HTML gallery.
ECHO.
ECHO Based on Pict_NT.bat v2.00 by Rob van der Woude
ECHO http://www.robvanderwoude.com
ECHO.
ECHO Enhanced by Dave
ECHO https://github.com/DaveStuff/ImgGallery.git
ECHO.

SETLOCAL
FOR /F "tokens=*" %%A IN ('CHCP') DO FOR %%B IN (%%A) DO SET CodePage=%%B
IF %CodePage% LSS 1000 (SET CharSet=ibm%CodePage%) ELSE (SET Charset=windows-%CodePage%)
SET OutFile="%~n0.htm"
>  %OutFile% ECHO ^<!DOCTYPE html^>
>> %OutFile% ECHO ^<html lang="en"^>
>> %OutFile% ECHO ^<html^>
>> %OutFile% ECHO ^<head^>
>> %OutFile% ECHO ^<title^>%CD%^</title^>
>> %OutFile% ECHO ^<meta http-equiv="content-type" content="text/html; charset=%CharSet%" /^>
>> %OutFile% ECHO 	^<style^>
>> %OutFile% ECHO 		body {
>> %OutFile% ECHO 			width: 100%;
>> %OutFile% ECHO 			margin: auto;
>> %OutFile% ECHO 			background-color: #000000
>> %OutFile% ECHO 		}
>> %OutFile% ECHO 		.gallery {
>> %OutFile% ECHO 			width: 100%;
>> %OutFile% ECHO 			display: flex;
>> %OutFile% ECHO 			flex-flow: row wrap;
>> %OutFile% ECHO 		}
>> %OutFile% ECHO 		.box {
>> %OutFile% ECHO 			flex-basis: 20%;
>> %OutFile% ECHO 			width: 100%;
>> %OutFile% ECHO 			padding: 10px;
>> %OutFile% ECHO 			margin: 8px;
>> %OutFile% ECHO 		}
>> %OutFile% ECHO 		.text {
>> %OutFile% ECHO 			text-align: center;
>> %OutFile% ECHO 			margin-top: 5px;
>> %OutFile% ECHO 		}
>> %OutFile% ECHO 		@media only screen and (max-width: 300px) {
>> %OutFile% ECHO 			.box {
>> %OutFile% ECHO 				flex-basis: 100%;
>> %OutFile% ECHO 			}
>> %OutFile% ECHO 		}
>> %OutFile% ECHO 		@media only screen and (max-width:500px) {
>> %OutFile% ECHO 	 		.box {
>> %OutFile% ECHO 				flex-basis: 40%;
>> %OutFile% ECHO 			}
>> %OutFile% ECHO 		}
>> %OutFile% ECHO 	^</style^>
>> %OutFile% ECHO ^</head^>
>> %OutFile% ECHO 	^<body^>
>> %OutFile% ECHO 		^<div class="gallery"^>

FOR %%A IN (*.GIF) DO (
	>> %OutFile% ECHO 			^<div class="box"^>
	>> %OutFile% ECHO 				^<div class="image"^>
	>> %OutFile% ECHO 					^<a target="_blank" href="%%~nxA"^>
	>> %OutFile% ECHO 						^<img src="%%~nxA" width="300"/^>
	>> %OutFile% ECHO 					^</a^>
	>> %OutFile% ECHO 				^</div^>
	>> %OutFile% ECHO 			^</div^>
	)
FOR %%A IN (*.JPG) DO (
	>> %OutFile% ECHO 			^<div class="box"^>
	>> %OutFile% ECHO 				^<div class="image"^>
	>> %OutFile% ECHO 					^<a target="_blank" href="%%~nxA"^>
	>> %OutFile% ECHO 						^<img src="%%~nxA" width="300"/^>
	>> %OutFile% ECHO 					^</a^>
	>> %OutFile% ECHO 				^</div^>
	>> %OutFile% ECHO 			^</div^>
	)
FOR %%A IN (*.JPEG) DO (
	>> %OutFile% ECHO 			^<div class="box"^>
	>> %OutFile% ECHO 				^<div class="image"^>
	>> %OutFile% ECHO 					^<a target="_blank" href="%%~nxA"^>
	>> %OutFile% ECHO 						^<img src="%%~nxA" width="300"/^>
	>> %OutFile% ECHO 					^</a^>
	>> %OutFile% ECHO 				^</div^>
	>> %OutFile% ECHO 			^</div^>
	)
FOR %%A IN (*.PNG) DO (
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
>> %OutFile% ECHO ^</html^>
START "ImgGallery.bat" %OutFile%
ENDLOCAL
GOTO:EOF
