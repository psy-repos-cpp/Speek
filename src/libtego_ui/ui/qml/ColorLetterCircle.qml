import QtQuick 2.0
import QtQuick.Controls 1.0
import im.utility 1.0
import im.ricochet 1.0

Rectangle {
    Utility {
       id: utility
    }

    property var name
    property var icon

    id: colorLetterCircle
    width: 48
    height: 48
    color:"transparent"


    Image {
        height: parent.height
        width: parent.width
        anchors.fill: parent
        source: {
            if(icon == "" || typeof(icon) === "undefined"){
                if(typeof(name) === "undefined"){
                    return "";
                }
                var file_path = ":/icons/icons_letter/ASCII-" + name.charCodeAt(0) + ".png";
                if(utility.checkFileExists(file_path))
                    return "qrc" + file_path
                else
                    return "qrc:/icons/icons_letter/ASCII-63.png";
            }
            else{
                return "image://base64/" + icon;
            }
        }
        smooth: true
    }
}
