import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.12

Window {
    id:                         root
    visible:                    true
    width:                      480
    height:                     360
    minimumWidth:               450
    minimumHeight:              240
    title:                      qsTr("Painter View Example")

    property int    pageIndex:          0
    property bool   fullMenuShow:       false
    property real   menuWidthShort:     40


    Item {
        id: page
        height:                 parent.height
        anchors.left:           parent.left
        anchors.leftMargin:     100
        anchors.right:          parent.right

        Image {
            id:                 firstPage
            anchors.fill:       parent
            smooth:             true
            mipmap:             true
            antialiasing:       true
            fillMode:           Image.PreserveAspectFit
            sourceSize.height:  height
            source:             "qrc:/Content/Rembrandt.JPG"
            visible:            pageIndex == 0

        }

        Image {
            id:                 secondPage
            anchors.fill:       parent
            smooth:             true
            mipmap:             true
            antialiasing:       true
            fillMode:           Image.PreserveAspectFit
            sourceSize.height:  height
            source:             "qrc:/Content/VanGogh.jpg"
            visible:            pageIndex == 1
        }

        Image {
            id:                 thirdPage
            anchors.fill:       parent
            smooth:             true
            mipmap:             true
            antialiasing:       true
            fillMode:           Image.PreserveAspectFit
            sourceSize.height:  height
            source:             "qrc:/Content/Kahlo.jpeg"
            visible:            pageIndex == 2
        }
        Image {
            id:                 fourthpage
            anchors.fill:       parent
            smooth:             true
            mipmap:             true
            antialiasing:       true
            fillMode:           Image.PreserveAspectFit
            sourceSize.height:  height
            source:             "qrc:/Content/Gilot.jpg"
            visible:            pageIndex == 3
        }
        Image {
            id:                 fipage
            anchors.fill:       parent
            smooth:             true
            mipmap:             true
            antialiasing:       true
            fillMode:           Image.PreserveAspectFit
            sourceSize.height:  height
            source:             "qrc:/Content/Picasso.jpg"
            visible:            pageIndex == 4
        }
        Image {
            id:                 sipage
            anchors.fill:       parent
            smooth:             true
            mipmap:             true
            antialiasing:       true
            fillMode:           Image.PreserveAspectFit
            sourceSize.height:  height
            source:             "qrc:/Content/Magriette.jpg"
            visible:            pageIndex == 5
        }
        Image {
            id:                 sevpage
            anchors.fill:       parent
            smooth:             true
            mipmap:             true
            antialiasing:       true
            fillMode:           Image.PreserveAspectFit
            sourceSize.height:  height
            source:             "qrc:/Content/Dali.jpg"
            visible:            pageIndex == 6
        }

    }

    Rectangle {
        id:                     rectMenu
        width:                  fullMenuShow ? 40*4 : 40
        height:                 parent.height
        anchors.left:           parent.left
        anchors.top:            parent.top
        color:                  "#D57E7E"

        MouseArea {
            anchors.fill:       parent
            hoverEnabled:       true
            onEntered:          fullMenuShow = true
            onExited:           fullMenuShow = false
        }
//        Behavior on width {
//            NumberAnimation { duration: 200 }
//        }
    }


    ListMenu {
        id:                     listViewMenu
        width:                  rectMenu.width
        anchors.left: rectMenu.left
        listViewIndex:          0;
        color:                  "#D57E7E"

        listModel:   [
            {
                name:           qsTr("Rembrant"),

            },
            {
                name:           qsTr("Van Gogh"),

            },
            {
                name:           qsTr("Frida"),

            },
            {
                name:           qsTr("Françoise Gilot"),

            },
            {
                name:           qsTr("Picasso"),

            },
            {
                name:           qsTr("Rene Magriette"),

            },
            {
                name:           qsTr("Dali"),

            }
        ]

        onListIndex: {
            pageIndex = idx;
        }

//
//        Connections {
//            target:             repeaterMenu
//            onPageSig : {
//                pageIndex = idx
//            }
//        }
    }
}
