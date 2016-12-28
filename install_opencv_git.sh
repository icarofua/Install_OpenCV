if [ -d opencv ]; then
	cd opencv
	git pull
	cd ..
else
	git clone https://github.com/Itseez/opencv.git
fi

if [ -d opencv_contrib ]; then
	cd opencv_contrib
	git pull
	cd ..
else
	git clone https://github.com/Itseez/opencv_contrib.git
fi

_cmakeopts=('-D CMAKE_BUILD_TYPE=Release'
            '-D CMAKE_INSTALL_PREFIX=/usr'
            '-D PYTHON_EXECUTABLE=/usr/bin/python'
            '-D CMAKE_SKIP_RPATH=ON'
            '-D BUILD_TESTS=OFF'
            '-D ENABLE_SSE=ON'
            '-D ENABLE_SSE2=ON'
            '-D ENABLE_SSE3=ON'
            '-D ENABLE_SSSE3=ON'
            '-D ENABLE_SSE41=ON'
            '-D ENABLE_SSE42=ON'
            '-D BUILD_EXAMPLES=OFF'
            '-D INSTALL_C_EXAMPLES=OFF'
            '-D INSTALL_PYTHON_EXAMPLES=OFF'
            '-D WITH_XINE=OFF'
            '-D WITH_QT=OFF'
            '-D WITH_QT_OPENGL=OFF'
            '-D WITH_UNICAP=OFF'
            '-D WITH_PVAPI=OFF'
            '-D WITH_OPENNI=ON'
            '-D WITH_TBB=OFF'
            '-D WITH_IPP=OFF'
            '-D WITH_CUDA=OFF'
	    '-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules'
            '-D USE_FAST_MATH=ON')

cd opencv
if [ ! -d "build" ]; then
	mkdir build
fi
cd build
cmake ${_cmakeopts[@]} ..
make
sudo make install
