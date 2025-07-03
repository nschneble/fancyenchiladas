#!/bin/sh
rm -rf public

mkdir public
cp robots.txt public/robots.txt
cp sitemap.xml public/sitemap.xml

# create the html folder structure
cp html/index.html public/index.html

# compile css
mkdir public/css
sass css/style.scss public/css/style.css

# copy images and favicons
mkdir public/images
cp images/* public/images
