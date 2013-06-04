OUT_DIR=tmp
OUT_FILE=$(OUT_DIR)/hello.txt
TEXT_INSIDE="Hello" 

clean:
	rm -rf $(OUT_DIR)

install:
	[ -d $(OUT_DIR) ] && echo "Directory 'tmp' is already exists"  || mkdir $(OUT_DIR)

create: install
	[ -e $(OUT_FILE) ] && echo "File 'hello.txt' is already exists!" || touch $(OUT_FILE) 

hello: create
	echo $(TEXT_INSIDE) >> $(OUT_FILE)