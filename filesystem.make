#
#   filesystem.make
#
#   Sets up the filesystem paths
#
#   Copyright (C) 2007 Free Software Foundation, Inc.
#
#   Author:  Nicola Pero <nicola.pero@meta-innovation.com>,
#            Matt Rice <ratmice@gmail.com>, 
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
# We make sure that all the interesting paths in all domains are
# defined.  Having this is a great help in iterating over header dirs,
# for example.
#
# PS: If you change this list, make sure that top update the list of
# paths used in common.make when GNUSTEP_INSTALLATION_DIR is set.
#

#
# We use '?=' to only set variables that have not already been set by
# the user in the config files (that should be read before this file).
# So, this describes the GNUstep filesystem default that is
# automatically used when the config file is missing some settings.
#
# Some directories are fixed to be subdirectories of Library.
#
# We keep the list in this simple format (instead of generating it
# from functions, for example) to make it very easy to read for
# everyone.
#

#
# Location of Users directories ... never used by gnustep-make.
#
GNUSTEP_SYSTEM_USERS_DIR  ?= /home
GNUSTEP_LOCAL_USERS_DIR   ?= /home
GNUSTEP_NETWORK_USERS_DIR ?= /home

#
# SYSTEM domain
#
GNUSTEP_SYSTEM_APPS        ?= /usr/lib/GNUstep/Applications
GNUSTEP_SYSTEM_ADMIN_APPS  ?= /usr/lib/GNUstep/Applications
GNUSTEP_SYSTEM_WEB_APPS    ?= /usr/lib/GNUstep/WebApplications
GNUSTEP_SYSTEM_TOOLS       ?= /usr/bin
GNUSTEP_SYSTEM_ADMIN_TOOLS ?= /usr/sbin
GNUSTEP_SYSTEM_LIBRARY     ?= /usr/lib/GNUstep
GNUSTEP_SYSTEM_HEADERS     ?= /usr/include
GNUSTEP_SYSTEM_LIBRARIES   ?= /usr/lib
GNUSTEP_SYSTEM_DOC         ?= /usr/share/GNUstep/Documentation
GNUSTEP_SYSTEM_DOC_MAN     ?= /usr/share/man
GNUSTEP_SYSTEM_DOC_INFO    ?= /usr/share/info

#
# SYSTEM domain, variables that are fixed to subdirs of LIBRARY
#
GNUSTEP_SYSTEM_APPLICATION_SUPPORT = $(GNUSTEP_SYSTEM_LIBRARY)/ApplicationSupport
GNUSTEP_SYSTEM_BUNDLES             = $(GNUSTEP_SYSTEM_LIBRARY)/Bundles
GNUSTEP_SYSTEM_FRAMEWORKS          = $(GNUSTEP_SYSTEM_LIBRARY)/Frameworks
GNUSTEP_SYSTEM_PALETTES            = $(GNUSTEP_SYSTEM_LIBRARY)/ApplicationSupport/Palettes
GNUSTEP_SYSTEM_SERVICES            = $(GNUSTEP_SYSTEM_LIBRARY)/Services
GNUSTEP_SYSTEM_RESOURCES           = $(GNUSTEP_SYSTEM_LIBRARY)/Libraries/Resources
GNUSTEP_SYSTEM_JAVA                = $(GNUSTEP_SYSTEM_LIBRARY)/Libraries/Java

#
# NETWORK domain
#
GNUSTEP_NETWORK_APPS        ?= /usr/local/lib/GNUstep/Applications
GNUSTEP_NETWORK_ADMIN_APPS  ?= /usr/local/lib/GNUstep/Applications
GNUSTEP_NETWORK_WEB_APPS    ?= /usr/lib/GNUstep/WebApplications
GNUSTEP_NETWORK_TOOLS       ?= /usr/local/bin
GNUSTEP_NETWORK_ADMIN_TOOLS ?= /usr/local/sbin
GNUSTEP_NETWORK_LIBRARY     ?= /usr/local/lib/GNUstep
GNUSTEP_NETWORK_HEADERS     ?= /usr/local/include
GNUSTEP_NETWORK_LIBRARIES   ?= /usr/local/lib
GNUSTEP_NETWORK_DOC         ?= /usr/local/share/GNUstep/Documentation
GNUSTEP_NETWORK_DOC_MAN     ?= /usr/local/share/man
GNUSTEP_NETWORK_DOC_INFO    ?= /usr/local/share/info

