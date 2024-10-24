FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " \
    file://00-bmc-eth0.network \
    file://10-vlan10.netdev \
    file://10-vlan10.network \
    file://20-vlan20.netdev \
    file://20-vlan20.network \
"

do_install:append() {
    install -m 0644 \
        ${WORKDIR}/00-bmc-eth0.network \
        ${WORKDIR}/10-vlan10.netdev \
        ${WORKDIR}/10-vlan10.network \
        ${WORKDIR}/20-vlan20.netdev \
        ${WORKDIR}/20-vlan20.network \
        -D -t ${D}${sysconfdir}/systemd/network
}

FILES:${PN}:append = " \
    ${sysconfdir}/systemd/network/00-bmc-eth0.network \
    ${sysconfdir}/systemd/network/10-vlan10.netdev \
    ${sysconfdir}/systemd/network/10-vlan10.network \
    ${sysconfdir}/systemd/network/20-vlan20.netdev \
    ${sysconfdir}/systemd/network/20-vlan20.network \
"
