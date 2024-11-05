FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"
PACKAGECONFIG:append = " host-gpio"

RDEPENDS:${PN}:append = " bash"

SRC_URI:append:ventura = " \
    file://chassis-powercycle \
    file://chassis-powercycle@.service \
    "

do_install:append:ventura() {
    install -d ${D}${systemd_system_unitdir}
    install -m 0644 ${WORKDIR}/*.service ${D}${systemd_system_unitdir}/

    install -d ${D}${libexecdir}/${PN}
    install -m 0755 ${WORKDIR}/chassis-powercycle ${D}${libexecdir}/${PN}/
}
