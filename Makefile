CXX = g++
CXXFLAGS = -Wall -Wextra
SDL_CFLAGS = $(shell sdl2-config --cflags)
SDL_LIBS = $(shell sdl2-config --libs)

snake: src/main.cpp
	$(CXX) $(CXXFLAGS) $(SDL_CFLAGS) src/main.cpp -o snake $(SDL_LIBS)

clean:
	rm -f snake

.PHONY: clean