INCLUDE=$(shell pg_config --includedir-server)
INSTALLDIR=$(shell pg_config --pkglibdir)
LIBRARY=-lfuzzy

all: ssdeep_psql.so

ssdeep_psql.o: ssdeep_psql.c
	g++ -fPIC -c ssdeep_psql.c -I$(INCLUDE)

ssdeep_psql.so: ssdeep_psql.o
	gcc -shared -Wl,--no-as-needed -lfuzzy -o ssdeep_psql.so ssdeep_psql.o

install: ssdeep_psql.so
	install -g root -o root ssdeep_psql.so $(INSTALLDIR)/ssdeep_psql.so

.phony: clean
clean:
	rm -f ssdeep_psql.so ssdeep_psql.o