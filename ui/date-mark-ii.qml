// Copyright 2021, Mycroft AI Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import QtQuick 2.4
import QtQuick.Controls 2.0
import Mycroft 1.0 as Mycroft

Mycroft.CardDelegate {
    id: timeScreen

    Item {
        id: backgroundImage
        anchors.left: parent.left
        anchors.leftMargin: gridUnit * 9
        anchors.top: parent.top
        anchors.topMargin: gridUnit * 6

        Image {
            id: dateBackground
            source: "image/date-background.svg"
        }

        Image {
            id: monthBackground
            source: "image/month-background.svg"
        }

        DateLabel {
            id: monthLabel
            anchors.top: backgroundImage.top
            anchors.topMargin: gridUnit
            fontSize: 60
            fontStyle: "Bold"
            heightUnits: 3
            text: sessionData.monthString
            widthUnits: 28
        }

        DateLabel {
            id: dayLabel
            anchors.top: backgroundImage.top
            anchors.topMargin: gridUnit * 7
            textColor: "#2C3E50"
            fontSize: 176
            fontStyle: "Bold"
            heightUnits: 8
            text: sessionData.dayString
            widthUnits: 28
        }

        DateLabel {
            id: weekdayLabel
            anchors.top: backgroundImage.top
            anchors.topMargin: gridUnit * 16
            textColor: "#2C3E50"
            fontSize: 47
            fontStyle: "ExtraBold"
            heightUnits: 2
            text: sessionData.weekdayString
            widthUnits: 28
        }
    }
}
