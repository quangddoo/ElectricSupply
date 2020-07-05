ALL: equipInfo systemInfo writeLogProcess server client
equipInfo : equipInfo.o
	gcc -o equipInfo equipInfo.o
systemInfo : systemInfo.o
	gcc -o systemInfo systemInfo.o
writeLogProcess : writeLogProcess.o
	gcc -o writeLogProcess writeLogProcess.o
server : server.o
	gcc -o server server.o
client : client.o
	gcc -o client client.o
equipInfo.o : equipInfo.c
	gcc -c equipInfo.c
systemInfo.o : systemInfo.c
	gcc -c systemInfo.c
writeLogProcess.o : writeLogProcess.c
	gcc -c writeLogProcess.c
server.o : server.c
	gcc -c server.c
client.o : client.c
	gcc -c client.c

log:
	./equipInfo
	./systemInfo
	./writeLogProcess

s:
	./server

clean:
	rm -f *.o equipInfo systemInfo writeLogProcess server client log.txt logAC.txt logPC.txt logTV.txt
