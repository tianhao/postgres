configure  --prefix=$PWD --enable-depend --enable-cassert --enable-debug
make
make install
bin/initdb -D $HOME/apps/postgres-dev-9.6
cat > CMakeLists.txt <<EOF
cmake_minimum_required(VERSION 3.8)
project(postgres)

project(postgres)


set(CMAKE_CXX_FLAGS "\${CMAKE_CXX_FLAGS} -std=c++11")

add_custom_target(postgres COMMAND make -C \${postgres_SOURCE_DIR})
EOF