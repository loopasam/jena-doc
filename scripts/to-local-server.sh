# Dump the static site in the right place
cd asf-cms/
#From instruction on the CMS doc
export MARKDOWN_SOCKET=`pwd`/markdown.socket PYTHONPATH=`pwd`
python markdownd.py
#Generate temporary folder
perl build_site.pl --source-base=../svn/trunk/ --target-base ../
cd ../
# Erase and copy the new files in the folder served
sudo cp -R content/* /usr/share/nginx/www/
# Clean what was there before
sudo rm -R /usr/share/nginx/www/*
sudo cp -R content/* /usr/share/nginx/www/
# Clean the temp folder
sudo rm -R content/
