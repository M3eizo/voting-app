#!/bin/bash

git init
git remote add origin https://github.com/m3eizo/voting-app.git
git add .
git commit -m "Initial project structure"
git branch -M main
git push -u origin main