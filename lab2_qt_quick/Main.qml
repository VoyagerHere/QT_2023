import QtQuick
import QtQuick.Controls
import QtQuick.Window




Window {
   width: 640
   height: 480
   visible: true
   title: qsTr("Hello World")

   Button {
       x: 400
       y: 200
       text: "Open Dialog"
       onClicked: dialog.open()
   }

   Dialog {
       x: 400
       y: 200
       id: dialog
       title: "Enter Numbers"

       Column {
           TextField {
               id: textField1
               placeholderText: "Enter first number"
           }
           TextField {
               id: textField2
               placeholderText: "Enter second number"
           }
       }

       standardButtons: Dialog.Ok | Dialog.Cancel

       onAccepted: {
           var num1 = parseInt(textField1.text)
           var num2 = parseInt(textField2.text)
           console.log("Sum: " + (num1 + num2))
       }
   }

   Rectangle {
      width: 80
      height: 80
      color: "green"
      x: 280
      y: 240
    }

   Rectangle {
      width: 80
      height: 80
      color: "red"
      x: 200
      y: 200
    }
   Rectangle {
      width: 80
      height: 80
      color: "blue"
      x: 300
      y: 200
    }



   Column {
       spacing: 10

       Row {
           spacing: 2
           Rectangle { color: "red"; width: 50; height: 50 }
           Rectangle { color: "green"; width: 50; height: 50 }
           Rectangle { color: "blue"; width: 50; height: 50 }
       }
       Row {
           spacing: 2
           Rectangle { color: "pink"; width: 50; height: 50 }
           Rectangle { color: "white"; width: 50; height: 50 }
           Rectangle { color: "black"; width: 50; height: 50 }
       }
    }

   Grid {
       y: 150
       columns: 3
       spacing: 10
       Rectangle { color: "red"; width: 50; height: 50 }
       Rectangle { color: "green"; width: 50; height: 50 }
       Rectangle { color: "blue"; width: 50; height: 50 }
       Rectangle { color: "pink"; width: 50; height: 50 }
       Rectangle { color: "white"; width: 50; height: 50 }
       Rectangle { color: "black"; width: 50; height: 50 }
   }

   Rectangle {
       x: 400
       y: 350
                color: "black";
                width: 50;
                height: 50;
                transform: [
                   Scale { origin.x: 25; origin.y: 25; xScale: 1.5; yScale: 4 },
                   Rotation { origin.x: 25; origin.y: 25; angle: 45 }
                ]
            }


   Rectangle {
      id: square
      width: 50
      height: 50
      color: "red"
      x: 300
      y: 100

      transform: Scale {
          id: scaleTransform
          origin.x: square.width / 2
          origin.y: square.height / 2
          xScale: 1
          yScale: 1
      }

      SequentialAnimation {
          running: true
          loops: Animation.Infinite

          PropertyAnimation {
              target: scaleTransform
              property: "xScale"
              from: 1
              to: 2
              duration: 1000
          }

          PropertyAnimation {
              target: scaleTransform
              property: "yScale"
              from: 1
              to: 2
              duration: 1000
          }

          PropertyAnimation {
              target: square
              property: "y"
              from: 200
              to: 400
              duration: 1000
          }

          PropertyAnimation {
              target: scaleTransform
              property: "xScale"
              from: 2
              to: 1
              duration: 1000
          }

          PropertyAnimation {
              target: scaleTransform
              property: "yScale"
              from: 2
              to: 1
              duration: 1000
          }
      }
    }

}
