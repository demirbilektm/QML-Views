import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Let's Swipe")

    SwipeView{
      id: sview
      currentIndex: 0
      anchors.fill: parent
      SwipePage{
      id: first
      text: "I'm First Page"
      color: "#B5DEFF"
      }
      SwipePage{
      id:second
      text: "I'm Second Page!"
      color: "#C1FFD7"
      }

      SwipePage{
      id: third
      text: "I'm Third Page!"
      color: "#CAB8FF"
      }

    }

    PageIndicator{
    id: indicator
    count: sview.count
    currentIndex: sview.currentIndex
    anchors.bottom: sview.bottom
    anchors.horizontalCenter: parent.horizontalCenter

    }

}
