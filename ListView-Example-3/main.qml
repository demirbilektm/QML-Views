import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml 2.12
import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls 2.12
import QtQuick 2.11
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.4
import QtQuick.Layouts 1.11
import QtQuick 2.9

import QtQuick.Controls 2.1


Window {
    id:window
    visible: true
    width: 1920
    height: 1080
    title: qsTr("ListView TEST")
    color:"black"

        ListView {
            id: list_view
            anchors.fill:parent
            model: 100
            spacing: 15

            delegate: Rectangle {
                                 x: 0; y: 0; width: 300; height: 50; //
                                 color: Qt.rgba(Math.random(), Math.random(),Math.random(),1)
                Label{
                     id:txt
                     anchors.centerIn: parent
                     font.pointSize: 15
                     text: "item :" + index
                     color: "white"
                     font.family: "Garamond"
                     }

                MouseArea {
                    anchors.fill: parent
                                         onClicked: list_view.currentIndex = index // Implement ITEM switching
                    }
            }


                         ScrollBar.vertical: ScrollBar {// scroll bar
                anchors.right: lview.left
                width: 30
                active: true
                                 background: Item {// Stroke background pattern
                    Rectangle {
                        anchors.centerIn: parent
                        height: parent.height
                        width: parent.width * 0.2
                        color: 'grey'
                        radius: width/2
                    }
                }

                contentItem: Rectangle {
                                         radius: width / 3 // Bar Rounded
                    color: 'yellow'
                }
            }

            Rectangle{
               x:300
               y:0
               width: window.width - 300
               height: window.height
               color: "purple"

                Label{
                      anchors.centerIn: parent
                      font.pointSize: 15
                      text: "currentIndex = " + list_view.currentIndex
                      anchors.horizontalCenter: parent.horizontalCenter
                  }
            }
        }
}
