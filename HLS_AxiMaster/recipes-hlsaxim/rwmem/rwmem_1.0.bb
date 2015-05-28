DESCRIPTION = "rwmem"
SECTION = "examples"
LICENSE = "GPL-2"
LIC_FILES_CHKSUM = "file://GPL-2;md5=94d55d512a9ba36caa9b7df079bae19f"

SRC_URI = "file://rwmem.c \
	    file://GPL-2 \
	    "

S = "${WORKDIR}"
 
do_compile() {
    ${CC} ${CFLAGS} ${LDFLAGS} rwmem.c -o rwmem
}
 
do_install() {
    install -d ${D}${bindir}
    install -m 0755 rwmem ${D}${bindir}
}

PACKAGE_ARCH = "${MACHINE_ARCH}"
