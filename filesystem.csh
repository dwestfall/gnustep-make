#   This file must be sourced inside csh using: source
#
#   filesystem.csh.  Generated from filesystem.csh.in by configure.
#
#   Sets up the GNUstep filesystem paths for shell scripts
#
#   Copyright (C) 2007 Free Software Foundation, Inc.
#
#   Author:  Nicola Pero <nicola.pero@meta-innovation.com>,
#            
#   Date:  February 2007
#
#   This file is part of the GNUstep Makefile Package.
#
#   This library is free software; you can redistribute it and/or
#   modify it under the terms of the GNU General Public License
#   as published by the Free Software Foundation; either version 3
#   of the License, or (at your option) any later version.
#   
#   You should have received a copy of the GNU General Public
#   License along with this library; see the file COPYING.
#   If not, write to the Free Software Foundation,
#   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.

#
# This does the same as filesystem.sh, but for csh.
#

# IMPORTANT: tcsh v6.12 has a maximum variable size of 30 characters.
# So all variables should have names that are below that size.

#
# Location of Users directories ... never used by gnustep-make.
#
if ( ! ${?GNUSTEP_SYSTEM_USERS_DIR} ) then
  setenv GNUSTEP_SYSTEM_USERS_DIR "/home"
endif
if ( ! ${?GNUSTEP_NETWORK_USERS_DIR} ) then
  setenv GNUSTEP_NETWORK_USERS_DIR "/home"
endif
if ( ! ${?GNUSTEP_LOCAL_USERS_DIR} ) then
  setenv GNUSTEP_LOCAL_USERS_DIR "/home"
endif

#
# SYSTEM domain
#
if ( ! ${?GNUSTEP_SYSTEM_APPS} ) then
  setenv GNUSTEP_SYSTEM_APPS "/usr/lib/GNUstep/Applications"
endif
if ( ! ${?GNUSTEP_SYSTEM_ADMIN_APPS} ) then
  setenv GNUSTEP_SYSTEM_ADMIN_APPS "/usr/lib/GNUstep/Applications"
endif
if ( ! ${?GNUSTEP_SYSTEM_WEB_APPS} ) then
  setenv GNUSTEP_SYSTEM_WEB_APPS "/usr/lib/GNUstep/WebApplications"
endif
if ( ! ${?GNUSTEP_SYSTEM_TOOLS} ) then
  setenv GNUSTEP_SYSTEM_TOOLS "/usr/bin"
endif
if ( ! ${?GNUSTEP_SYSTEM_ADMIN_TOOLS} ) then
  setenv GNUSTEP_SYSTEM_ADMIN_TOOLS "/usr/sbin"
endif
if ( ! ${?GNUSTEP_SYSTEM_LIBRARY} ) then
  setenv GNUSTEP_SYSTEM_LIBRARY "/usr/lib/GNUstep"
endif
if ( ! ${?GNUSTEP_SYSTEM_HEADERS} ) then
  setenv GNUSTEP_SYSTEM_HEADERS "/usr/include"
endif
if ( ! ${?GNUSTEP_SYSTEM_LIBRARIES} ) then
  setenv GNUSTEP_SYSTEM_LIBRARIES "/usr/lib"
endif
if ( ! ${?GNUSTEP_SYSTEM_DOC} ) then
  setenv GNUSTEP_SYSTEM_DOC "/usr/share/GNUstep/Documentation"
endif
if ( ! ${?GNUSTEP_SYSTEM_DOC_MAN} ) then
  setenv GNUSTEP_SYSTEM_DOC_MAN "/usr/share/man"
endif
if ( ! ${?GNUSTEP_SYSTEM_DOC_INFO} ) then
  setenv GNUSTEP_SYSTEM_DOC_INFO "/usr/share/info"
endif

#
# NETWORK domain
#
if ( ! ${?GNUSTEP_NETWORK_APPS} ) then
  setenv GNUSTEP_NETWORK_APPS "/usr/local/lib/GNUstep/Applications"
endif
if ( ! ${?GNUSTEP_NETWORK_ADMIN_APPS} ) then
  setenv GNUSTEP_NETWORK_ADMIN_APPS "/usr/local/lib/GNUstep/Applications"
endif
if ( ! ${?GNUSTEP_NETWORK_WEB_APPS} ) then
  setenv GNUSTEP_NETWORK_WEB_APPS "/usr/lib/GNUstep/WebApplications"
endif
if ( ! ${?GNUSTEP_NETWORK_TOOLS} ) then
  setenv GNUSTEP_NETWORK_TOOLS "/usr/local/bin"
endif
if ( ! ${?GNUSTEP_NETWORK_ADMIN_TOOLS} ) then
  setenv GNUSTEP_NETWORK_ADMIN_TOOLS "/usr/local/sbin"
endif
if ( ! ${?GNUSTEP_NETWORK_LIBRARY} ) then
  setenv GNUSTEP_NETWORK_LIBRARY "/usr/local/lib/GNUstep"
