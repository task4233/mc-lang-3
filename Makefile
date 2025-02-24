CXX = clang++-8
CXXFLAGS = `llvm-config-8 --cxxflags --ldflags --system-libs --libs all`

.PHONY: mc

mc: src/mc.cpp
	$(CXX) $(CXXFLAGS) src/mc.cpp -o mc
clean:
	rm mc output.o

build: output.o
	$(CXX) main.cpp ./output.o -o ./main
	./main

test: output.o
	$(CXX) test.cpp ./output.o -o ./tst
	./tst
