#!/usr/bin/env python
"""
*2010.06.11 08:19:54
This script was started earlier this year for charlesbrandt.com.
This is a simplified version.

This script is an example of using Moments to populate Mako templates
to generate static content for a website
"""
from __future__ import print_function
from builtins import str
import os, codecs, re

#from moments.journal import Journal
from moments.timestamp import Timestamp
from moments.path import Path
from moments.filters import to_ascii

base_dir = '/c/clients/yoga-mala-site'
if not os.path.exists(base_dir):
    print("Set base dir: %s" % base_dir)
    exit()
template_dir = os.path.join(base_dir, 'templates')
content_dir = os.path.join(base_dir, 'content')
output_dir = os.path.join(base_dir, 'output')

import shutil
if os.path.exists(output_dir):
    print("Removing output dir:")
    shutil.rmtree(output_dir)
print("Creating output dir:")
os.mkdir(output_dir)

from mako.template import Template
from mako.lookup import TemplateLookup
mylookup = TemplateLookup(directories=[template_dir], output_encoding='utf-8', encoding_errors='replace')
mytemplate = mylookup.get_template("site.mako")

classes_template = mylookup.get_template("classes.mako")

p = Path(content_dir)
d = p.load()
#d.scan_subdirs()
for item in d.directories:
    #copy all subdirectories:
    dest = os.path.join(output_dir, item.name)
    print("Copying: %s to %s" % (item.path, dest))
    shutil.copytree(str(item.path), dest)

source = os.path.join(content_dir, 'images', 'favicon.ico')
#copy favicon.ico to root output
dest = os.path.join(output_dir, 'favicon.ico')
print("Copying: %s to %s" % (item.path, dest))
shutil.copy(source, dest)

#note that index.txt is currently ignored by moments, use html instead
for item in d.files:
    if not re.search('~', str(item.path)):
        #item_in = os.path.join(content_dir, item)
        item_in = str(item.path)
        #item_base, ext = os.path.splitext(item)
        item_out = os.path.join(output_dir, item.filename)
        print("creating: %s" % item_out)
        i = codecs.open(item_in, encoding='utf8')
        #ihtml = rest_to_html(i.read())
        f = open(item_out, 'w')
        #f = codecs.open(item_out, 'w', encoding='utf8')
        if item.name != "home":
            parts = item.name.split('-')
            title = ''
            for part in parts:
                title += part.capitalize() + ' - '
            #title = item.name.capitalize() + ' - '
        else:
            title = ''

        #special check for classes...
        #adding a separate template for sub tabs here:
        if re.search('classes', str(item.path)):
            tempf = open('temp.txt', 'w')
            tempf.write(classes_template.render(body=i.read()).decode("utf-8"))
            tempf.close()
            tempf = codecs.open('temp.txt', encoding='utf8')

            #print class_block
            #page_block = mytemplate.render(body=tempf.read(), title=title)
            #f.write(page_block)

            f.write(mytemplate.render(body=tempf.read(), title=title).decode("utf-8"))
            f.close()
        else:
        
            #this nested setup is needed to avoid ascii errors:
            f.write(mytemplate.render(body=i.read(), title=title).decode("utf-8"))
            f.close()
        
