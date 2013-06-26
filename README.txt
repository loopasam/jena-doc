Pseudo-doc for me

samuel@samuel-Latitude-E6510 ~/Downloads/CMS $ export MARKDOWN_SOCKET=`pwd`/markdown.socket PYTHONPATH=`pwd`
samuel@samuel-Latitude-E6510 ~/Downloads/CMS $ python markdownd.py
samuel@samuel-Latitude-E6510 ~/Downloads/CMS $ perl build_site.pl --source-base=../Jena/trunk/ --target-base ../Jena/jena-doc/

then handle the crappy `content` folder.

/home/samuel/Downloads/CMS

=

.
├── build_external.pl
├── build_file.pl
├── build_site.pl
├── build_svn.pl
├── lib
├── markdownd.py
├── markdown.socket
├── mdx_elementid.py
└── mdx_elementid.pyc


/home/samuel/Downloads/Jena

=

.
├── branches
├── jena-doc
├── markdown.socket
└── trunk

Path Corrector:
grep -rl --include="*.html" 'href="/' . | xargs sed -i 's/href=\"\//href=\"\/jena-doc\//g'
