import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 120
    height: 600
    x: screen.desktopAvailableWidth - width - 12
    y: screen.desktopAvailableHeight - height - 360
    title: "ClockWidget"
    flags: Qt.FramelessWindowHint | Qt.Window

    property string currTime: "00:00:00"
    property QtObject backend

    Rectangle {
        anchors.fill: parent

        Image {
            sourceSize.width: parent.width
            sourceSize.height: parent.height
            source: "./images/background.jpg"
            fillMode: Image.PreserveAspectCrop

        }

        Rectangle {
            anchors.fill: parent
            color: "transparent"

            Text {
                anchors{
                    bottom: parent.bottom
                    bottomMargin: 12
                    left: parent.left
                    leftMargin: 12
                }

                text: currTime
                font.pixelSize: 24
                color: "white"
            }
        }
    Connections {
        target: backend

        function onUpdated(msg) {
            currTime = msg;
            }
        }
    }
}