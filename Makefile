.DEFAULT_GOAL := linux

linux: clean
	sh ./bin/linux.sh
clean:
	sh ./bin/cleanup.sh

	chmod 700 ./bin/linux.sh
	chmod 700 ./bin/cleanup.sh
