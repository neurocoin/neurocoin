# A proven way to build Neuro CLI daemon at Debian 7

For general instructions see `build-cli-unix.txt`.

No UPNP support in this instruction, but it may be added.

## Main dependencies

    sudo apt-get install g++ build-essential libboost-all-dev libssl-dev

## Building Berkeley DB 4.8 (missed at Debian 7)

    wget http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz
    tar xzvf db-4.8.30.NC.tar.gz
    cd db-4.8.30.NC/build_unix/
    ../dist/configure --enable-cxx
    make
    sudo make install
    sudo ln -s /usr/local/BerkeleyDB.4.8 /usr/include/db4.8
    sudo ln -s /usr/include/db4.8/include/* /usr/include
    sudo ln -s /usr/include/db4.8/lib/* /usr/lib

## Building the daemon

    git clone https://github.com/neurocoin/neurocoin
    cd neurocoin/src
    make -f makefile.unix USE_UPNP=-

## Verifying the daemon

    ./neurocoind --help
