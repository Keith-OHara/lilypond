MAJVER=1
MINVER=1
PATCHLEVEL=5

PACKAGENAME=flower

#PROFILEFLAG=-pg
#DEBUGFLAG= -g
OPTIFLAG= -DNPRINT -O2 -DSTRING_UTILS_INLINED # -DNDEBUG 

#########################################

ifdef PROFILEFLAG
	DEFINES+=$(OPTIFLAG) $(PROFILEFLAG)
	EXTRALIB+=-pg
endif

ifndef DEBUGFLAG
	DEFINES+=$(OPTIFLAG)
else
	DEFINES+=$(DEBUGFLAG)
endif


CXXFLAGS+=$(DEFINES)  -Wall -W 
CXXVER=$(CXX) --version

VERSION=$(MAJVER).$(MINVER).$(PATCHLEVEL)
DNAME=$(PACKAGENAME)-$(VERSION)

include Sources.make
OBJECTDIR=objects
CCDIR=.
obs=$(addprefix $(OBJECTDIR)/,$(cc:.cc=.o)) 

staticlib=libflower.a
ALLSOURCES=$(hh) $(cc) $(inl) $(templatecc) $(extra)
DFILES=$(ALLSOURCES) Makefile Variables.make make_version\
	Sources.make TODO README NEWS
DDIR=$(DNAME)

depfile=deps/$(subst .o,.dep,$(notdir $@)) 
DODEP=rm -f $(depfile); DEPENDENCIES_OUTPUT="$(depfile) $(OBJECTDIR)/$(notdir $@)"
OUTPUT_OPTION=$< -o $@
SUBDIRS=deps objects
