# Optimisation des images

## Prérequis

- le package debian `imagemagick`
- le package nodejs `imagemin-cli`

Pour installer `imagemagick` :

    sudo apt-get install imagemagick

Pour installer `imagemin-cli` :

    npm init -y
    npm install imagemin-cli

## Redimensionnement des images avec Image Magick

Redimensionner en 640 x 480, en respectant les proportions :

    mogrify -path img/ -resize 640x480 img-src/*.jpg

Redimensionner en 640 de large (sans limite pour la hauteur), en respectant les proportions :

    mogrify -path img/ -resize 640 img-src/*.jpg

Redimensionner en 480 de haut (sans limite pour la largeur), en respectant les proportions :

    mogrify -path img/ -resize x480 img-src/*.jpg

Forcer un redimensionnement en 640 x 480, sans respecter les proportions :

    mogrify -path img/ -resize 640x480! img-src/*.jpg

## Recadrage des images avec Image Magick

Découper 320px en largeur au centre (sans découper en hauteur) :

    mogrify -path img/ -gravity center -crop 320x+0+0 +repage img/*.jpg

Découper 400px en hauteur au centre (sans découper en largeur) :

    mogrify -path img/ -gravity center -crop x400+0+0 +repage img/*.jpg

Découper 320px en largeur et 200px en hauteur au centre :

    mogrify -path img/ -gravity center -crop 320x200+0+0 +repage img/*.jpg

## Optimiser des images avec Imagemin

Pour optimiser les images du dossier `img` et les écraser avec les nouvelles images :

    npx imagemin --out-dir=img/ img/*

Pour optimiser les images du dossier `img` et créer les nouvelles images dans le dossier `build` :

    npx imagemin --out-dir=build/ img/*

## Scripts bash

Les scripts bash `img-optim-simple.sh` et `img-optim-advanced.sh` sont des exemples de ce qu'il est possible d'automatiser.
Les sections `# user settings` permettent de personnaliser les réglages pour un projet particulier.

Le script bash `clean-img.sh` permet de supprimer le contenu du dossier `img`.

Il faut voir ces scripts comme des points de départ pour automatiser la génération d'images optimiséss.
Il faudra donc surement les adapter à vos besoins.

### Script bash `img-optim-simple.sh`

Ce script créé l'arborescence suivante :

    img/
      lg/
      lg-bg/
      md/
      md-bg/
      sm/
      sm-bg/
      xl/
      xl-bg/
      xs/

Puis il redimensionne les fichiers `*.jpg` du dossier `img-src` aux tailles suivantes :

- 320 x 200
- 640 x 480
- 1024 x 768
- 1920 x 1080

Et enfin il optimise les images.

Toutes les images optimisées sont stockées dans les dossiers `img/*/`.
Les images sources ne sont pas modifiées.

Pour lancer le script :

    ./img-optim-simple.sh

Pour tester le résultat, voir les fichiers `index.html` et `css/style.css`.

### Script bash avancé `img-optim-advanced.sh`

Ce script créé l'arborescence suivante :

    img/
      lg/
      lg-bg/
      md/
      md-bg/
      sm/
      sm-bg/
      xl/
      xl-bg/
      xs/

Puis il redimensionne les fichiers `*.jpg` du dossier `img-src` en fonction d'une proportion d'image (choisie par l'utilisateur) et des valeurs de breakpoints de Twitter Bootstrap.

Et enfin il optimise les images.

Toutes les images optimisées sont stockées dans les dossiers `img/*/`.
Les images sources ne sont pas modifiées.

Pour lancer le script :

    ./img-optim-advanced.sh

Pour tester le résultat, voir les fichiers `advanced.html` et `css/advanced.css`.

### Script bash `clean-img.sh`

Attention, ce script supprime l'intégralité du contenu du dossier `img`.
Il est pratique pour ne pas devoir supprimer « à la main » les dossiers `img/lg`, `img/lg-bg`, `img/md`, ...

## Doc

- [Display resolution - Wikipedia](https://en.wikipedia.org/wiki/Display_resolution)
- [Most Common Aspect Ratio? - Photography Stack Exchange](https://photo.stackexchange.com/questions/33713/most-common-aspect-ratio)

- [A Comparison of JPEG Compression Levels and Recompression](https://blog.codinghorror.com/a-comparison-of-jpeg-compression-levels-and-recompression/)

- [Efficient Image Resizing With ImageMagick — Smashing Magazine](https://www.smashingmagazine.com/2015/06/efficient-image-resizing-with-imagemagick/)
- [Cutting and Bordering -- IM v6 Examples](https://imagemagick.org/Usage/crop/)
- [Command-line Options @ ImageMagick](https://imagemagick.org/script/command-line-options.php)
- [Command-line Processing @ ImageMagick](https://imagemagick.org/script/command-line-processing.php)

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

