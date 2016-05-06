#-------------------------------------------------
#
# Project created by QtCreator 2016-04-21T22:20:00
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = example_qt_root
TEMPLATE = app

#INCLUDEPATH += $(ROOTSYS)/include
INCLUDEPATH += /usr/include/root
win32:LIBS += -L$(ROOTSYS)/lib -llibCore -llibCint -llibRIO -llibNet \
        -llibHist -llibGraf -llibGraf3d -llibGpad -llibTree \
        -llibRint -llibPostscript -llibMatrix -llibPhysics \
        -llibGui -llibRGL
#else:LIBS += -L$(ROOTSYS)/lib -lCore -lCint -lRIO -lNet \
else:LIBS += -L"/usr/lib64/root" -lCore -lCint -lRIO -lNet \
        -lHist -lGraf -lGraf3d -lGpad -lTree \
        -lRint -lPostscript -lMatrix -lPhysics \
        -lGui -lRGL


SOURCES += main.cpp\
        mainwindow.cpp \
    qrootcanvas.cpp \
    qmaincanvas.cpp

HEADERS  += mainwindow.h \
    qrootcanvas.h \
    qmaincanvas.h

FORMS    += mainwindow.ui
