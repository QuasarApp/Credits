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
Repeater {
    model: patronsList

    visible: showPatrons

    ColumnLayout {
        Layout.fillWidth: true

        Label {
            text: modelData.section
            Layout.fillWidth: true

            textFormat: TextEdit.MarkdownText
            visible: showPatrons

        }

        Repeater {
            model: modelData.sectionList

            Label {
                text: modelData
                Layout.fillWidth: true

                textFormat: TextEdit.MarkdownText

            }

        }
    }
}
