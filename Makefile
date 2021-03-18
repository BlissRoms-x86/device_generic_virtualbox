all:
	cd ../../..; \
	make showcommands 2>&1 -j8     | tee build_log.c; \
	make initrd USE_SQUASHFS=0 -j8 | tee initrd_log.c

initrd:
	cd ../../..; \
	make initrd USE_SQUASHFS=0 -j8 | tee initrd_log.c
