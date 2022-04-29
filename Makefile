all: server browser

server: server.c net_util.h net_util.c
	@mkdir -p sessions
	gcc -std=c11 server.c net_util.c -o server -pthread -w

browser: browser.c net_util.h net_util.c
	gcc -std=c11 browser.c net_util.c -o browser -pthread -w

clean:
	rm -f *.o server browser *.cookie
