import QtQuick 2.2

Rectangle {
    property alias text: input.text
    property alias input: input
    width: input.contentWidth < 100 ? 100 : input.contentWidth + 10
    height: input.contentHeight + 10
    color: "#11eef1"; border.color: "#d322bb"
    TextInput {
        id: input
        anchors.fill: parent
        anchors.margins: 5
        focus: true
    }
}
