echo "Building docs"

echo "Making HTML"
call pelican content

echo "Delete existing files"
del /s /q / F ~\Git\robbie-sp.github.io\*

echo "Copy over website"
xcopy /s site\output ~\Git\robbie-sp.github.io\

echo "Copy over readme, license and gitignore"
xcopy /s .gitignore ~\Git\robbie-sp.github.io\.gitignore
xcopy /s LICENSE ~\Git\robbie-sp.github.io\LICENSE
xcopy /s README.md ~\Git\robbie-sp.github.io\README.md

echo "Commit"


echo "push to Github"
