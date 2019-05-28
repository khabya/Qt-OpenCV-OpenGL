#-------------------------------------------------
#
# Project created by QtCreator 2017-12-24T17:00:22
#
#-------------------------------------------------

QT += core gui multimedia widgets multimediawidgets opengl
TARGET = LAUWebCamerarCapture
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0


SOURCES += \
        main.cpp \
        lauwebcamerawidget.cpp \
        lauvideosurface.cpp \
        lauvideoglwidget.cpp \
        laufacialfeaturedetectorglwidget.cpp \
        lauharriscornerdetectorglwidget.cpp \
        laurandomizepixelsglwidget.cpp \
        lausobeledgedetectorglwidget.cpp \
        laucaltagglwidget.cpp

HEADERS += \
        lauwebcamerawidget.h \
        lauvideosurface.h \
        lauvideoglwidget.h \
        laufacialfeaturedetectorglwidget.h \
        lauharriscornerdetectorglwidget.h \
        laurandomizepixelsglwidget.h \
        lausobeledgedetectorglwidget.h \
        laucaltagglwidget.h \
    laufacialfeaturedetectorglwidget.h

RESOURCES += lauwebcameracapture.qrc

unix:macx {
    CONFIG        += c++11
    INCLUDEPATH   += /usr/local/include/opencv4
    DEPENDPATH    += /usr/local/include/opencv4
    LIBS          += -L/usr/local/lib -lopencv_core -lopencv_objdetect -lopencv_imgproc -lopencv_calib3d -lopencv_highgui -lopencv_ml -lopencv_face
}

unix:!macx {
    CONFIG        += c++11
    INCLUDEPATH   += /usr/local/opt/opencv/include
    DEPENDPATH    += /usr/local/opt/opencv/include
    LIBS          += -L/usr/local/lib -lopencv_core -lopencv_objdetect -lopencv_imgproc -lopencv_calib3d -lopencv_highgui -lopencv_ml
}

win32 {
    INCLUDEPATH   += $$quote(C:/usr/opencv/build/include)
    DEPENDPATH    += $$quote(C:/usr/opencv/build/include)
    LIBS          += -L$$quote(C:/usr/opencv/build/x64/vc12/lib)
    CONFIG(release, debug|release): LIBS += -lopencv_world310
    CONFIG(debug, debug|release):   LIBS += -lopencv_world310d
}