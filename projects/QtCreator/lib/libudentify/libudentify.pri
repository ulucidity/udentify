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
#   File: libudentify.pri
#
# Author: $author$
#   Date: 4/3/2022, 5/11/2022
#
# generic QtCreator project .pri file for framework udentify static library libudentify
########################################################################

########################################################################
# libudentify
XOS_LIB_UDENTIFY_VERSION_BUILD_DATE = 5/11/2022 #$$system(~/bin/utility/tdate)

# libudentify TARGET
#
libudentify_TARGET = udentify
libudentify_TEMPLATE = lib
libudentify_CONFIG += staticlib

# libudentify INCLUDEPATH
#
libudentify_INCLUDEPATH += \
$${udentify_INCLUDEPATH} \

# libudentify DEFINES
#
libudentify_DEFINES += \
$${udentify_DEFINES} \
DEFAULT_LOGGING_LEVELS_ERROR \
XOS_LIB_UDENTIFY_VERSION_BUILD_DATE=$${XOS_LIB_UDENTIFY_VERSION_BUILD_DATE} \

########################################################################
# libudentify OBJECTIVE_HEADERS
#
#libudentify_OBJECTIVE_HEADERS += \
#$${UDENTIFY_SRC}/xos/lib/udentify/version.hh \

# libudentify OBJECTIVE_SOURCES
#
#libudentify_OBJECTIVE_SOURCES += \
#$${UDENTIFY_SRC}/xos/lib/udentify/version.mm \

########################################################################
# libudentify HEADERS
#
libudentify_HEADERS += \
$${UDENTIFY_SRC}/xos/lib/udentify/version.hpp \

# libudentify SOURCES
#
libudentify_SOURCES += \
$${UDENTIFY_SRC}/xos/lib/udentify/version.cpp \

########################################################################

