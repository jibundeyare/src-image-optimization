#!/bin/bash

# This script creates resized and optimized version of images from a source
# directory.
# The heights of the images are computed using values set by the user.
#
# This script uses following commands :
# - mogrify
# - imagemin

# user settings

xs_width="320"
xs_height="200"

sm_width="640"
sm_height="480"

md_width="1024"
md_height="768"

lg_width="1600"
lg_height="900"

xl_width="1920"
xl_height="1080"

bg_max_height="1000"

# start srcipt

# process images
mkdir -p img/xs
mkdir -p img/sm
mkdir -p img/md
mkdir -p img/lg
mkdir -p img/xl

echo "mogrify resize xs"
mogrify -path img/xs/ -resize ${xs_width}x$xs_height img-src/*.jpg

echo "mogrify resize sm"
mogrify -path img/sm/ -resize ${sm_width}x$sm_height img-src/*.jpg

echo "mogrify resize md"
mogrify -path img/md/ -resize ${md_width}x$md_height img-src/*.jpg

echo "mogrify resize lg"
mogrify -path img/lg/ -resize ${lg_width}x$lg_height img-src/*.jpg

echo "mogrify resize xl"
mogrify -path img/xl/ -resize ${xl_width}x$xl_height img-src/*.jpg

echo "imagemin xs"
npx imagemin --out-dir=img/xs/ img/xs/*

echo "imagemin sm"
npx imagemin --out-dir=img/sm/ img/sm/*

echo "imagemin md"
npx imagemin --out-dir=img/md/ img/md/*

echo "imagemin lg"
npx imagemin --out-dir=img/lg/ img/lg/*

echo "imagemin xl"
npx imagemin --out-dir=img/xl/ img/xl/*

# process backgrounds
mkdir -p img/xs-bg
mkdir -p img/sm-bg
mkdir -p img/md-bg
mkdir -p img/lg-bg
mkdir -p img/xl-bg

echo "mogrify resize xs-bg"
mogrify -path img/xs-bg/ -resize x$bg_max_height img-src/*.jpg

echo "mogrify resize sm-bg"
mogrify -path img/sm-bg/ -resize x$bg_max_height img-src/*.jpg

echo "mogrify resize md-bg"
mogrify -path img/md-bg/ -resize x$bg_max_height img-src/*.jpg

echo "mogrify resize lg-bg"
mogrify -path img/lg-bg/ -resize x$bg_max_height img-src/*.jpg

echo "mogrify resize xl-bg"
mogrify -path img/xl-bg/ -resize x$bg_max_height img-src/*.jpg

echo "mogrify crop xs-bg"
mogrify -path img/xs-bg/ -gravity center -crop ${xs_width}x+0+0 +repage img/xs-bg/*.jpg

echo "mogrify crop sm-bg"
mogrify -path img/sm-bg/ -gravity center -crop ${sm_width}x+0+0 +repage img/sm-bg/*.jpg

echo "mogrify crop md-bg"
mogrify -path img/md-bg/ -gravity center -crop ${md_width}x+0+0 +repage img/md-bg/*.jpg

echo "mogrify crop lg-bg"
mogrify -path img/lg-bg/ -gravity center -crop ${lg_width}x+0+0 +repage img/lg-bg/*.jpg

echo "mogrify crop xl-bg"
mogrify -path img/xl-bg/ -gravity center -crop ${xl_width}x+0+0 +repage img/xl-bg/*.jpg

echo "imagemin xs-bg"
npx imagemin --out-dir=img/xs-bg/ img/xs-bg/*

echo "imagemin sm-bg"
npx imagemin --out-dir=img/sm-bg/ img/sm-bg/*

echo "imagemin md-bg"
npx imagemin --out-dir=img/md-bg/ img/md-bg/*

echo "imagemin lg-bg"
npx imagemin --out-dir=img/lg-bg/ img/lg-bg/*

echo "imagemin xl-bg"
npx imagemin --out-dir=img/xl-bg/ img/xl-bg/*

