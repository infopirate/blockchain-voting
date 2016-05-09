make clean
make all
g++ -I/usr/local/include -pthread -std=c++11 -c server.cpp server.hpp
g++ -I/usr/local/include -pthread -std=c++11 -c processor.cpp processor.hpp
g++ -I/usr/local/include -pthread -std=c++11 -c encoding_helpers.cpp encoding_helpers.hpp
g++ -I/usr/local/include -pthread -std=c++11 -c peer.cpp peer.hpp
# g++ -I/usr/local/include -pthread -std=c++11 -c server.cpp server.hpp
g++ -I/usr/local/include -pthread -std=c++11 -c client.cpp client.hpp
g++ -I/usr/local/include -pthread -std=c++11 -c voting-booth.cpp voting-booth.hpp
g++ -o voting-booth -L/usr/local/lib `pkg-config --libs grpc++` -lpthread -ldl -lssl -lcrypto voting-booth.o client.o server.o processor.o encoding_helpers.o node.pb.o node.grpc.pb.o -lprotobuf