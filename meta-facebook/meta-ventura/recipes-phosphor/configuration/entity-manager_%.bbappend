FILESEXTRAPATHS:prepend:ventura := "${THISDIR}/${PN}:"

SRC_URI:append:ventura = " \
    file://ventura_rmc.json \
    file://ventura_scm.json \    
"

do_install:append:ventura () {
    install -m 644 ${WORKDIR}/*.json ${D}/usr/share/entity-manager/configurations/
}
