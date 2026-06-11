import QtQuick 2.15

Rectangle {
    id: root

    width: Screen.width
    height: Screen.height

    color: "#000000"

    Image {
        id: logo

        source: "tortugalinux.png"

        anchors.centerIn: parent

        width: 256
        height: 256

        fillMode: Image.PreserveAspectFit

        opacity: 0

        SequentialAnimation on opacity {
            running: true

            NumberAnimation {
                from: 0
                to: 1
                duration: 1200
            }
        }
    }

    Text {
        anchors.top: logo.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        anchors.topMargin: 20

        text: "TortugaLinux"

        color: "white"

        font.pixelSize: 24
    }
}