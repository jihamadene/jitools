# lient-master\tests\run_data_tests'from xml.etree import ElementTree
# import os
# import sys
# sys.path.append('C:\Users\j\Desktop\gdata-python-client-master')
# import gdata.docs.service
# print sys.path
#
#
# from test import *
# source 'C:\Users\j\Desktop\gdata-python-c
import gdata.docs.service

# Create a client class which will make HTTP requests with Google Docs server.
client = gdata.docs.service.DocsService()
# Authenticate using your Google Docs email address and password.
client.ClientLogin('j.hamadene@gmail.com', '56te9pgwq0cp44w5')

# Query the server for an Atom feed containing a list of your documents.
documents_feed = client.GetDocumentListFeed()
# Loop through the feed and extract each document entry.
for document_entry in documents_feed.entry:
  # Display the title of the document on the command line.
  print document_entry.title.text