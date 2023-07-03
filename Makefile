.PHONY: help server client demo proto freeze

dauern = 10

help:
	@echo "make server"
	@echo "make client"
	@echo "make demo"
	@echo "make proto"
	@echo "make freeze"

server:
	source venv/bin/activate && python server.py

client:
	source venv/bin/activate && python client.py

demo:
	source venv/bin/activate && timeout $(dauern) python server.py &
	@echo "Server started in background with PID $$! - running for $(dauern) seconds"
	@echo "make client"

proto:
	python -m grpc_tools.protoc -I. --python_out=. --grpc_python_out=. helloworld.proto

freeze:
	source venv/bin/activate && pip freeze > requirements.txt
