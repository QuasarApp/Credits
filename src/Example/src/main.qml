import QtQuick 2.15
import QtQuick.Controls 2.15
import QuasarAppCreditsModule 1.0

ApplicationWindow {

    SwipeView {
        id: view

        currentIndex: 1
        anchors.fill: parent

        Credits {
            state: "about"
            listCustomInfo: [
                {
                    text: "## QuasarApp Developers: ",
                    align: Label.AlignHCenter,
                    color: ""
                },
                {
                    text: "* [google](https://www.google.com/)",
                    align: Label.AlignHCenter,
                    color: ""

                },
                {
                    text: "* Yankovich Andrei",
                    align: Label.AlignHCenter,
                    color: "Red"
                }
            ]

        }
        Credits {
            state: "minimal"
            iconLogo: "qrc:/res/res/Credits.jpg"
            iconWidth: 250

        }
        Credits {
            state: "bitcoinSimple"
        }

        Credits {
            state: "patreon"
        }

        Credits {
            state: "bitcoin"
        }

        Credits {
            state: "full"
        }

        Credits {
            state: "full"
            listCustomInfo: [
                "## QuasarApp Core",
                "* Oleg-Disigner",
                "* Yankovich Andrei"
            ]
        }
    }

    PageIndicator {
        id: indicator

        count: view.count
        currentIndex: view.currentIndex

        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    width: 470
    height: 780
    visible: true
}
