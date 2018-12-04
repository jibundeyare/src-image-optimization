# Optimisation des images

## Prérequis

- le package debian `imagemagick`
- le package debian `nodejs` et `npm`
- le package nodejs `imagemin-cli`

Pour installer `imagemagick` :

    sudo apt-get install imagemagick

Pour installer `nodejs` et `npm` :

    curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
    sudo apt-get install -y nodejs

Attention : la branche 10.x de nodejs est une LTS alors que la branche 11.x ne l'est pas.

Pour installer `imagemin-cli` :

    npm init -y
    npm install imagemin-cli

## Redimensionnement des images avec Image Magick

Redimensionner en 640 x 480, en respectant les proportions :

    mogrify -path output/ -resize 640x480 images/*.jpg

Redimensionner en 640 de large (sans limite pour la hauteur), en respectant les proportions :

    mogrify -path output/ -resize 640 images/*.jpg

Redimensionner en 480 de haut (sans limite pour la largeur), en respectant les proportions :

    mogrify -path output/ -resize x480 images/*.jpg

Forcer un redimensionnement en 640 x 480, sans respecter les proportions :

    mogrify -path output/ -resize 640x480! images/*.jpg

## Optimiser des images avec Imagemin

Pour optimiser les images du dossier `images` et créer les nouvelles images dans le dossier `build` :

    npx imagemin --out-dir=build/ images/*

Pour optimiser les images du dossier `images` et les écraser avec les nouvelles images :

    npx imagemin --out-dir=images/ images/*

## Script bash

Ce script créé l'arborescence suivante :

    images/
        lg/
        md/
        sm/
        xs/

Puis il redimensionne les fichiers JPEG du dossier `source` aux tailles suivantes :

- 320 x 200
- 640 x 480
- 1024 x 768
- 1920 x 1080

Et enfin il optimise les images.

Toutes les images optimisées sont stockées dans les dossiers `images/*`.
Les images sources ne sont pas modifiées.

Pour lancer le script :

    ./img-optim.sh

## Doc

- [Efficient Image Resizing With ImageMagick — Smashing Magazine](https://www.smashingmagazine.com/2015/06/efficient-image-resizing-with-imagemagick/)
- [Command-line Processing @ ImageMagick](http://www.imagemagick.org/script/command-line-processing.php)

- [Installing Node.js via package manager | Node.js](https://nodejs.org/en/download/package-manager/)
- [distributions/README.md at master · nodesource/distributions](https://github.com/nodesource/distributions/blob/master/README.md)

- [imagemin/imagemin-cli: Minify images](https://github.com/imagemin/imagemin-cli)

- [How to Optimize and Compress JPEG or PNG Images in Linux Commandline](https://www.tecmint.com/optimize-and-compress-jpeg-or-png-batch-images-linux-commandline/)

- [<img>: The Image Embed element - HTML: HyperText Markup Language | MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/img)
- [<picture>: The Picture element - HTML: HyperText Markup Language | MDN](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/picture)
- [Picturefill](http://scottjehl.github.io/picturefill/#examples)

## Médias

- file: 0a_b9g-rm6w-austin-neill.jpg  
  author: [Austin Neill Photography | Unsplash](https://unsplash.com/@arstyy)  
  licence: [Creative Commons — CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)  
  source: [Photo by Austin Neill | Unsplash](https://unsplash.com/?photo=0A_b9G-Rm6w)  
- file: ian-schneider-41925-unsplash.jpg  
  author: [Unsplash | Beautiful Free Photo Community](https://unsplash.com/@goian)  
  licence: [Creative Commons — CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)  
  source: [Mountains over the sea photo by Ian Schneider (@goian) on Unsplash](https://unsplash.com/photos/XJfHMPJ0e-g)  
- file: ilya-pavlov-87438.jpg  
  author: [Ilya Pavlov (@ilyapavlov) | Unsplash Photo Community](https://unsplash.com/@ilyapavlov)  
  licence: [Creative Commons — CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)  
  source: [Colorful lines of code photo by Ilya Pavlov (@ilyapavlov) on Unsplash](https://unsplash.com/photos/OqtafYT5kTw)  
- file: jamie-street-97626-unsplash.jpg  
  author: [Jamie Street (@jamie452) | Unsplash Photo Community](https://unsplash.com/@jamie452)  
  licence: [Creative Commons — CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)  
  source: [Brighton beaches photo by Jamie Street (@jamie452) on Unsplash](https://unsplash.com/photos/gZlQZFCA1Vc)  
- file: jason-blackeye-261859-unsplash.jpg  
  author: [Unsplash | Beautiful Free Photo Community](https://unsplash.com/@jeisblack)  
  licence: [Creative Commons — CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)  
  source: [The lonely lighthouse photo by Jason Blackeye (@jeisblack) on Unsplash](https://unsplash.com/photos/WjPQ4dJ1PSc)  
- file: jordan-mcqueen-6535-unsplash.jpg  
  author: [Jordan McQueen (@jordanfmcqueen) | Unsplash Photo Community](https://unsplash.com/@jordanfmcqueen)  
  licence: [Creative Commons — CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)  
  source: [Sunset, landscape, beach and sea HD photo by Jordan McQueen (@jordanfmcqueen) on Unsplash](https://unsplash.com/photos/bJBXvZ--uyc)  
- file: khatam-tadayon-107740-unsplash.jpg  
  author: [Khatam Tadayon (@khatam) | Unsplash Photo Community](https://unsplash.com/@khatam)  
  licence: [Creative Commons — CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)  
  source: [Chaboksar beach photo by Khatam Tadayon (@khatam) on Unsplash](https://unsplash.com/photos/9wVHyp90lgI)  
- file: nicholas-green-324622.jpg  
  author: [Nicholas Green (@nickshotz_) | Unsplash Photo Community](https://unsplash.com/@nickshotz_)  
  licence: [Creative Commons — CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)  
  source: [Appreciative Fan photo by Nicholas Green (@nickshotz_) on Unsplash](https://unsplash.com/photos/nPz8akkUmDI)  

