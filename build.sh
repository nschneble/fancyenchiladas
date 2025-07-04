#!/bin/sh
rm -rf public

mkdir public
cp robots.txt public/robots.txt
cp sitemap.xml public/sitemap.xml

# create the html folder structure
mkdir public/cats public/haiku-engine
cp html/cats.html public/cats/index.html
cp html/haiku-engine.html public/haiku-engine/index.html
cp html/index.html public/index.html

# compile css
mkdir public/css
sass css/style.scss public/css/style.css

# copy data files
mkdir public/data
cp data/* public/data

# copy images and favicons
mkdir public/images
cp images/* public/images
