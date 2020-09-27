NAME ?= channel

build:
	test -f go.mod || go mod init github.com/luanphandinh/gpg
	go build -o ./builds/$(NAME) -v ./$(NAME)
	./builds/$(NAME)
