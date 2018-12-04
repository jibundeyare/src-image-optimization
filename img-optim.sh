#!/bin/bash

mkdir -p images/xs
mkdir -p images/sm
mkdir -p images/md
mkdir -p images/lg

echo "mogrify xs"
mogrify -path images/xs/ -resize 320x200 sources/*.jpg

echo "mogrify sm"
mogrify -path images/sm/ -resize 640x480 sources/*.jpg

echo "mogrify md"
mogrify -path images/md/ -resize 1024x768 sources/*.jpg

echo "mogrify lg"
mogrify -path images/lg/ -resize 1920x1080 sources/*.jpg

echo "imagemin xs"
npx imagemin --out-dir=images/xs/ images/xs/*

echo "imagemin sm"
npx imagemin --out-dir=images/sm/ images/sm/*

echo "imagemin md"
npx imagemin --out-dir=images/md/ images/md/*

echo "imagemin lg"
npx imagemin --out-dir=images/lg/ images/lg/*
