import Felgo
import QtQuick
import QtQuick.Controls
App {
    // You get free licenseKeys from https://felgo.com/licenseKey
    // With a licenseKey you can:
    //  * Publish your games & apps for the app stores
    //  * Remove the Felgo Splash Screen or set a custom one (available with the Pro Licenses)
    //  * Add plugins to monetize, analyze & improve your apps (available with the Pro Licenses)
    //licenseKey: "<generate one from https://felgo.com/licenseKey>"

    Window {
    width: 360
    height: 640
    visible: true
    id:thiswind
    title: qsTr("StackView_test")
    property int defMargin:10
    property QtObject prevpage:page1
    StackView{
    id:stack_view
    anchors.fill: parent
    initialItem: page1
    }
    My_Page { id:page1
    backgroundColor: "red"
    buttonText1: "To_Green"
    onButton1Clicked: {
    stack_view.pop()
    thiswind.prevpage=page1
    stack_view.push(page2)
    //stack_view.pop(page1)
    }
    buttonText2: "To_Yellow"
    onButton2Clicked: {
    stack_view.pop()
    thiswind.prevpage=page1
    stack_view.push(page3)
    //stack_view.pop(page1)
    }
    onButton3Clicked: {
    stack_view.push(thiswind.prevpage)
    //stack_view.pop(page3)
    }
    }
    My_Page { id:page2
    visible: false
    backgroundColor: "green"
    buttonText1: "To_Red"
    onButton1Clicked: {
    stack_view.pop()
    thiswind.prevpage=page2
    stack_view.push(page1)
    //stack_view.pop(page2)
    }
    buttonText2: "To_Yellow"
    onButton2Clicked: {
    stack_view.pop()
    thiswind.prevpage=page2
    stack_view.push(page3)
    //stack_view.pop(page2)
    }
    onButton3Clicked: {
    stack_view.pop(thiswind.prevpage)
    //stack_view.pop(page3)
    }
    }
    My_Page { id:page3
    visible: false
    backgroundColor: "yellow"
    buttonText1: "To_Green"
    onButton1Clicked: {
    stack_view.pop()
    thiswind.prevpage=page3
    stack_view.push(page2)
    //stack_view.pop(page3)
    }
    buttonText2: "To_Red"
    onButton2Clicked: {
    stack_view.pop()
    thiswind.prevpage=page3
    stack_view.push(page1)
    //stack_view.pop(page3)
    }
    onButton3Clicked: {
    stack_view.pop(thiswind.prevpage)
    //stack_view.pop(page3)
    }
    }
    }
}
