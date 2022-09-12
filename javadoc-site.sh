#! /usr/bin/env sh
cd i2p.i2p || git clone https://i2pgit.org/i2p-hackers/i2p.i2p && cd i2p.i2p
ant javadoc
cp javadoc-site.sh ~/.i2p/eepsite/docroot/javadoc-i2p/
cp -rv build/javadoc/* ~/.i2p/eepsite/docroot/javadoc-i2p/ -v || cd ../
cd ~/.i2p/eepsite/docroot/javadoc-i2p/ && touch .nojekyll && git add . .nojekyll && git commit -am "$(date)" && git push --all
