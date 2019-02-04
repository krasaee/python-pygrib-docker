mkdir -p /src/eccodes/build
cd /src/eccodes/build
cmake ../ -DCMAKE_INSTALL_PREFIX=/usr -DENABLE_FORTRAN=OFF -DENABLE_NETCDF=OFF
make
make install
