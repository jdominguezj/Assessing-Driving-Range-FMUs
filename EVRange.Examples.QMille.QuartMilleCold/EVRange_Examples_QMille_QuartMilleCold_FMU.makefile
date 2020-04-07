# FIXME: before you push into master...
RUNTIMEDIR=C:/OpenModelica1.13.0-64bit//include/omc/c/
OMC_MINIMAL_RUNTIME=1
OMC_FMI_RUNTIME=1
include $(RUNTIMEDIR)/Makefile.objs
#COPY_RUNTIMEFILES=$(FMI_ME_OBJS:%= && (OMCFILE=% && cp $(RUNTIMEDIR)/$$OMCFILE.c $$OMCFILE.c))

fmu:
	rm -f EVRange_Examples_QMille_QuartMilleCold.fmutmp/sources/EVRange_Examples_QMille_QuartMilleCold_init.xml
	cp -a C:/OpenModelica1.13.0-64bit//include/omc/c/* EVRange_Examples_QMille_QuartMilleCold.fmutmp/sources/include/
	cp -a C:/OpenModelica1.13.0-64bit//share/omc/runtime/c/fmi/buildproject/* EVRange_Examples_QMille_QuartMilleCold.fmutmp/sources
	cp -a EVRange_Examples_QMille_QuartMilleCold_FMU.libs EVRange_Examples_QMille_QuartMilleCold.fmutmp/sources/