endif
if ( ! ${?GNUSTEP_NETWORK_HEADERS} ) then
  setenv GNUSTEP_NETWORK_HEADERS "/usr/local/include"
endif
if ( ! ${?GNUSTEP_NETWORK_LIBRARIES} ) then
  setenv GNUSTEP_NETWORK_LIBRARIES "/usr/local/lib"
endif
if ( ! ${?GNUSTEP_NETWORK_DOC} ) then
  setenv GNUSTEP_NETWORK_DOC "/usr/local/share/GNUstep/Documentation"
endif
if ( ! ${?GNUSTEP_NETWORK_DOC_MAN} ) then
  setenv GNUSTEP_NETWORK_DOC_MAN "/usr/local/share/man"
endif
if ( ! ${?GNUSTEP_NETWORK_DOC_INFO} ) then
  setenv GNUSTEP_NETWORK_DOC_INFO "/usr/local/share/info"
endif

#
# LOCAL domain
#
if ( ! ${?GNUSTEP_LOCAL_APPS} ) then
  setenv GNUSTEP_LOCAL_APPS "/usr/local/lib/GNUstep/Applications"
endif
if ( ! ${?GNUSTEP_LOCAL_ADMIN_APPS} ) then
  setenv GNUSTEP_LOCAL_ADMIN_APPS "/usr/local/lib/GNUstep/Applications"
endif
if ( ! ${?GNUSTEP_LOCAL_WEB_APPS} ) then
  setenv GNUSTEP_LOCAL_WEB_APPS "/usr/local/lib/GNUstep/WebApplications"
endif
if ( ! ${?GNUSTEP_LOCAL_TOOLS} ) then
  setenv GNUSTEP_LOCAL_TOOLS "/usr/local/bin"
endif
if ( ! ${?GNUSTEP_LOCAL_ADMIN_TOOLS} ) then
  setenv GNUSTEP_LOCAL_ADMIN_TOOLS "/usr/local/sbin"
endif
if ( ! ${?GNUSTEP_LOCAL_LIBRARY} ) then
  setenv GNUSTEP_LOCAL_LIBRARY "/usr/local/lib/GNUstep"
endif
if ( ! ${?GNUSTEP_LOCAL_HEADERS} ) then
  setenv GNUSTEP_LOCAL_HEADERS "/usr/local/include"
endif
if ( ! ${?GNUSTEP_LOCAL_LIBRARIES} ) then
  setenv GNUSTEP_LOCAL_LIBRARIES "/usr/local/lib"
endif
if ( ! ${?GNUSTEP_LOCAL_DOC} ) then
  setenv GNUSTEP_LOCAL_DOC "/usr/local/share/GNUstep/Documentation"
endif
if ( ! ${?GNUSTEP_LOCAL_DOC_MAN} ) then
  setenv GNUSTEP_LOCAL_DOC_MAN "/usr/local/share/man"
endif
if ( ! ${?GNUSTEP_LOCAL_DOC_INFO} ) then
  setenv GNUSTEP_LOCAL_DOC_INFO "/usr/local/share/info"
endif

#
# USER domain
#
if ( ! ${?GNUSTEP_USER_DIR_APPS} ) then
  setenv GNUSTEP_USER_DIR_APPS "GNUstep/Applications"
endif
if ( ! ${?GNUSTEP_USER_DIR_ADMIN_APPS} ) then
  setenv GNUSTEP_USER_DIR_ADMIN_APPS "GNUstep/Applications/Admin"
endif
if ( ! ${?GNUSTEP_USER_DIR_WEB_APPS} ) then
  setenv GNUSTEP_USER_DIR_WEB_APPS "GNUstep/WebApplications"
endif
if ( ! ${?GNUSTEP_USER_DIR_TOOLS} ) then
  setenv GNUSTEP_USER_DIR_TOOLS "GNUstep/Tools"
endif
if ( ! ${?GNUSTEP_USER_DIR_ADMIN_TOOLS} ) then
  setenv GNUSTEP_USER_DIR_ADMIN_TOOLS "GNUstep/Tools/Admin"
endif
if ( ! ${?GNUSTEP_USER_DIR_LIBRARY} ) then
  setenv GNUSTEP_USER_DIR_LIBRARY "GNUstep/Library"
endif
if ( ! ${?GNUSTEP_USER_DIR_HEADERS} ) then
  setenv GNUSTEP_USER_DIR_HEADERS "GNUstep/Library/Headers"
endif
if ( ! ${?GNUSTEP_USER_DIR_LIBRARIES} ) then
  setenv GNUSTEP_USER_DIR_LIBRARIES "GNUstep/Library/Libraries"
endif
if ( ! ${?GNUSTEP_USER_DIR_DOC} ) then
  setenv GNUSTEP_USER_DIR_DOC "GNUstep/Library/Documentation"
endif
if ( ! ${?GNUSTEP_USER_DIR_DOC_MAN} ) then
  setenv GNUSTEP_USER_DIR_DOC_MAN "GNUstep/Library/Documentation/man"
