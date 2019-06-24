# Yoga-Mala.org Site Generator

This repository contains a simple site generator script that assembles the static materials used for publishing [yoga-mala.org](http://yoga-mala.org).

Source available:

https://github.com/charlesbrandt/yoga-mala

To update style sheets:

    cd path/to/yoga-mala-site/content/css
    lessc style.less > style.css

To regenerate static versions:

    cd /c/public/yoga-mala-site/"
    python3 generate.py"


Be sure to validate any changes in a browser locally before updating:

    file:///path/to/yoga-mala-site/output/
