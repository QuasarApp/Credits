import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

// developersa and patronsList lists must be contain structure with a section amd sectionList fields.
// The section it is section name
// the sectionList it is list of section members.
// Example of the structure:
//[
//    {
//        section: qsTr("## Silver Membership Patrons:"),
//        sectionList: [
//            "* Rustem Husnutdinov",
//            "* Semih Ufuk Güler"
//        ]
//    }
//]

ColumnLayout {
    id: root
    property var model: []
    Layout.fillWidth: true

    Repeater {
        model: root.model

        Label {
            text: modelData
            Layout.fillWidth: true

            textFormat: TextEdit.MarkdownText

        }

    }
}

