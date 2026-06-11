import QtQuick 2.15
import QtQuick.Controls 2.15
import SddmComponents 2.0

Rectangle {
    width: 1920
    height: 1080

    Image {
        anchors.fill: parent
        source: "background.png"
        fillMode: Image.PreserveAspectCrop
    }

    Rectangle {
        anchors.centerIn: parent

        width: 500
        height: 420

        radius: 16

        color: "#88000000"

        border.color: "#3a5ea8"
        border.width: 1

        Column {
            anchors.centerIn: parent

            spacing: 15

            Image {
                source: "tortugalinux.png"

                width: 128
                height: 128

                fillMode: Image.PreserveAspectFit

                anchors.horizontalCenter: parent.horizontalCenter
            }

            Label {
                text: "Tortuga Linux"

                color: "white"

                font.pixelSize: 28

                anchors.horizontalCenter: parent.horizontalCenter
            }

            TextField {
                id: username

                width: 320

                placeholderText: "Username"

                text: userModel.lastUser
            }

            TextField {
                id: password

                width: 320

                placeholderText: "Password"

                echoMode: TextInput.Password

                onAccepted: {
                    sddm.login(
                        username.text,
                        password.text,
                        sessionModel.lastIndex
                    )
                }
            }

            Button {
                width: 320

                text: "Login"

                onClicked: {
                    sddm.login(
                        username.text,
                        password.text,
                        sessionModel.lastIndex
                    )
                }
            }
        }
    }

    Clock {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        anchors.bottomMargin: 30
    }
}