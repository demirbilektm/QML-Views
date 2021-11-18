import QtQuick 2.0

Rectangle{
    color: "orange"
    property alias text: text.text
    Text {
        id: text
        anchors.fill: parent
        text: qsTr("text")
        font.family: "Helvetica"
        font.pointSize: 24
        color: "white"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }



}
