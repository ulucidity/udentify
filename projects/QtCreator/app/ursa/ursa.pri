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
#   File: ursa.pri
#
# Author: $author$
#   Date: 5/12/2022
#
# generic QtCreator project .pri file for framework udentify executable ursa
########################################################################

########################################################################
# ursa

# ursa TARGET
#
ursa_TARGET = ursa

# ursa INCLUDEPATH
#
ursa_INCLUDEPATH += \
$${udentify_INCLUDEPATH} \

# ursa DEFINES
#
ursa_DEFINES += \
$${udentify_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# ursa OBJECTIVE_HEADERS
#
#ursa_OBJECTIVE_HEADERS += \
#$${UDENTIFY_SRC}/xos/app/console/crypto/rsa/client/main.hh \

# ursa OBJECTIVE_SOURCES
#
#ursa_OBJECTIVE_SOURCES += \
#$${UDENTIFY_SRC}/xos/app/console/crypto/rsa/client/main.mm \

########################################################################
# ursa HEADERS
#
ursa_HEADERS += \
$${UCIFRA_SRC}/xos/crypto/random/prime/small_primes.hpp \
\
$${UDENTIFY_SRC}/xos/app/console/crypto/rsa/client/main_opt.hpp \
$${UDENTIFY_SRC}/xos/app/console/crypto/rsa/client/main.hpp \

# ursa SOURCES
#
ursa_SOURCES += \
$${UCIFRA_SRC}/xos/crypto/random/prime/small_primes.cpp \
\
$${UDENTIFY_SRC}/xos/app/console/crypto/rsa/client/main_opt.cpp \
$${UDENTIFY_SRC}/xos/app/console/crypto/rsa/client/main.cpp \

########################################################################
# ursa FRAMEWORKS
#
ursa_FRAMEWORKS += \
$${udentify_FRAMEWORKS} \

# ursa LIBS
#
ursa_LIBS += \
$${udentify_rsa_LIBS} \

########################################################################
# NO Qt
QT -= gui core

