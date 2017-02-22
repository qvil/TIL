date=`date`;
cp -f Home.md README.md; # Home.md for gollum copy to README.md for github 
git add .;
git ci -m "[TS Auto Push Script] $date";
git push ssh master;
