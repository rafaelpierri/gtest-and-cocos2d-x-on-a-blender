gtest-and-cocos2d-x-on-a-blender
================================

This script modifies a default cocos2d-x v3.0 project and includes GoogleTest v1.7.0 features and some code examples.

#How to use this?

Make sure you have cocos console and wget installed, then:

$ cocos new MyGame -l cpp
$ cd MyGame
$ wget https://raw.githubusercontent.com/rafaelpierri/gtest-and-cocos2d-x-on-a-blender/master/gtestOnCocos2d.sh
$ ./gtestOnCocos2d.sh

Choose your perferred build directory:

$ mkdir linux-build
$ cd linux-build

Run cmake including the Unit testing option:

$ cmake -Dtest=ON ..

Now build'n'run:

$ make
$ make test

Based on https://github.com/dmonopoly/gtest-cmake-example, check out his work about gtest. Very helpful.
