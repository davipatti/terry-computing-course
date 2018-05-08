# `data` and `clean` are TARGETS

data:
	@echo Making data...
	yes | head -n 100000 | split

clean:
	rm -f *.{wc,orig,new} junk/x?? LINE-COUNT-SUMMARY x??

# Here data is a dependency
all: data
	@echo Copying...
	./copy.sh x??
	@echo Counting lines...
	./count-lines.sh x??
	@echo Makeing new file names...
	./new-names.sh x??.wc
