//
//  main.swift
//  WarmUp 1
//
//  Created by Student on 2016-05-27.
//  Copyright © 2016 Student. All rights reserved.
//

import Foundation

/*
Three different triabngles 
 Scalene = 3 different angles
 Isosceles = 3 different angles
 Equilateral = 3 equal angles 
 
 only take in an integer greater than 0 but less than 180
*/

var angle1 : Double = 0
var angle2 : Double = 0
var angle3 : Double = 0

var validInput = false
var validInput2 = false
var validInput3 = false

while validInput == false{
    print("First Angle? ", terminator:"")
    if let input = readLine(stripNewline: true){
        if let inputAsDouble = Double(input){
            angle1 = inputAsDouble
            if angle1>0 && angle1<180{
                validInput = true
            }
        }
    }
}

while validInput2 == false{
    print("Second Angle? ", terminator:"")
    if let input = readLine(stripNewline: true){
        if let inputAsDouble = Double(input){
            angle2 = inputAsDouble
            if angle2>0 && angle2<180{
                validInput2 = true
            }
        }
    }
}

while validInput3 == false{
    print("Third Angle? ", terminator:"")
    if let input = readLine(stripNewline: true){
        if let inputAsDouble = Double(input){
            angle3 = inputAsDouble
            if angle3>0 && angle3<180{
                validInput3 = true
            }
        }
    }
}

if (angle1 + angle2 + angle3) != 180 {
    print("Not a Triangle")
}else if angle1==angle2 && angle2 == angle3{
    print("This Triangle is Equilateral")
}else if (angle1==angle2 || angle2 == angle3 || angle1 == angle3) {
    print("This Triangle is Isosceles")
}else {
    print("This Triangle is Scalene")
}
