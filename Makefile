CC ?= gcc

CFILES=NfcFactoryTestApp.c

CFILES_DRV= tml_drv.c
CFILES_I2C= tml_alt-i2c.c
CFILES_SPI= tml_alt-spi.c

INCLUDES= -I/usr/include/ -I./

LIBS=

CFLAGS=-Wall $(INCLUDES)

drv:
ifeq ("$(DEBUG)","ON")
	$(CC) -o NfcFactoryTestApp $(CFLAGS) -DDEBUG $(CFILES) $(CFILES_DRV) $(LIBS) $(LDFLAGS)
else
	$(CC) -o NfcFactoryTestApp $(CFLAGS) $(CFILES) $(CFILES_DRV) $(LIBS) $(LDFLAGS)
endif

alt-i2c:
ifeq ("$(DEBUG)","ON")
	$(CC) -o NfcFactoryTestApp $(CFLAGS) -DDEBUG $(CFILES) $(CFILES_I2C) $(LIBS) $(LDFLAGS)
else
	$(CC) -o NfcFactoryTestApp $(CFLAGS) $(CFILES) $(CFILES_I2C) $(LIBS) $(LDFLAGS)
endif

alt-spi:
ifeq ("$(DEBUG)","ON")
	$(CC) -o NfcFactoryTestApp $(CFLAGS) -DDEBUG $(CFILES) $(CFILES_SPI) $(LIBS) $(LDFLAGS)
else
	$(CC) -o NfcFactoryTestApp $(CFLAGS) $(CFILES) $(CFILES_SPI) $(LIBS) $(LDFLAGS)
endif

clean:
	rm NfcFactoryTestApp

install:
	cp NfcFactoryTestApp /usr/local/bin/
