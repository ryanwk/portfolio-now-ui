#!/usr/bin/env bash
gsutil -m cp -r -Z ./assets/css/*.min.css gs://www.ryanwkoch.com/assets/css/

gsutil -m cp -r -Z ./assets/scss/*.scss gs://www.ryanwkoch.com/assets/scss/

gsutil -m cp -r -Z ./assets gs://www.ryanwkoch.com/

gsutil -m cp -r -Z ./assets/img gs://www.ryanwkoch.com/

gsutil -m cp -Z ./index.html gs://www.ryanwkoch.com/

gsutil -m cp -Z ./coming_soon.html gs://www.ryanwkoch.com/

gsutil -m cp -Z ./checked_in.html gs://www.ryanwkoch.com/

gsutil -m cp -Z ./favr.html gs://www.ryanwkoch.com/

gsutil -m cp -Z ./glass.html gs://www.ryanwkoch.com/

gsutil -m cp -Z ./odf_index.html gs://www.ryanwkoch.com/

gsutil -m cp -Z ./smart_pantry.html gs://www.ryanwkoch.com/

gsutil -m cp -Z ./six_sigma.html gs://www.ryanwkoch.com/

gsutil -m cp -Z ./cycle_alert.html gs://www.ryanwkoch.com/

gsutil iam ch allUsers:objectViewer gs://www.ryanwkoch.com/

