obj-m := lkm01.o

all:
	make -C ~/newkernel/WSL2-Linux-Kernel-linux-msft-5.4.51 M=$(PWD) modules

clean:
	make -C ~/newkernel/WSL2-Linux-Kernel-linux-msft-5.4.51 M=$(PWD) clean

test:
	sudo dmesg -C
	sudo /sbin/insmod lkm01.ko
	sudo rmmod lkm01.ko
	dmesg
