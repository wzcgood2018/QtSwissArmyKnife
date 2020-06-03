msvc {
    DEFINES+=SAK_IMPORT_USB_MODULE
    USB_SYSTEM_PLATFORM=windows
    USB_VERSION=1.0

    # i386或x86_64
    contains(QT_ARCH, i386) {
        HID_CPU_ARCHITECTURE=x86
    }else{
        HID_CPU_ARCHITECTURE=amd64
    }

    INCLUDEPATH += $${PWD}/$${USB_VERSION}/$${USB_SYSTEM_PLATFORM}/$${HID_CPU_ARCHITECTURE}/include
    LIBS += -L$${PWD}/$${USB_VERSION}/$${USB_SYSTEM_PLATFORM}/$${HID_CPU_ARCHITECTURE}/lib -llibusb-1.0
#    QMAKE_LFLAGS_DEBUG += /DEBUG /NODEFAULTLIB:libc.lib /NODEFAULTLIB:libcmt.lib /NODEFAULTLIB:msvcrt.lib /NODEFAULTLIB:libcd.lib /NODEFAULTLIB:libcmtd.lib
}

contains(DEFINES, SAK_IMPORT_USB_MODULE){

}else {
    message("The usb module is not imported to the project, the application will not have usb debuging functioin.")
}
