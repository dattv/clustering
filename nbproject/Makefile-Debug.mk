#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/CClustering.o \
	${OBJECTDIR}/main.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-Wl,-rpath,'../CRandom/dist/Debug/GNU-Linux' -L../CRandom/dist/Debug/GNU-Linux -lCRandom -Wl,-rpath,'../MathLib/dist/Debug/GNU-Linux' -L../MathLib/dist/Debug/GNU-Linux -lMathLib -Wl,-rpath,'../MathLib/dist/Release/GNU-Linux' -L../MathLib/dist/Release/GNU-Linux -lMathLib

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/clustering

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/clustering: ../CRandom/dist/Debug/GNU-Linux/libCRandom.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/clustering: ../MathLib/dist/Debug/GNU-Linux/libMathLib.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/clustering: ../MathLib/dist/Release/GNU-Linux/libMathLib.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/clustering: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/clustering ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/CClustering.o: CClustering.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../CRandom -I../MathLib -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/CClustering.o CClustering.cpp

${OBJECTDIR}/main.o: main.cpp
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -I../CRandom -I../MathLib -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:
	cd ../CRandom && ${MAKE}  -f Makefile CONF=Debug
	cd ../MathLib && ${MAKE}  -f Makefile CONF=Debug
	cd ../MathLib && ${MAKE}  -f Makefile CONF=Release

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} -r ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libCRandom.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libMathLib.so ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libMathLib.so
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/clustering

# Subprojects
.clean-subprojects:
	cd ../CRandom && ${MAKE}  -f Makefile CONF=Debug clean
	cd ../MathLib && ${MAKE}  -f Makefile CONF=Debug clean
	cd ../MathLib && ${MAKE}  -f Makefile CONF=Release clean

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
