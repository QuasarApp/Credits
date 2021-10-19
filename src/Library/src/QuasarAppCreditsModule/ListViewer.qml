import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls.Material 2.15

// developersa and patronsList lists must be contain structure with a section amd sectionList fields.
// The section it is section name
// the sectionList it is list of section members.
// Example of the structure:
//[
//    {
//        text: "## QuasarApp Developers: ",
//        align: Label.AlignHCenter,
//        color: ""
//    },
//    {
//        text: "* [Oleg-Disigner](https://www.google.com/)",
//        align: Label.AlignHCenter,
//        color: ""

//    },
//    {
//        text: "* Yankovich Andrei",
//        align: Label.AlignHCenter,
//        color: "Red"
//    }
//]

ColumnLayout {
    id: root
    property var model: []
    Layout.fillWidth: true

    Repeater {
        model: root.model

        Label {
            id: lableSource
            text: modelData.text
            Layout.fillWidth: true
            horizontalAlignment: (modelData.align)? modelData.align : horizontalAlignment
            color: (modelData.color && modelData.color.length)? modelData.color: color

            textFormat: TextEdit.MarkdownText
            linkColor: Material.accent
            onLinkActivated: (link) => {
                                 Qt.openUrlExternally(link)
                             }
            onLinkHovered: (link) => {
                               if (link.length) {
                                    lableSource.ToolTip.show(link)
                               } else {
                                   lableSource.ToolTip.hide()
                               }
                           }
        }

    }
}