#
# NETWORK domain, variables that are fixed to subdirs of LIBRARY
#
GNUSTEP_NETWORK_APPLICATION_SUPPORT = $(GNUSTEP_NETWORK_LIBRARY)/ApplicationSupport
GNUSTEP_NETWORK_BUNDLES             = $(GNUSTEP_NETWORK_LIBRARY)/Bundles
GNUSTEP_NETWORK_FRAMEWORKS          = $(GNUSTEP_NETWORK_LIBRARY)/Frameworks
GNUSTEP_NETWORK_PALETTES            = $(GNUSTEP_NETWORK_LIBRARY)/ApplicationSupport/Palettes
GNUSTEP_NETWORK_SERVICES            = $(GNUSTEP_NETWORK_LIBRARY)/Services
GNUSTEP_NETWORK_RESOURCES           = $(GNUSTEP_NETWORK_LIBRARY)/Libraries/Resources
GNUSTEP_NETWORK_JAVA                = $(GNUSTEP_NETWORK_LIBRARY)/Libraries/Java


#
# LOCAL domain
#
GNUSTEP_LOCAL_APPS        ?= /usr/local/lib/GNUstep/Applications
GNUSTEP_LOCAL_ADMIN_APPS  ?= /usr/local/lib/GNUstep/Applications
GNUSTEP_LOCAL_WEB_APPS    ?= /usr/local/lib/GNUstep/WebApplications
GNUSTEP_LOCAL_TOOLS       ?= /usr/local/bin
GNUSTEP_LOCAL_ADMIN_TOOLS ?= /usr/local/sbin
GNUSTEP_LOCAL_LIBRARY     ?= /usr/local/lib/GNUstep
GNUSTEP_LOCAL_HEADERS     ?= /usr/local/include
GNUSTEP_LOCAL_LIBRARIES   ?= /usr/local/lib
GNUSTEP_LOCAL_DOC         ?= /usr/local/share/GNUstep/Documentation
GNUSTEP_LOCAL_DOC_MAN     ?= /usr/local/share/man
GNUSTEP_LOCAL_DOC_INFO    ?= /usr/local/share/info

#
# LOCAL domain, variables that are fixed to subdirs of LIBRARY
#
GNUSTEP_LOCAL_APPLICATION_SUPPORT = $(GNUSTEP_LOCAL_LIBRARY)/ApplicationSupport
GNUSTEP_LOCAL_BUNDLES             = $(GNUSTEP_LOCAL_LIBRARY)/Bundles
GNUSTEP_LOCAL_FRAMEWORKS          = $(GNUSTEP_LOCAL_LIBRARY)/Frameworks
GNUSTEP_LOCAL_PALETTES            = $(GNUSTEP_LOCAL_LIBRARY)/ApplicationSupport/Palettes
GNUSTEP_LOCAL_SERVICES            = $(GNUSTEP_LOCAL_LIBRARY)/Services
GNUSTEP_LOCAL_RESOURCES           = $(GNUSTEP_LOCAL_LIBRARY)/Libraries/Resources
GNUSTEP_LOCAL_JAVA                = $(GNUSTEP_LOCAL_LIBRARY)/Libraries/Java


#
# USER domain
# Please note that here the GNUstep.conf values are called GNUSTEP_USER_DIR_*
# which we convert into the actual GNUSTEP_USER_* after prepending (if needed)
# GNUSTEP_HOME.
#
GNUSTEP_USER_DIR_APPS        ?= GNUstep/Applications
GNUSTEP_USER_DIR_ADMIN_APPS  ?= GNUstep/Applications/Admin
GNUSTEP_USER_DIR_WEB_APPS    ?= GNUstep/WebApplications
GNUSTEP_USER_DIR_TOOLS       ?= GNUstep/Tools
GNUSTEP_USER_DIR_ADMIN_TOOLS ?= GNUstep/Tools/Admin
GNUSTEP_USER_DIR_LIBRARY     ?= GNUstep/Library
GNUSTEP_USER_DIR_HEADERS     ?= GNUstep/Library/Headers
GNUSTEP_USER_DIR_LIBRARIES   ?= GNUstep/Library/Libraries
GNUSTEP_USER_DIR_DOC         ?= GNUstep/Library/Documentation
GNUSTEP_USER_DIR_DOC_MAN     ?= GNUstep/Library/Documentation/man
GNUSTEP_USER_DIR_DOC_INFO    ?= GNUstep/Library/Documentation/info

