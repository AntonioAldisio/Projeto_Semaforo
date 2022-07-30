include clientes.env

compServidor:
	g++ servidor.cpp -o server

servidor:
	./server $(PORT_SERVIDOR)

compCliente:
	g++ cliente.cpp -o client

cliente1:
	./client $(HOSTNAME_SEMAFARO_1) $(PORT_SEMAFARO_1)
cliente2:
	./client $(HOSTNAME_SEMAFARO_2) $(PORT_SEMAFARO_2)

compArquivos:
	make compServidor
	make compCliente

