#!/usr/bin/env bash
gulp # or grunt?

gsutil -h "Cache-Control:public, max-age=2592000" cp -r -Z ./vendor gs://www.glass-is-lit.com

gsutil -h "Cache-Control:public, max-age=2592000" cp -r -Z ./css/*.min.css gs://www.glass-is-lit.com/css/

gsutil -h "Cache-Control:public, max-age=2592000" cp -r -Z ./js/*.min.js gs://www.glass-is-lit.com/js/

gsutil -h "Cache-Control:public, max-age=2592000" cp -r -Z ./device-mockups gs://www.glass-is-lit.com

gsutil -h "Cache-Control:public, max-age=2592000" cp -r -Z ./img gs://www.glass-is-lit.com

gsutil -h "Cache-Control:public, max-age=2592000" cp -Z ./index.html gs://www.glass-is-lit.com

gsutil -h "Cache-Control:public, max-age=2592000" cp -Z ./sitemap.xml gs://www.glass-is-lit.com

gsutil iam ch allUsers:objectViewer gs://www.glass-is-lit.com

