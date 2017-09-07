sudo apt-get install -y curl git vim tmux \
   python-zmq python-pip autoconf libtool \
   automake make bison swig python-dev python-numpy python-pyaudio sox libsox-fmt-mp3 libpulse-dev

git clone --depth=1 https://github.com/cmusphinx/sphinxbase.git
git clone --depth=1 https://github.com/cmusphinx/pocketsphinx.git

cd ~/sphinxbase
./autogen.sh
sudo make install
sudo ldconfig


cd ~/pocketsphinx
./autogen.sh
sudo make install
sudo ldconfig

