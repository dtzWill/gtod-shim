
CXX := g++

all: gtod.so

gtod.o: gtod.cpp
	$(CXX) -fPIC $^ -c -o $@ -Wall -Werror

gtod.so: gtod.o libstdc++.a
	$(CXX) -shared $^ -o $@ 

libstdc++.a:
	ln -s $(shell $(CXX) -print-file-name=libstdc++.a)

clean:
	-rm gtod.o gtod.so libstdc++.a
