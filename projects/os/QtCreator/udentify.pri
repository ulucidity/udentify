########################################################################
# Copyright (c) 1988-2022 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: udentify.pri
#
# Author: $author$
#   Date: 4/3/2022, 6/20/2022
#
# os specific QtCreator project .pri file for framework udentify
########################################################################
# Repository Depends: vmachinae
# Depends: ubn;ump;urostra;unadir;ufila;ucrono;ucifra;urete;ustara;utls;udentity

UNAME = $$system(uname)

contains(UNAME,Darwin) {
UDENTIFY_OS = macosx
} else {
contains(UNAME,Linux) {
UDENTIFY_OS = linux
} else {
UDENTIFY_OS = windows
} # contains(UNAME,Linux)
} # contains(UNAME,Darwin)

contains(BUILD_OS,UDENTIFY_OS) {
UDENTIFY_BUILD = $${UDENTIFY_OS}
} else {
UDENTIFY_BUILD = $${BUILD_OS}
} # contains(BUILD_OS,UDENTIFY_OS)

contains(BUILD_CPP_VERSION,10) {
CONFIG += c++0x
} else {
contains(BUILD_CPP_VERSION,98|03|11|14|17) {
CONFIG += c++$${BUILD_CPP_VERSION}
} else {
} # contains(BUILD_CPP_VERSION,98|03|11|14|17)
} # contains(BUILD_CPP_VERSION,10)

contains(UDENTIFY_OS,macosx) {
} else {
contains(UDENTIFY_OS,linux) {
QMAKE_CXXFLAGS += -fpermissive
} else {
contains(UDENTIFY_OS,windows) {
} else {
} # contains(UDENTIFY_OS,windows)
} # contains(UDENTIFY_OS,linux)
} # contains(UDENTIFY_OS,macosx)

