#!/bin/bash
cd ~
git clone https://github.com/hanslub42/rlwrap
cd rlwrap
autoreconf --install
./configure
make
cp src/rlwrap ~/bin/
cd ..
rm -rf rlwrap
echo 'alias sql="rlwrap sqlplus YOURSTUDENTNUMBERHERE@csora12edu"' >> ~/.bashrc
source ~/.bashrc
