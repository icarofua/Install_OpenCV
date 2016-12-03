# Install_OpenCV

Shell scripts to install OpenCV with OpenCV-contrib.

First, you need to set running permission.
```
$ chmod +x *
```

After, you can run the dependencies installer by the command below.
```
$ ./dependencies.sh
```

After, you can edit the cmake options in install_opencv.sh if necessary. Finally, you can run the command below.
```
$ ./install_opencv.sh
```

This command installs OpenCV 3.0.0, if you prefer can install the git version using the command below.
```
$ ./install_opencv_git.sh
```

Or you can build a docker image with opencv 2.4.13 using:
```
$ docker build -t icarofua/opencv_2.4.13 -f Dockerfile_2.4.13 .
```

Or you can build a docker image with opencv 3.0 using:
```
$ docker build -t icarofua/opencv_3.0 -f Dockerfile_3.0 .
```

Or you can build a docker image with opencv 3.1 using:
```
$ docker build -t icarofua/opencv_3.1 -f Dockerfile_3.1 .
```

Or you can pull a docker image with opencv git using:
```
$ docker pull icarofua/opencv_git
```
