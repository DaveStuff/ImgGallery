v1.2

This batch file creates a HTML gallery from all JPEG, PNG, BMP, WEBP and **GIF** images in a folder and opens it in your default browser.

*ImgGallery was created as an easy, flexible way to view multiple GIF images in motion at the same time.*

To use: 
 Run ImgGallery.bat - as of v1.01 the script will process images in the current working directory.
 I recommend putting ImgGallery.bat into a PATH folder so it can be run easily from anywhere. 
 Previously, the file had to be copied to the same folder as the source images - this will still work if you'd rather click and drag things than use console commands.
 
*If you use a program like Directory Opus - you can create a custom button that creates a gallery from the current lister folder or a selected folder, etc.
  

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREDITS

This project is based on Pict_NT.bat v2.00 by Rob van der Woude: [https://www.robvanderwoude.com/files/pict_nt.txt](https://www.robvanderwoude.com/files/pict_nt.txt)

Rob's version was written a long time ago - it was and is a great idea, but I wanted a bit more from it.
Pict_NT only displays a single row of centered images and there is no ability to click an image to view it seperately.

Therefore, ImgGallery.bat is a near complete rewrite of Pict_NT that uses CSS and additional HTML to:
  - Display images as 300px thumbnails in a **GRID**, allowing more images to ve viewed at the same time.
  - Allow individual images to be clicked and viewed in a new tab.

Idea for CSS based flex gallery came from here: [https://www.geeksforgeeks.org/css-image-gallery](https://www.geeksforgeeks.org/css-image-gallery)
