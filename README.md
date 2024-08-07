This batch file creates a gallery of all JPEG, PNG and **GIF** images in a folder, in HTML format, and opens it in your default browser.

*ImgGallery is MOST useful to quickly view many GIF images in motion at the same time.*

To use: 
  Drop ImgGallery.bat into the folder containing your images.
  Run ImgGallery.bat
    - A file called ImgGallery.htm will be created in the same folder - it will open automatically.
    - To refresh the gallery, just run ImgGallery.bat again.
    - To "uninstall", simply delete ImgGallery files from your image folder. e.g. "del ImgGallery.*"
    - ImgGallery.htm will not work if it is removed from the image folder where it was created.

This project is based on Pict_NT.bat v2.00 by Rob van der Woude: [https://www.robvanderwoude.com/files/pict_nt.txt](https://www.robvanderwoude.com/files/pict_nt.txt)

Rob's version was written a long time ago - it was and is a great idea, but I wanted a bit more from it.
Pict_NT only displays a single row of centered images and there is no ability to click an image to view it seperately.

Therefore, ImgGallery.bat is a near complete rewrite of Pict_NT that uses CSS and additional HTML to:
  - Display images as 300px thumbnails in a **GRID**, allowing more images to ve viewed at the same time.
  - Allow individual images to be clicked and viewed in a new tab.

Idea for CSS based flex gallery came from here: [https://www.geeksforgeeks.org/css-image-gallery](https://www.geeksforgeeks.org/css-image-gallery)

