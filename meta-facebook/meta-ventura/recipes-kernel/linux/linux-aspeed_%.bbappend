FILESEXTRAPATHS:prepend := "${THISDIR}/linux-aspeed:"

SRC_URI += " \
    file://ventura.cfg \
    file://aspeed-bmc-facebook-ventura.dts \    
"

do_configure:append(){
    cp ${WORKDIR}/aspeed-bmc-facebook-ventura.dts ${S}/arch/arm/boot/dts/aspeed
    echo "dtb-\$(CONFIG_ARCH_ASPEED) += aspeed-bmc-facebook-ventura.dtb" >> ${S}/arch/arm/boot/dts/aspeed/Makefile
}
