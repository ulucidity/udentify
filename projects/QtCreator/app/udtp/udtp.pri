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
#   File: udtp.pri
#
# Author: $author$
#   Date: 6/21/2022, 7/11/2022
#
# generic QtCreator project .pri file for framework udentify executable udtp
########################################################################

########################################################################
# udtp

# udtp TARGET
#
udtp_TARGET = udtp

# udtp INCLUDEPATH
#
udtp_INCLUDEPATH += \
$${udentify_INCLUDEPATH} \

# udtp DEFINES
#
udtp_DEFINES += \
$${udentify_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# udtp OBJECTIVE_HEADERS
#
#udtp_OBJECTIVE_HEADERS += \
#$${UDENTIFY_SRC}/xos/app/console/protocol/udtp/main.hh \

# udtp OBJECTIVE_SOURCES
#
#udtp_OBJECTIVE_SOURCES += \
#$${UDENTIFY_SRC}/xos/app/console/protocol/udtp/main.mm \

########################################################################
# udtp HEADERS
#
udtp_HEADERS += \
$${UDENTIFY_SRC}/xos/app/console/protocol/udtp/client/main_opt.hpp \
$${UDENTIFY_SRC}/xos/app/console/protocol/udtp/client/main.hpp \

# udtp SOURCES
#
udtp_SOURCES += \
$${UDENTIFY_SRC}/xos/app/console/protocol/udtp/client/main_opt.cpp \
$${UDENTIFY_SRC}/xos/app/console/protocol/udtp/client/main.cpp \

########################################################################
# udtp FRAMEWORKS
#
udtp_FRAMEWORKS += \
$${udentify_rsa_FRAMEWORKS} \

# udtp LIBS
#
udtp_LIBS += \
$${udentify_rsa_LIBS} \

########################################################################
# NO Qt
QT -= gui core

