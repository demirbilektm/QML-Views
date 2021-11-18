import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Author List")

    ListView {
        id: listView
        clip: true
        anchors.fill: parent
        spacing :0

        highlight: Rectangle {
            width: listView.width
            height: 40
            color: "lightsteelblue"
            radius: 5

            Behavior on y {
                SpringAnimation {
                    spring: 3
                    damping: 0.2
                }
            }
        }
        highlightFollowsCurrentItem: true
        focus: true
        delegate: Rectangle {
            width: listView.width
            height: 40

            radius: 5

            border.width:1
            property color tempcolor: "transparent"
            color: tempcolor
            Row {
                id: row1
                anchors.fill: parent
                spacing: 10
                anchors.leftMargin: 10

                Text {
                    text: index+1
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                    font.family: "Garamond"
                    font.pointSize: listView.currentIndex == index ? 19 : 13
                }

                Rectangle {
                    width: 30
                    height: 30
                    color: colorCode
                    anchors.verticalCenter: parent.verticalCenter

                }

                Text {
                    text: name

                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                    font.pointSize: listView.currentIndex == index ? 19 : 13
                    font.family: "Garamond"
                }

            }
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    listView.currentIndex = index
                    //console.log(index)
                }
                onEntered: {
                    tempcolor = "#a7e094"
                }

                onExited: {
                    tempcolor = "transparent"
                }
            }
        }
        model: ListModel {
            ListElement {
                name: "Joyce"
                colorCode: "#C25E97"
            }

            ListElement {
                name: "Hemingway"
                colorCode: "#EB6D8A"
            }

            ListElement {
                name: "Shakespeare"
                colorCode: "#FFAA68"
            }

            ListElement {
                name: "Kafka"
                colorCode: "#FF8778"
            }
            ListElement {
                name: "Flaubert "
                colorCode: "#F9F871"
            }

            ListElement {
                name: "Plath"
                colorCode: "#0088AA"
            }

            ListElement {
                name: "Marquez"
                colorCode: "#FFE4FB"
            }

            ListElement {
                name: "Ursula"
                colorCode: "#00BAFC"
            }
            ListElement {
                name: "Tolstoy"
                colorCode: "#8DC1FF"
            }

            ListElement {
                name: "Austen"
                colorCode: "#AC90C2"
            }

            ListElement {
                name: "Woolf"
                colorCode: "#FFAA68"
            }

            ListElement {
                name: "Shelly"
                colorCode: "#DA4E76"
            }
            ListElement {
                name: "Y.Kemal"
                colorCode: "#00755A"
            }

            ListElement {
                name: "Bronte"
                colorCode: "#C6B3DC"
            }

            ListElement {
                name: "Dostoyevski"
                colorCode: "#8BA3D1"
            }

            ListElement {
                name: "Saramago"
                colorCode: "#C4FCEF"
            }
        }
    }
}