########################################################################
# urostra
UROSTRA_THIRDPARTY_PKG_MAKE_BLD = $${UROSTRA_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UROSTRA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UROSTRA_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UROSTRA_THIRDPARTY_PKG_BLD = $${UROSTRA_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UROSTRA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UROSTRA_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UROSTRA_PKG_BLD = $${OTHER_BLD}/$${UROSTRA_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UROSTRA_PRJ_BLD = $${OTHER_BLD}/$${UROSTRA_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PKG_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_THIRDPARTY_PRJ_BLD}/lib
UROSTRA_LIB = $${UROSTRA_PKG_BLD}/lib
#UROSTRA_LIB = $${UROSTRA_PRJ_BLD}/lib
#UROSTRA_LIB = $${UDENTIFY_LIB}
UROSTRA_LIB_NAME = $${UROSTRA_NAME}

# urostra LIBS
#
urostra_LIBS += \
-L$${UROSTRA_LIB}/lib$${UROSTRA_LIB_NAME} \
-l$${UROSTRA_LIB_NAME} \


########################################################################
# unadir
UNADIR_THIRDPARTY_PKG_MAKE_BLD = $${UNADIR_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UNADIR_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UNADIR_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UNADIR_THIRDPARTY_PKG_BLD = $${UNADIR_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UNADIR_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UNADIR_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UNADIR_PKG_BLD = $${OTHER_BLD}/$${UNADIR_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UNADIR_PRJ_BLD = $${OTHER_BLD}/$${UNADIR_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#UNADIR_LIB = $${UNADIR_THIRDPARTY_PKG_MAKE_BLD}/lib
#UNADIR_LIB = $${UNADIR_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UNADIR_LIB = $${UNADIR_THIRDPARTY_PKG_BLD}/lib
#UNADIR_LIB = $${UNADIR_THIRDPARTY_PRJ_BLD}/lib
UNADIR_LIB = $${UNADIR_PKG_BLD}/lib
#UNADIR_LIB = $${UNADIR_PRJ_BLD}/lib
#UNADIR_LIB = $${UDENTIFY_LIB}
UNADIR_LIB_NAME = $${UNADIR_NAME}

# unadir LIBS
#
unadir_LIBS += \
-L$${UNADIR_LIB}/lib$${UNADIR_LIB_NAME} \
-l$${UNADIR_LIB_NAME} \


########################################################################
# ufila
UFILA_THIRDPARTY_PKG_MAKE_BLD = $${UFILA_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UFILA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UFILA_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UFILA_THIRDPARTY_PKG_BLD = $${UFILA_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UFILA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UFILA_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UFILA_PKG_BLD = $${OTHER_BLD}/$${UFILA_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UFILA_PRJ_BLD = $${OTHER_BLD}/$${UFILA_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#UFILA_LIB = $${UFILA_THIRDPARTY_PKG_MAKE_BLD}/lib
#UFILA_LIB = $${UFILA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UFILA_LIB = $${UFILA_THIRDPARTY_PKG_BLD}/lib
#UFILA_LIB = $${UFILA_THIRDPARTY_PRJ_BLD}/lib
UFILA_LIB = $${UFILA_PKG_BLD}/lib
#UFILA_LIB = $${UFILA_PRJ_BLD}/lib
#UFILA_LIB = $${UDENTIFY_LIB}
UFILA_LIB_NAME = $${UFILA_NAME}

# ufila LIBS
#
ufila_LIBS += \
-L$${UFILA_LIB}/lib$${UFILA_LIB_NAME} \
-l$${UFILA_LIB_NAME} \


########################################################################
# ucrono
UCRONO_THIRDPARTY_PKG_MAKE_BLD = $${UCRONO_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UCRONO_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UCRONO_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UCRONO_THIRDPARTY_PKG_BLD = $${UCRONO_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UCRONO_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UCRONO_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UCRONO_PKG_BLD = $${OTHER_BLD}/$${UCRONO_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UCRONO_PRJ_BLD = $${OTHER_BLD}/$${UCRONO_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PKG_MAKE_BLD}/lib
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PKG_BLD}/lib
#UCRONO_LIB = $${UCRONO_THIRDPARTY_PRJ_BLD}/lib
UCRONO_LIB = $${UCRONO_PKG_BLD}/lib
#UCRONO_LIB = $${UCRONO_PRJ_BLD}/lib
#UCRONO_LIB = $${UDENTIFY_LIB}
UCRONO_LIB_NAME = $${UCRONO_NAME}

# ucrono LIBS
#
ucrono_LIBS += \
-L$${UCRONO_LIB}/lib$${UCRONO_LIB_NAME} \
-l$${UCRONO_LIB_NAME} \


########################################################################
# ucifra
UCIFRA_THIRDPARTY_PKG_MAKE_BLD = $${UCIFRA_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UCIFRA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UCIFRA_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UCIFRA_THIRDPARTY_PKG_BLD = $${UCIFRA_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UCIFRA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UCIFRA_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UCIFRA_PKG_BLD = $${OTHER_BLD}/$${UCIFRA_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UCIFRA_PRJ_BLD = $${OTHER_BLD}/$${UCIFRA_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#UCIFRA_LIB = $${UCIFRA_THIRDPARTY_PKG_MAKE_BLD}/lib
#UCIFRA_LIB = $${UCIFRA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UCIFRA_LIB = $${UCIFRA_THIRDPARTY_PKG_BLD}/lib
#UCIFRA_LIB = $${UCIFRA_THIRDPARTY_PRJ_BLD}/lib
UCIFRA_LIB = $${UCIFRA_PKG_BLD}/lib
#UCIFRA_LIB = $${UCIFRA_PRJ_BLD}/lib
#UCIFRA_LIB = $${UDENTIFY_LIB}
UCIFRA_LIB_NAME = $${UCIFRA_NAME}

# ucifra LIBS
#
ucifra_LIBS += \
-L$${UCIFRA_LIB}/lib$${UCIFRA_LIB_NAME} \
-l$${UCIFRA_LIB_NAME} \


########################################################################
# ubn
UBN_THIRDPARTY_PKG_MAKE_BLD = $${UBN_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UBN_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UBN_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UBN_THIRDPARTY_PKG_BLD = $${UBN_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UBN_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UBN_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UBN_PKG_BLD = $${OTHER_BLD}/$${UBN_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UBN_PRJ_BLD = $${OTHER_BLD}/$${UBN_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#UBN_LIB = $${UBN_THIRDPARTY_PKG_MAKE_BLD}/lib
#UBN_LIB = $${UBN_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UBN_LIB = $${UBN_THIRDPARTY_PKG_BLD}/lib
#UBN_LIB = $${UBN_THIRDPARTY_PRJ_BLD}/lib
#UBN_LIB = $${UBN_PKG_BLD}/lib
#UBN_LIB = $${UBN_PRJ_BLD}/lib
#UBN_LIB = $${UDENTIFY_LIB}
#UBN_LIB_NAME = $${UBN_NAME}
UBN_LIB = $${UCIFRA_LIB}

# ubn LIBS
#
ubn_LIBS += \
-L$${UBN_LIB}/lib$${UBN_LIB_NAME} \
-l$${UBN_LIB_NAME} \


########################################################################
# ump
UMP_THIRDPARTY_PKG_MAKE_BLD = $${UMP_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UMP_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UMP_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UMP_THIRDPARTY_PKG_BLD = $${UMP_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UMP_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UMP_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UMP_PKG_BLD = $${OTHER_BLD}/$${UMP_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UMP_PRJ_BLD = $${OTHER_BLD}/$${UMP_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#UMP_LIB = $${UMP_THIRDPARTY_PKG_MAKE_BLD}/lib
#UMP_LIB = $${UMP_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UMP_LIB = $${UMP_THIRDPARTY_PKG_BLD}/lib
#UMP_LIB = $${UMP_THIRDPARTY_PRJ_BLD}/lib
#UMP_LIB = $${UMP_PKG_BLD}/lib
#UMP_LIB = $${UMP_PRJ_BLD}/lib
#UMP_LIB = $${UDENTIFY_LIB}
#UMP_LIB_NAME = $${UMP_NAME}
UMP_LIB = $${UCIFRA_LIB}

# ump LIBS
#
ump_LIBS += \
-L$${UMP_LIB}/lib$${UMP_LIB_NAME}z \
-l$${UMP_LIB_NAME}z \
-L$${UMP_LIB}/lib$${UMP_LIB_NAME}n \
-l$${UMP_LIB_NAME}n \
-L$${UMP_LIB}/lib$${UMP_LIB_NAME} \
-l$${UMP_LIB_NAME} \


########################################################################
# urete
URETE_THIRDPARTY_PKG_MAKE_BLD = $${URETE_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
URETE_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${URETE_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
URETE_THIRDPARTY_PKG_BLD = $${URETE_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
URETE_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${URETE_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
URETE_PKG_BLD = $${OTHER_BLD}/$${URETE_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
URETE_PRJ_BLD = $${OTHER_BLD}/$${URETE_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#URETE_LIB = $${URETE_THIRDPARTY_PKG_MAKE_BLD}/lib
#URETE_LIB = $${URETE_THIRDPARTY_PRJ_MAKE_BLD}/lib
#URETE_LIB = $${URETE_THIRDPARTY_PKG_BLD}/lib
#URETE_LIB = $${URETE_THIRDPARTY_PRJ_BLD}/lib
URETE_LIB = $${URETE_PKG_BLD}/lib
#URETE_LIB = $${URETE_PRJ_BLD}/lib
#URETE_LIB = $${UDENTIFY_LIB}
URETE_LIB_NAME = $${URETE_NAME}

# urete LIBS
#
urete_LIBS += \
-L$${URETE_LIB}/lib$${URETE_LIB_NAME} \
-l$${URETE_LIB_NAME} \


########################################################################
# ustara
USTARA_THIRDPARTY_PKG_MAKE_BLD = $${USTARA_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
USTARA_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${USTARA_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
USTARA_THIRDPARTY_PKG_BLD = $${USTARA_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
USTARA_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${USTARA_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
USTARA_PKG_BLD = $${OTHER_BLD}/$${USTARA_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
USTARA_PRJ_BLD = $${OTHER_BLD}/$${USTARA_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#USTARA_LIB = $${USTARA_THIRDPARTY_PKG_MAKE_BLD}/lib
#USTARA_LIB = $${USTARA_THIRDPARTY_PRJ_MAKE_BLD}/lib
#USTARA_LIB = $${USTARA_THIRDPARTY_PKG_BLD}/lib
#USTARA_LIB = $${USTARA_THIRDPARTY_PRJ_BLD}/lib
USTARA_LIB = $${USTARA_PKG_BLD}/lib
#USTARA_LIB = $${USTARA_PRJ_BLD}/lib
#USTARA_LIB = $${UDENTIFY_LIB}
USTARA_LIB_NAME = $${USTARA_NAME}

# ustara LIBS
#
ustara_LIBS += \
-L$${USTARA_LIB}/lib$${USTARA_LIB_NAME} \
-l$${USTARA_LIB_NAME} \


########################################################################
# utls
UTLS_THIRDPARTY_PKG_MAKE_BLD = $${UTLS_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UTLS_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UTLS_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UTLS_THIRDPARTY_PKG_BLD = $${UTLS_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UTLS_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UTLS_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UTLS_PKG_BLD = $${OTHER_BLD}/$${UTLS_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UTLS_PRJ_BLD = $${OTHER_BLD}/$${UTLS_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#UTLS_LIB = $${UTLS_THIRDPARTY_PKG_MAKE_BLD}/lib
#UTLS_LIB = $${UTLS_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UTLS_LIB = $${UTLS_THIRDPARTY_PKG_BLD}/lib
#UTLS_LIB = $${UTLS_THIRDPARTY_PRJ_BLD}/lib
UTLS_LIB = $${UTLS_PKG_BLD}/lib
#UTLS_LIB = $${UTLS_PRJ_BLD}/lib
#UTLS_LIB = $${UDENTIFY_LIB}
UTLS_LIB_NAME = $${UTLS_NAME}

# utls LIBS
#
utls_LIBS += \
-L$${UTLS_LIB}/lib$${UTLS_LIB_NAME} \
-l$${UTLS_LIB_NAME} \


########################################################################
# udentity
UDENTITY_THIRDPARTY_PKG_MAKE_BLD = $${UDENTITY_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UDENTITY_THIRDPARTY_PRJ_MAKE_BLD = $${OTHER_BLD}/$${UDENTITY_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/$${BUILD_CONFIG}
UDENTITY_THIRDPARTY_PKG_BLD = $${UDENTITY_THIRDPARTY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UDENTITY_THIRDPARTY_PRJ_BLD = $${OTHER_BLD}/$${UDENTITY_THIRDPARTY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UDENTITY_PKG_BLD = $${OTHER_BLD}/$${UDENTITY_PKG}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
UDENTITY_PRJ_BLD = $${OTHER_BLD}/$${UDENTITY_PRJ}/build/$${UDENTIFY_BUILD}/QtCreator/$${BUILD_CONFIG}
#UDENTITY_LIB = $${UDENTITY_THIRDPARTY_PKG_MAKE_BLD}/lib
#UDENTITY_LIB = $${UDENTITY_THIRDPARTY_PRJ_MAKE_BLD}/lib
#UDENTITY_LIB = $${UDENTITY_THIRDPARTY_PKG_BLD}/lib
#UDENTITY_LIB = $${UDENTITY_THIRDPARTY_PRJ_BLD}/lib
UDENTITY_LIB = $${UDENTITY_PKG_BLD}/lib
#UDENTITY_LIB = $${UDENTITY_PRJ_BLD}/lib
#UDENTITY_LIB = $${UDENTIFY_LIB}
UDENTITY_LIB_NAME = $${UDENTITY_NAME}

# udentity LIBS
#
udentity_LIBS += \
-L$${UDENTITY_LIB}/lib$${UDENTITY_LIB_NAME} \
-l$${UDENTITY_LIB_NAME} \

########################################################################
# udentify

# udentify INCLUDEPATH
#
udentify_INCLUDEPATH += \

# udentify DEFINES
#
udentify_DEFINES += \

# udentify LIBS
#
contains(UDENTIFY_OS,macosx|linux) {
udentify_os_LIBS += \
-lpthread \
-ldl
} else {
} # contains(UDENTIFY_OS,macosx|linux)

contains(UDENTIFY_OS,linux) {
udentify_os_LIBS += \
-lrt
} else {
} # contains(UDENTIFY_OS,linux)

udentify_base_LIBS += \
$${udentity_LIBS} \
$${utls_LIBS} \
$${ustara_LIBS} \
$${urete_LIBS} \
$${ucifra_LIBS} \
$${ucrono_LIBS} \
$${ufila_LIBS} \
$${unadir_LIBS} \
$${urostra_LIBS} \

udentify_LIBS += \
$${udentify_base_LIBS} \
$${build_udentify_LIBS} \
$${udentify_os_LIBS} \

udentify_rsa_LIBS += \
$${udentify_base_LIBS} \
$${ump_LIBS} \
$${ubn_LIBS} \
$${build_udentify_LIBS} \
$${udentify_os_LIBS} \

