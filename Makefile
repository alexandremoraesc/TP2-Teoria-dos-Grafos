programa: main.o grafos.o aresta.o menu.o
	g++ main.o grafos.o aresta.o menu.o -o programa
	./programa

main.o: src/main.cpp 
	g++ -c src/main.cpp

grafos.o: src/grafos.cpp src/grafos.h
	g++ -c src/grafos.cpp

aresta.o: src/aresta.cpp src/aresta.h
	g++ -c src/aresta.cpp

menu.o: src/menu.cpp src/menu.h
	g++ -c src/menu.cpp

clean:
	rm *.o
	rm programa