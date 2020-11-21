#start command 'all'
start: compile link run

#compile all cpp files to object code
compile:
	g++ -I "./include" -c -Wall ./src/ogrenci.cpp -o ./build/ogrenci.o
	g++ -I "./include" -c -Wall ./src/main.cpp -o ./build/main.o

#link all object codes to executable project(s). Use 'g++ ./build/*o -o ./bin/project' to link all object one startup
link:
	g++ ./build/ogrenci.o ./build/main.o -o ./build/libbgi.a ./bin/project

#run project
run:
	./bin/project

#remove all objects and executable files
remove:
	rm -rf ./build/*o ./bin/*

