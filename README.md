# Scripts for experiments on Jena documentation and website

## Checking out the current branch from source

    # Goes in root directory for the project
    cd jena-doc/

    # Clean the place
    sudo rm -R svn/

    # Check out from SVN source
    svn co http://svn.apache.org/repos/asf/jena/site/ svn

## Installing the Apache CMS
From instructions there: http://www.apache.org/dev/cmsref.html#local-build

    # Clean the place
    sudo rm -R asf-cms/
    
    # Check out from SVN source
    svn co https://svn.apache.org/repos/infra/websites/cms/build/ asf-cms
    
    # And make sure the perl packages, etc... are installed as described on the website
    
## Export of the static site

Modifications are done on under `svn/trunk/`. Should be good to be merged with the current code. Then it's possible to export the site to see how it looks (easier to debug). For that the conent can be exported on a local server (LAMP or ngnix for instance) or put on the GitHub pages to show live results.

### Exporting to local server the static dump

    sudo ./scripts/to-local-server.sh

### Publishing on GitHub pages

    # Export the static site ready for the github pages in a folder
    mkdir /home/samuel/Desktop/site
    sudo ./scripts/generate-github-site.sh /home/samuel/Desktop/site
    
    # Then push to pages after commiting
    git add -u .
    git commit -m 'commit the master'
    git push origin master
    git checkout gh-pages
    # Then copy the saved folder into the pages by hand
    git add -u .
    git commit -m 'new version of the site'
    git push origin gh-pages