endif
if ( ! ${?GNUSTEP_USER_DIR_DOC_INFO} ) then
  setenv GNUSTEP_USER_DIR_DOC_INFO "GNUstep/Library/Documentation/info"
endif

switch ("${GNUSTEP_USER_DIR_APPS}")
 case /*: # An absolute path
   setenv GNUSTEP_USER_APPS "${GNUSTEP_USER_DIR_APPS}"
   breaksw
 default: # Something else
   setenv GNUSTEP_USER_APPS "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_APPS}"
   breaksw
endsw

switch ("${GNUSTEP_USER_DIR_ADMIN_APPS}")
 case /*: # An absolute path
   setenv GNUSTEP_USER_ADMIN_APPS "${GNUSTEP_USER_DIR_ADMIN_APPS}"
   breaksw
 default: # Something else
   setenv GNUSTEP_USER_ADMIN_APPS "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_ADMIN_APPS}"
   breaksw
endsw

switch ("${GNUSTEP_USER_DIR_WEB_APPS}")
 case /*: # An absolute path
   setenv GNUSTEP_USER_WEB_APPS "${GNUSTEP_USER_DIR_WEB_APPS}"
   breaksw
 default: # Something else
   setenv GNUSTEP_USER_WEB_APPS "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_WEB_APPS}"
   breaksw
endsw

switch ("${GNUSTEP_USER_DIR_TOOLS}")
 case /*:
   setenv GNUSTEP_USER_TOOLS "${GNUSTEP_USER_DIR_TOOLS}"
   breaksw
 default:
   setenv GNUSTEP_USER_TOOLS "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_TOOLS}"
   breaksw
endsw

switch ("${GNUSTEP_USER_DIR_ADMIN_TOOLS}")
 case /*:
   setenv GNUSTEP_USER_ADMIN_TOOLS "${GNUSTEP_USER_DIR_ADMIN_TOOLS}"
   breaksw
 default:
   setenv GNUSTEP_USER_ADMIN_TOOLS "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_ADMIN_TOOLS}"
   breaksw
endsw

switch ("${GNUSTEP_USER_DIR_LIBRARY}")
 case /*:
   setenv GNUSTEP_USER_LIBRARY "${GNUSTEP_USER_DIR_LIBRARY}"
   breaksw
 default:
   setenv GNUSTEP_USER_LIBRARY "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_LIBRARY}"
   breaksw
endsw

switch ("${GNUSTEP_USER_DIR_HEADERS}")
 case /*:
   setenv GNUSTEP_USER_HEADERS "${GNUSTEP_USER_DIR_HEADERS}"
   breaksw
 default:
   setenv GNUSTEP_USER_HEADERS "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_HEADERS}"
   breaksw
endsw

switch ("${GNUSTEP_USER_DIR_LIBRARIES}")
 case /*:
   setenv GNUSTEP_USER_LIBRARIES "${GNUSTEP_USER_DIR_LIBRARIES}"
   breaksw
 default:
   setenv GNUSTEP_USER_LIBRARIES "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_LIBRARIES}"
   breaksw
endsw

switch ("${GNUSTEP_USER_DIR_DOC}")
 case /*:
   setenv GNUSTEP_USER_DOC "${GNUSTEP_USER_DIR_DOC}"
   breaksw
 default:
   setenv GNUSTEP_USER_DOC "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_DOC}"
   breaksw
endsw

switch ("${GNUSTEP_USER_DIR_DOC_MAN}")
 case /*:
   setenv GNUSTEP_USER_DOC_MAN "${GNUSTEP_USER_DIR_DOC_MAN}"
   breaksw
 default:
   setenv GNUSTEP_USER_DOC_MAN "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_DOC_MAN}"
   breaksw
endsw

switch ("${GNUSTEP_USER_DIR_DOC_INFO}")
 case /*:
   setenv GNUSTEP_USER_DOC_INFO "${GNUSTEP_USER_DIR_DOC_INFO}"
   breaksw
 default:
   setenv GNUSTEP_USER_DOC_INFO "${GNUSTEP_HOME}/${GNUSTEP_USER_DIR_DOC_INFO}"
   breaksw
endsw

unsetenv GNUSTEP_USER_DIR_APPS 
unsetenv GNUSTEP_USER_DIR_ADMIN_APPS 
unsetenv GNUSTEP_USER_DIR_WEB_APPS 
unsetenv GNUSTEP_USER_DIR_TOOLS 
unsetenv GNUSTEP_USER_DIR_ADMIN_TOOLS 
unsetenv GNUSTEP_USER_DIR_LIBRARY
unsetenv GNUSTEP_USER_DIR_HEADERS 
unsetenv GNUSTEP_USER_DIR_LIBRARIES 
unsetenv GNUSTEP_USER_DIR_DOC 
unsetenv GNUSTEP_USER_DIR_DOC_MAN
unsetenv GNUSTEP_USER_DIR_DOC_INFO
