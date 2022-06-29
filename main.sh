#!/bin/bash
git status
git add .
git commit -m "Test"
git checkout -b ФИО
git status
git add .
git commit -m "Test2"
git push origin ФИО
git checkout main
git status
git add .
git commit -m "Test3"
git push origin main
git merge ФИО
#git branch -d ФИО - Delete branch
git push origin main