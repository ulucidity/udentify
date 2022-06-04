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
#   File: udttp.pro
#
# Author: $author$
#   Date: 6/2/2022
#
# os specific QtCreator project .pro file for framework udentify executable udttp
########################################################################
#
# Debug: udentify/build/os/QtCreator/Debug/bin/udttp
# Release: udentify/build/os/QtCreator/Release/bin/udttp
# Profile: udentify/build/os/QtCreator/Profile/bin/udttp
#
include(../../../../../build/QtCreator/udentify.pri)
include(../../../../QtCreator/udentify.pri)
include(../../udentify.pri)
include(../../../../QtCreator/app/udttp/udttp.pri)

TARGET = $${udttp_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${udttp_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${udttp_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${udttp_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${udttp_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${udttp_HEADERS} \
$${udttp_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${udttp_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${udttp_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${udttp_LIBS} \
$${FRAMEWORKS} \

########################################################################

