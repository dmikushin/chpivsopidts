.PHONY: deploy

all: sun50i-h6-orangepi-3.dtb

sun50i-h6-orangepi-3.dtb: sun50i-h6-orangepi-3.dts \
	sun50i-h6.dtsi \
	dt-bindings/interrupt-controller/arm-gic.h \
	dt-bindings/interrupt-controller/irq.h \
	dt-bindings/clock/sun50i-h6-ccu.h \
	dt-bindings/clock/sun50i-h6-r-ccu.h \
	dt-bindings/clock/sun8i-de2.h \
	dt-bindings/clock/sun8i-tcon-top.h \
	dt-bindings/reset/sun50i-h6-ccu.h \
	dt-bindings/reset/sun50i-h6-r-ccu.h \
	dt-bindings/reset/sun8i-de2.h \
	dt-bindings/thermal/thermal.h \
	dt-bindings/gpio/gpio.h
	cpp -nostdinc -I. -undef -x assembler-with-cpp $< -o $<.preprocessed && \
	dtc -I dts -O dtb -o $@ -b 0 -i. -f $<.preprocessed -Wno-unit_address_format -Wno-simple_bus_reg -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-simple_bus_reg -Wno-unique_unit_address -Wno-pci_device_reg

deploy: sun50i-h6-orangepi-3.dtb
	adb push $< /boot/dtb-5.4.65-sunxi64/allwinner/$<

clean:
	rm -rf sun50i-h6-orangepi-3.dtb sun50i-h6-orangepi-3.dts.preprocessed

