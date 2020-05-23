#!/usr/bin/env bash
gsutil -h "Cache-Control:public, max-age=2592000" cp -r -Z ./vendor gs://www.ryanwkoch.com/

gsutil -h "Cache-Control:public, max-age=2592000" cp -r -Z ./assets/css/*.min.css gs://www.ryanwkoch.com/assets/css/

gsutil -h "Cache-Control:public, max-age=2592000" cp -r -Z ./assets/scss/*.scss gs://www.ryanwkoch.com/assets/scss/

gsutil -h "Cache-Control:public, max-age=2592000" cp -r -Z ./assets gs://www.ryanwkoch.com/

gsutil -h "Cache-Control:public, max-age=2592000" cp -r -Z ./assets/img gs://www.ryanwkoch.com/

gsutil -h "Cache-Control:public, max-age=2592000" cp -Z ./index.html gs://www.ryanwkoch.com/

gsutil -h "Cache-Control:public, max-age=2592000" cp -Z ./coming_soon.html gs://www.ryanwkoch.com/

gsutil -h "Cache-Control:public, max-age=2592000" cp -Z ./nucleo-icons.html gs://www.ryanwkoch.com/

# gsutil -h "Cache-Control:public, max-age=2592000" cp -Z ./sitemap.xml gs://www.ryanwkoch.com/

gsutil iam ch allUsers:objectViewer gs://www.ryanwkoch.com/

