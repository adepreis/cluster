// Copyright (c) 2020 LG Electronics, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// SPDX-License-Identifier: Apache-2.0

import QtQuick 2.4
import WebOSServices 1.0
import Eos.Window 0.1
import PmLog 1.0

WebOSWindow {
    id: root
    width: 1920
    height: 1080
    visible: true
    appId: "com.github.adepreis.cluster"
    title: "Automotive QML gauge cluster"
    color: "lightblue"
    displayAffinity: params["displayAffinity"]

    Row {
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id: rect1
            width: root.width * 0.20
            height: root.height * 0.85
            color: "#45c0c0c0"
            border.color: "gray"
            border.width: 2
            radius: 5

            Text {
                id: text1
                anchors.centerIn: parent
                text: "t1: " + parent.width + 'x' + parent.height
            }
        }

        Rectangle {
            id: rect2
            width: root.width * 0.50
            height: root.height * 0.85
            color: "#45c0c0c0"
            border.color: "slategrey"
            border.width: 2
            radius: 10

            Text {
                id: text2
                anchors.centerIn: parent
                text: parent.width + 'x' + parent.height
            }
        }

        Rectangle {
            id: rect3
            width: root.width * 0.20
            height: root.height * 0.85
            color: "#45c0c0c0"
            border.color: "gray"
            border.width: 2
            radius: 5

            Text {
                id: text3
                anchors.centerIn: parent
                text: "<h2>Titre</h2>t3: " + parent.width + 'x' + parent.height
            }
        }        
    }

    MouseArea {
        anchors.fill: parent
        
        /*
            drag.target: rect
        */
        drag.target: parent
        drag.axis: Drag.XAxis
        drag.minimumX: -50
        drag.maximumX: 50
        drag.filterChildren: true

        onClicked: {
            let temp = text1.text
            text1.text = text2.text
            text2.text = text3.text
            text3.text = temp
        }
    }
}
