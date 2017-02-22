date=`date`;
cp -f README.md Home.md;
git add .;
git ci -m "[TS Auto Push Script] $date";
git push ssh master;
