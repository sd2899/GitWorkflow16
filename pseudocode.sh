# Create master.txt file in master branch
touch main.txt
git init
git branch
git add .
git commit -m "commit main.txt"

# Adding the remote repository
git remote add origin git@github.com:sd2899/GitWorkflow16.git

# create hotfix branch 
git checkout -b hotfix
touch demo.txt
git add .
git commit -m "commit urgent.txt"
git push -u origin hotfix

# merge the hotfix branch in master branch
git checkout master 
git merge hotfix 

# Create develop branch and switch to the develop branch and also create develop.txt file
git checkout -b develop
touch develop.txt
git add .
git commit -m "commit develop.txt on develop branch"

# create and switch to feature branch and create feature.txt file
git checkout -b feature
touch feature.txt
git add .
git commit -m "commit feature.txt on feature branch"
git push -u origin feature

# switch to develop branch and merge the feature branch
git checkout develop 
git merge feature 

# Create a release branch at the beginning of the month 
git checkout -b release

# Test and fix issues on the release branch
# Any necessary bug fixes should be made directly on this branch
touch release.txt
git add .
git commit -m "commit release"
git push -u origin release

# On the 25th of the month, create a release tag
git tag -a v2023-09 -m "Release on 25th of every month"

# merge the release on develop branch
git checkout develop
git merge release
git push -u origin develop

# merge the release on master branch
git checkout master 
git merge release

#push the project in Github Repository
git push -u origin master


