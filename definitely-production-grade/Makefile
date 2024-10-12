CC := gcc

all: fizzbuzz

%.o: %.adb
	$(CC) -c $<

%: %.adb %.o
	gnatmake $<
