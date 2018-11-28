lint:
	./lint.sh

prettify:
	./prettify.sh

CPPFLAGS += -Wall -Wextra -Werror -O1

tsudo-connect: tsudo-connect.cpp
	$(CC) $(CPPFLAGS) tsudo-connect.cpp -fPIC -o tsudo-connect

install: libtsudo-connect.so
	install libtsudo-connect.so $(PREFIX)/bin/tsudo-connect

uninstall:
	rm -f $(PREFIX)/bin/tsudo-connect
 

clean:
	rm -f tsudo-connect

.PHONY: all lint prettify clean install  uninstall