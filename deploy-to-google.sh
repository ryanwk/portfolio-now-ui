#!/usr/bin/env bash
gsutil -h "Cache-Control:public, max-age=2592000" -m cp -r -Z ./assets/css/*.min.css gs://www.ryanwkoch.com/assets/css/

gsutil -h "Cache-Control:public, max-age=2592000" -m cp -r -Z ./assets/scss/*.scss gs://www.ryanwkoch.com/assets/scss/

gsutil -h "Cache-Control:public, max-age=2592000" -m cp -r -Z ./assets gs://www.ryanwkoch.com/

gsutil -h "Cache-Control:public, max-age=2592000" -m cp -r -Z ./assets/img gs://www.ryanwkoch.com/

gsutil -h "Cache-Control:public, max-age=2592000" -m cp -Z ./index.html gs://www.ryanwkoch.com/

gsutil -h "Cache-Control:public, max-age=2592000" -m cp -Z ./coming_soon.html gs://www.ryanwkoch.com/

gsutil -h "Cache-Control:public, max-age=2592000" -m cp -Z ./checked_in.html gs://www.ryanwkoch.com/

# gsutil -h "Cache-Control:public, max-age=2592000" cp -Z ./sitemap.xml gs://www.ryanwkoch.com/
# add -m to end of command if running the script tells you to: "gsutil -m"
gsutil iam ch allUsers:objectViewer gs://www.ryanwkoch.com/

