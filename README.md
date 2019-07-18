# GloboMD Search Problem

This is a freshly gnerated rails app. Install the app and seed the database.

# What we have

You'll find a search form on the home page. Each time user types a character into the search, javascript sends a request to the server to get search suggestions. 

Search suggestions are displayed in the browser console, that is sufficient for this test task. In real life those would be a dropdown items that would take user to relevant pages.

# Feature request

Please implement the search suggestions with the following requirements:

- User can search procedure, doctor's name or destination using a single field;
- Procedure search has more priority, so if users type "Den" they shoud get "Dental Crown" procedure first and "Denis Rodman" below;

# Bonus

It would be great to have a little more intelligent search, so if user types procedure & doctor's name eg. "Tummy Tuck Victoria Smith" they would see relevant suggestion ie. procedure or doctor profile.