# Now, any directories in the user domain that are relative (ie, they
# don't start with '/') get automatically prefixed with GNUSTEP_HOME.

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_APPS)),)
 # Path starts with '/', so we can use it as it is
 GNUSTEP_USER_APPS = $(GNUSTEP_USER_DIR_APPS)
else
 # Path does no start with '/', consider it as relative to GNUSTEP_HOME
 GNUSTEP_USER_APPS = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_APPS)
endif 

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_ADMIN_APPS)),)
 # Path starts with '/', so we can use it as it is
 GNUSTEP_USER_ADMIN_APPS = $(GNUSTEP_USER_DIR_ADMIN_APPS)
else
 # Path does no start with '/', consider it as relative to GNUSTEP_HOME
 GNUSTEP_USER_ADMIN_APPS = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_ADMIN_APPS)
endif 

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_WEB_APPS)),)
 # Path starts with '/', so we can use it as it is
 GNUSTEP_USER_WEB_APPS = $(GNUSTEP_USER_DIR_WEB_APPS)
else
 # Path does no start with '/', consider it as relative to GNUSTEP_HOME
 GNUSTEP_USER_WEB_APPS = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_WEB_APPS)
endif 

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_TOOLS)),)
 GNUSTEP_USER_TOOLS = $(GNUSTEP_USER_DIR_TOOLS)
else
 GNUSTEP_USER_TOOLS = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_TOOLS)
endif 

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_ADMIN_TOOLS)),)
 GNUSTEP_USER_ADMIN_TOOLS = $(GNUSTEP_USER_DIR_ADMIN_TOOLS)
else
 GNUSTEP_USER_ADMIN_TOOLS = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_ADMIN_TOOLS)
endif 

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_LIBRARY)),)
 GNUSTEP_USER_LIBRARY = $(GNUSTEP_USER_DIR_LIBRARY)
else
 GNUSTEP_USER_LIBRARY = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_LIBRARY)
endif 

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_HEADERS)),)
 GNUSTEP_USER_HEADERS = $(GNUSTEP_USER_DIR_HEADERS)
else
 GNUSTEP_USER_HEADERS = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_HEADERS)
endif 

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_LIBRARIES)),)
 GNUSTEP_USER_LIBRARIES = $(GNUSTEP_USER_DIR_LIBRARIES)
else
 GNUSTEP_USER_LIBRARIES = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_LIBRARIES)
endif 

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_DOC)),)
 GNUSTEP_USER_DOC = $(GNUSTEP_USER_DIR_DOC)
else
 GNUSTEP_USER_DOC = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_DOC)
endif 

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_DOC_MAN)),)
 GNUSTEP_USER_DOC_MAN = $(GNUSTEP_USER_DIR_DOC_MAN)
else
 GNUSTEP_USER_DOC_MAN = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_DOC_MAN)
endif 

ifneq ($(filter /%, $(GNUSTEP_USER_DIR_DOC_INFO)),)
 GNUSTEP_USER_DOC_INFO = $(GNUSTEP_USER_DIR_DOC_INFO)
else
 GNUSTEP_USER_DOC_INFO = $(GNUSTEP_HOME)/$(GNUSTEP_USER_DIR_DOC_INFO)
endif 


#
# USER domain, variables that are fixed to subdirs of LIBRARY
#
GNUSTEP_USER_APPLICATION_SUPPORT = $(GNUSTEP_USER_LIBRARY)/ApplicationSupport
GNUSTEP_USER_BUNDLES             = $(GNUSTEP_USER_LIBRARY)/Bundles
GNUSTEP_USER_FRAMEWORKS          = $(GNUSTEP_USER_LIBRARY)/Frameworks
GNUSTEP_USER_PALETTES            = $(GNUSTEP_USER_LIBRARY)/ApplicationSupport/Palettes
GNUSTEP_USER_SERVICES            = $(GNUSTEP_USER_LIBRARY)/Services
GNUSTEP_USER_RESOURCES           = $(GNUSTEP_USER_LIBRARY)/Libraries/Resources
GNUSTEP_USER_JAVA                = $(GNUSTEP_USER_LIBRARY)/Libraries/Java


