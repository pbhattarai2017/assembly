SRC := ./src
OBJ := ./obj
BUILD := ./build
FILE := main

run: $(BUILD)/$(FILE)
	$(BUILD)/$(FILE)

$(BUILD)/$(FILE): $(OBJ)/$(FILE).o
	ld $(OBJ)/$(FILE).o -o $(BUILD)/$(FILE)

$(OBJ)/$(FILE).o: $(SRC)/$(FILE).asm
	nasm -f elf64 $(SRC)/$(FILE).asm -o $(OBJ)/$(FILE).o