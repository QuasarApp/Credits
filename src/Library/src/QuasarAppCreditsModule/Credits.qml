import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15


Page {
    id: root

    property bool showQR: true
    property bool showHeader: true
    property bool showPatreon: true
    property bool showBitcoin: true

    header: Image {
        fillMode: Image.PreserveAspectFit
        source: "qrc:/res/res/Credits.jpg"
        visible: showHeader
    }

    padding: 10

    Flickable {
        ScrollBar.vertical: ScrollBar { }
        contentHeight: source.height
        clip: true
        ColumnLayout {
            id: source
            width: parent.width
            spacing: 10
            Label {
                text: qsTr("Join the development fund and support QuasarApp to help with the development of our projects.")

                Layout.fillWidth: true

                textFormat: TextEdit.MarkdownText
                wrapMode: Text.WordWrap
                visible: showPatreon
            }

            Button {
                text: "Become a patron";
                visible: showPatreon

                onClicked: {
                    Qt.openUrlExternally("https://www.patreon.com/bePatron?u=9304737");
                }
            }

            Label {
                text: qsTr("If you would like to use bitcoins to support us, you can transfer coins to these address. If you want to be included in the patron list, send an e-mail message - **QuasarApp@yandex.by**")
                wrapMode: Text.WordWrap
                Layout.fillWidth: true

                textFormat: TextEdit.MarkdownText
                visible: showBitcoin

            }

            Label {
                text: qsTr("**Note**: You must send a message signed with address of the bitcoin wallet from which the payment was made.")
                visible: showBitcoin

                wrapMode: Text.WordWrap
                Layout.fillWidth: true

                textFormat: TextEdit.MarkdownText

            }

            Image {
                id: name
                fillMode: Image.PreserveAspectCrop
                source: "qrc:/res/res/qr.png"
                Layout.alignment: Qt.AlignHCenter
                visible: showQR && showBitcoin
            }

            Label {
                text: qsTr("**bitcoin:bc1q4wnp58plhx4fwnfnzz3e4slulv2gzzts89w2f7**")
                wrapMode: Text.WordWrap
                Layout.fillWidth: true
                visible: showBitcoin

                textFormat: TextEdit.MarkdownText

            }

            Label {
                text: qsTr("# Our patrons list:")
                Layout.fillWidth: true

                textFormat: TextEdit.MarkdownText


            }

            Label {
                text: qsTr("## Silver Membership Patrons:")
                Layout.fillWidth: true

                textFormat: TextEdit.MarkdownText

            }

            Label {
                text: qsTr("* Rustem Husnutdinov")
                Layout.fillWidth: true

                textFormat: TextEdit.MarkdownText

            }
            
            Label {
                text: qsTr("* Semih Ufuk Güler")
                Layout.fillWidth: true

                textFormat: TextEdit.MarkdownText

            }
        }

        anchors.fill: parent
    }

    states: [
        State {
            name: "full"
            PropertyChanges {
                target: root
                showHeader: true
                showPatreon: true
                showBitcoin: true

            }
        },
        State {
            name: "bitcoin"
            PropertyChanges {
                target: root
                showHeader: true
                showPatreon: false
                showBitcoin: true

            }
        },

        State {
            name: "patreon"
            PropertyChanges {
                target: root
                showHeader: true
                showPatreon: true
                showBitcoin: false

            }
        },

        State {
            name: "bitcoinSimple"
            PropertyChanges {
                target: root
                showQR: false
                showHeader: true
                showPatreon: false
                showBitcoin: true

            }
        },

        State {
            name: "minimal"
            PropertyChanges {
                target: root
                showQR: false
                showHeader: true
                showPatreon: false
                showBitcoin: false

            }
        }
    ]


}
