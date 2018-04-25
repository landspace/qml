import QtQuick 2.7
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.3
//import QtQuick.Controls 2.0

ApplicationWindow {
    id: window
    visible: true
    width: 640; height: 480
    minimumWidth: 400; minimumHeight: 300;
    maximumWidth: 640; maximumHeight: 480;
    title: qsTr("Application Window")

    TextArea {
        id: content
        anchors.fill: parent
    }

    Action {
        id: quitAction
        text: qsTr("Quit")
        shortcut: "ctrl + q"
        iconSource: "images/quit.png"
        onTriggered: Qt.quit()
    }
    Action {
        id: cutAction
        text: qsTr("Cut")
        shortcut: "ctrl + x"
        iconSource: "images/paste.png"
        onTriggered: content.cut()
    }
    Action {
        id: copyAction
        text: qsTr("Copy")
        shortcut: "ctrl + c"
        onTriggered: content.copy()
    }
    Action {
        id: pasteAction
        text: qsTr("Paste")
        shortcut: "ctrl + v"
        onTriggered: content.paste()
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("&File")
            MenuItem { action: quitAction }
        }
        Menu {
            title: qsTr("&Edit")
            MenuItem { action: copyAction }
            MenuItem { action: pasteAction }
            MenuSeparator {}
            MenuItem { action: cutAction }
        }
    }

    toolBar: ToolBar {
        id: mainToolBar
        width: parent.width
        Row {
            anchors.fill: parent
            ToolButton { action: cutAction }
            ToolButton { action: pasteAction }
        }
    }

    statusBar: StatusBar {
        RowLayout { Label { text: "Ready" } Label { text: "welcome" } }
    }
/*
    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1 {
        }

        Page {
            Label {
                text: qsTr("Second page")
                anchors.centerIn: parent
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("First")
        }
        TabButton {
            text: qsTr("Second")
        }
    }
    */
}
