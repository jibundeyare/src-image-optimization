#!/bin/bash

mkdir -p img/xs
mkdir -p img/sm
mkdir -p img/md
mkdir -p img/lg

echo "mogrify xs"
mogrify -path img/xs/ -resize 320x200 img-src/*.jpg

echo "mogrify sm"
mogrify -path img/sm/ -resize 640x480 img-src/*.jpg

echo "mogrify md"
mogrify -path img/md/ -resize 1024x768 img-src/*.jpg

echo "mogrify lg"
mogrify -path img/lg/ -resize 1920x1080 img-src/*.jpg

echo "imagemin xs"
npx imagemin --out-dir=img/xs/ img/xs/*

echo "imagemin sm"
npx imagemin --out-dir=img/sm/ img/sm/*

echo "imagemin md"
npx imagemin --out-dir=img/md/ img/md/*

echo "imagemin lg"
npx imagemin --out-dir=img/lg/ img/lg/*
