import QtQuick
import Felgo
import QtQuick.Controls
Page{
id:root
property alias backgroundColor:back_fon.color
property alias buttonText1:batton_nav1.text
property alias buttonText2:batton_nav2.text
signal button1Clicked();
signal button2Clicked();
signal button3Clicked();
background: Rectangle{
id:back_fon
}
Button {
id:batton_back
text:"<-"
anchors.left: parent.left
anchors.top: parent.top
anchors.margins: defMargin // look into main.qml
onClicked: {
root.button3Clicked()
}
}
Button {
id:batton_nav1
anchors.right: parent.right
anchors.bottom: parent.bottom
anchors.margins: defMargin // look into main.qml
onClicked: {
root.button1Clicked()
}
}
Button {
id:batton_nav2
anchors.left: parent.left
anchors.bottom: parent.bottom
anchors.margins: defMargin // look into main.qml
onClicked: {
root.button2Clicked()
}
}
}
