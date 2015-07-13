# Compiler and archive tool
JAVAC := javac
JAR := jar cfm

# Sources and targets
SRC := src
BIN := bin
SOURCEPATH := $(SRC)/main/java
MAIN := $(SOURCEPATH)/wof/gui/WheelOfFortuneFrame.java
MANIFEST := MANIFEST.MF
JARTARGET := wof.jar

# Phony targets
.PHONY: all cleanbin clean

all:
	mkdir -p $(BIN)
	$(JAVAC) -d $(BIN) -sourcepath $(SOURCEPATH) $(MAIN)
	$(JAR) $(JARTARGET) $(MANIFEST) -C $(BIN) . -C $(SRC)/main resources

cleanbin:
	rm -rf $(BIN)

clean:
	rm -rf $(BIN) $(JARTARGET)
