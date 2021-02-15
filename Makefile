all: sun50i-h6-orangepi-3.dtb

sun50i-h6-orangepi-3.dtb: sun50i-h6-orangepi-3.dts
	./dtc -I dts -O dtb -f sun50i-h6-orangepi-3.dts -o sun50i-h6-orangepi-3.dtb

