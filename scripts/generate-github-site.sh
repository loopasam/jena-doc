# Dump the static site in the right place
cd asf-cms/
#From instruction on the CMS doc
export MARKDOWN_SOCKET=`pwd`/markdown.socket PYTHONPATH=`pwd`
python markdownd.py
#Generate temporary folder
perl build_site.pl --source-base=../svn/trunk/ --target-base ../
cd ../
cd content/
# Set the path right for github site
# TODO: do that for the images too
grep -rl --include="*.html" 'href="/' . | xargs sed -i 's/href=\"\//href=\"\/jena-doc\//g'
cd ..
cp -R content/* $1
# Clean the temp folder
sudo rm -R content/
