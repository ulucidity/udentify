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
#   File: udttp.pri
#
# Author: $author$
#   Date: 6/2/2022
#
# generic QtCreator project .pri file for framework udentify executable udttp
########################################################################

########################################################################
# udttp

# udttp TARGET
#
udttp_TARGET = udttp

# udttp INCLUDEPATH
#
udttp_INCLUDEPATH += \
$${udentify_INCLUDEPATH} \

# udttp DEFINES
#
udttp_DEFINES += \
$${udentify_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# udttp OBJECTIVE_HEADERS
#
#udttp_OBJECTIVE_HEADERS += \
#$${UDENTIFY_SRC}/xos/app/console/network/sockets/protocol/udttp/client/main.hh \

# udttp OBJECTIVE_SOURCES
#
#udttp_OBJECTIVE_SOURCES += \
#$${UDENTIFY_SRC}/xos/app/console/network/sockets/protocol/udttp/client/main.mm \

########################################################################
# udttp HEADERS
#
udttp_HEADERS += \
$${UDENTIFY_SRC}/xos/app/console/network/sockets/protocol/udttp/client/main_opt.hpp \
$${UDENTIFY_SRC}/xos/app/console/network/sockets/protocol/udttp/client/main.hpp \

# udttp SOURCES
#
udttp_SOURCES += \
$${UDENTIFY_SRC}/xos/app/console/network/sockets/protocol/udttp/client/main_opt.cpp \
$${UDENTIFY_SRC}/xos/app/console/network/sockets/protocol/udttp/client/main.cpp \

########################################################################
# udttp FRAMEWORKS
#
udttp_FRAMEWORKS += \
$${udentify_rsa_FRAMEWORKS} \

# udttp LIBS
#
udttp_LIBS += \
$${udentify_rsa_LIBS} \

########################################################################
# NO Qt
QT -= gui core

