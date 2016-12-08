//: Playground - noun: a place where people can play

import UIKit

let deposit = 100.0
var saved = 0.0
let growth = 1.002 // 1 percent growth per month

let months = 6
let days = months * 30

for i in 0..<days {
    if i % 30 == 0 {
        saved += deposit
    }
    
    saved *= growth
}

print(String(format: "\nTotal after 12 months you have: $%.2f", arguments: [saved]))

let template = #imageLiteral(resourceName: "isnowplaying_720.png")
let face = #imageLiteral(resourceName: "download.jpeg")

let userLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
userLabel.text = "Harambe"
userLabel.textColor = UIColor(red: 116/255, green: 160/255, blue: 44/255, alpha: 1.0)
userLabel.font = UIFont.boldSystemFont(ofSize: 24)

let gameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
gameLabel.text = "Heaven"
gameLabel.textColor = UIColor(red: 116/255, green: 160/255, blue: 44/255, alpha: 1.0)
gameLabel.font = UIFont.boldSystemFont(ofSize: 24)

UIGraphicsBeginImageContextWithOptions(template.size, false, 0.0)
template.draw(in: CGRect(origin: .zero, size: template.size))
face.draw(in: CGRect(x: 115.5, y: 98.5, width: 92.5, height: 94))
userLabel.drawText(in: CGRect(x: 235, y: 98.5, width: 400, height: 30))
gameLabel.drawText(in: CGRect(x: 235, y: 162.5, width: 400, height: 30))
let result = UIGraphicsGetImageFromCurrentImageContext()
UIGraphicsEndImageContext()


