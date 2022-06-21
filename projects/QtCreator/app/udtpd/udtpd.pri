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
#   File: udtpd.pri
#
# Author: $author$
#   Date: 6/21/2022
#
# generic QtCreator project .pri file for framework udentify executable udtpd
########################################################################

########################################################################
# udtpd

# udtpd TARGET
#
udtpd_TARGET = udtpd

# udtpd INCLUDEPATH
#
udtpd_INCLUDEPATH += \
$${udentify_INCLUDEPATH} \

# udtpd DEFINES
#
udtpd_DEFINES += \
$${udentify_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_CONSOLE_MAIN_MAIN \

########################################################################
# udtpd OBJECTIVE_HEADERS
#
#udtpd_OBJECTIVE_HEADERS += \
#$${UDENTIFY_SRC}/xos/app/console/protocol/udtp/main.hh \

# udtpd OBJECTIVE_SOURCES
#
#udtpd_OBJECTIVE_SOURCES += \
#$${UDENTIFY_SRC}/xos/app/console/protocol/udtp/main.mm \

########################################################################
# udtpd HEADERS
#
udtpd_HEADERS += \
$${UDENTIFY_SRC}/xos/protocol/udtp/client/output.hpp \
\
$${UDENTIFY_SRC}/xos/app/console/protocol/udtp/client/main_opt.hpp \
$${UDENTIFY_SRC}/xos/app/console/protocol/udtp/client/main.hpp \
\
$${UDENTITY_SRC}/xos/protocol/udtp/base/output.hpp \
$${UDENTITY_SRC}/xos/protocol/udtp/server/output.hpp \
\
$${UDENTITY_SRC}/xos/app/console/protocol/udtp/base/main_opt.hpp \
$${UDENTITY_SRC}/xos/app/console/protocol/udtp/base/main.hpp \
$${UDENTITY_SRC}/xos/app/console/protocol/udtp/server/main_opt.hpp \
$${UDENTITY_SRC}/xos/app/console/protocol/udtp/server/main.hpp \

# udtpd SOURCES
#
udtpd_SOURCES += \
$${UDENTITY_SRC}/xos/protocol/udtp/server/output.cpp \
\
$${UDENTITY_SRC}/xos/app/console/protocol/udtp/server/main_opt.cpp \
$${UDENTITY_SRC}/xos/app/console/protocol/udtp/server/main.cpp \

########################################################################
# udtpd FRAMEWORKS
#
udtpd_FRAMEWORKS += \
$${udentify_rsa_FRAMEWORKS} \

# udtpd LIBS
#
udtpd_LIBS += \
$${udentify_rsa_LIBS} \

########################################################################
# NO Qt
QT -= gui core

