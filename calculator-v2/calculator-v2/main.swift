//
//  main.swift
//  calculator-v2
//
//  Created by David Yuan on 4/6/16.
//  Copyright © 2016 David Yuan. All rights reserved.
//

import Foundation

// BUILD A CALCULATOR

// Create addition function
let addition = { (num1 : Double, num2 : Double) -> Double in return num1 + num2 }

// Create subtraction function
let subtraction = { (num1 : Double, num2 : Double) -> Double in return num1 - num2 }

// Create multiplication function
let multiplication = { (num1 : Double, num2 : Double) -> Double in return num1 * num2 }

// Create division function
let division = { (num1 : Double, num2: Double) -> Double in return num1 / num2 }

// Create generic calculator
func simplecalculator(num1 : Double, num2 : Double, op : (Double, Double) -> Double) -> Double {
    return op(num1, num2)
}

// Add 1 and 2
let add1 = simplecalculator(1, num2: 2) {addition($0, $1)}
print("1 + 2 = \(add1)")
// Add 50 and 5
let add2 = simplecalculator(50, num2: 5) {addition($0, $1)}
print("50 + 5 = \(add2)")
// Add 15 and 10
let add3 = simplecalculator(15, num2: 10) {addition($0, $1)}
print("15 + 10 = \(add3)")
// Add 1000 and 100
let add4 = simplecalculator(1000, num2: 100) {addition($0, $1)}
print("1000 + 100 = \(add4)")
// Subtract 2 from 1
let subtract1 = simplecalculator(1, num2: 2) {subtraction($0, $1)}
print("1 - 2 = \(subtract1)")
// Subtract 5 from 50
let subtract2 = simplecalculator(50, num2: 5) {subtraction($0, $1)}
print("50 - 5 = \(subtract2)")
// Subtract 10 from 15
let subtract3 = simplecalculator(15, num2: 10) {subtraction($0, $1)}
print("15 - 10 = \(subtract3)")
// Subtract 100 from 1000
let subtract4 = simplecalculator(1000, num2: 100) {subtraction($0, $1)}
print("1000 - 100 = \(subtract4)")
// Multiply 1 and 2
let mult1 = simplecalculator(1, num2: 2) {multiplication($0, $1)}
print("1 * 2 = \(mult1)")
// Multiply 50 and 5
let mult2 = simplecalculator(50, num2: 5) {multiplication($0, $1)}
print("50 * 5 = \(mult2)")
// Multiply 15 and 10
let mult3 = simplecalculator(15, num2: 10) {multiplication($0, $1)}
print("15 * 10 = \(mult3)")
// Multiply 1000 and 100
let mult4 = simplecalculator(1000, num2: 100) {multiplication($0, $1)}
print("1000 * 100 = \(mult4)")
// Divide 1 by 2
let div1 = simplecalculator(1, num2: 2) {division($0, $1)}
print("1 / 2 = \(div1)")
// Divide 50 by 5
let div2 = simplecalculator(50, num2: 5) {division($0, $1)}
print("50 / 5 = \(div2)")
// Divide 15 by 10
let div3 = simplecalculator(15, num2: 10) {division($0, $1)}
print("15 / 10 = \(div3)")
// Divide 1000 by 100
let div4 = simplecalculator(1000, num2: 100) {division($0, $1)}
print("1000 / 100 = \(div4)")

// ARRAY FUN

// Create function that takes an array of numbers, and returns the sum
func addArray(array : [Double]) -> Double {
    var sum = 0.0
    for index in 0...(array.count - 1) {
        sum += array[index]
    }
    return sum
}

// Create function that
func multArray(array : [Double]) -> Double {
    var product = 1.0
    for index in 0...(array.count - 1) {
        product *= array[index]
    }
    return product
}

// Create function that returns number of elements in array
func arrayCount(array : [Double]) -> Double {
    return(Double(array.count))
}

// Create function that takes an array of numbers, and returns the average
func arrayAverage(array: [Double]) -> Double {
    return(addArray(array) / arrayCount(array))
}

// Creates generic calculator for arrays
func arraycalculator(array: [Double], op : ([Double]) -> Double) -> Double {
    return op(array)
}

let array1 : [Double] = [1, 2, 3, 4, 5, 6 , 7, 8, 9, 10]
print("array1 is [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]")
let adda1 = arraycalculator(array1) {addArray($0)}
print("Sum of array1 is \(adda1)")
let multa1 = arraycalculator(array1) {multArray($0)}
print("Product of array1 is \(multa1)")
let counta1 = arraycalculator(array1) {arrayCount($0)}
print("Number of elements in array1 is \(counta1)")
let averagea1 = arraycalculator(array1) {arrayAverage($0)}
print("Average of elements in array1 is \(averagea1)")

let array2 : [Double] = [55,6,2,39,90]
print("array2 is [55,6,2,39,90]")
let adda2 = arraycalculator(array2) {addArray($0)}
print("Sum of array2 is \(adda2)")
let multa2 = arraycalculator(array2) {multArray($0)}
print("Product of array2 is \(multa2)")
let counta2 = arraycalculator(array2) {arrayCount($0)}
print("Number of elements in array2 is \(counta2)")
let averagea2 = arraycalculator(array2) {arrayAverage($0)}
print("Average of elements in array2 is \(averagea2)")

let array3: [Double] = [1]
print("array3 is [1]")
let adda3 = arraycalculator(array3) {addArray($0)}
print("Sum of array3 is \(adda3)")
let multa3 = arraycalculator(array3) {multArray($0)}
print("Product of array3 is \(multa3)")
let counta3 = arraycalculator(array3) {arrayCount($0)}
print("Number of elements in array3 is \(counta3)")
let averagea3 = arraycalculator(array3) {arrayAverage($0)}
print("Average of elements in array3 is \(averagea3)")

// POINTS

// Create a function that adds tuples together
func addTuple(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int){
    let newx = p1.0 + p2.0
    let newy = p1.1 + p2.1
    return(newx, newy)
}

// Creates a function that subtracts tuples
func subTuple(p1: (Int, Int), p2: (Int, Int)) -> (Int, Int) {
    let newx = p1.0 - p2.0
    let newy = p1.1 - p2.1
    return(newx, newy)
}

let point1 = (1,2)
let point2 = (2,3)
let point3 = (10,11)
let point4 = (50,-3)

// Practice adding tuples
let apoint12 = addTuple(point1, p2: point2)
print("The sum of \(point1) and \(point2) is \(apoint12)")
let apoint13 = addTuple(point1, p2: point3)
print("The sum of \(point1) and \(point3) is \(apoint13)")
let apoint14 = addTuple(point1, p2: point4)
print("The sum of \(point1) and \(point4) is \(apoint14)")
let apoint23 = addTuple(point2, p2: point3)
print("The sum of \(point2) and \(point3) is \(apoint23)")
let apoint24 = addTuple(point2, p2: point4)
print("The sum of \(point2) and \(point4) is \(apoint24)")
let apoint34 = addTuple(point3, p2: point4)
print("The sum of \(point3) and \(point4) is \(apoint34)")

// Practice subtracting Tuples
let spoint12 = subTuple(point1, p2: point2)
print("The difference between \(point1) and \(point2) is \(spoint12)")
let spoint13 = subTuple(point1, p2: point3)
print("The difference between \(point1) and \(point3) is \(spoint13)")
let spoint14 = subTuple(point1, p2: point4)
print("The difference between \(point1) and \(point4) is \(spoint14)")
let spoint23 = subTuple(point2, p2: point3)
print("The difference between \(point2) and \(point3) is \(spoint23)")
let spoint24 = subTuple(point2, p2: point4)
print("The difference between \(point2) and \(point4) is \(spoint24)")
let spoint34 = subTuple(point3, p2: point4)
print("The difference between \(point3) and \(point4) is \(spoint34)")

// Adds key-value pairs in a dictionary if keys are "x" and "y"
func adddict(pointDictionary1: Dictionary<String, Double>,pointDictionary2: Dictionary<String, Double>) {
    if(pointDictionary1["x"] != nil && pointDictionary2["x"] != nil && pointDictionary1["y"] != nil && pointDictionary2["y"] != nil) {
        let newx = pointDictionary1["x"]! + pointDictionary2["x"]!
        let newy = pointDictionary1["y"]! + pointDictionary2["y"]!
        print("The sum of the points is (\(newx), \(newy))")
    } else {
        print("Invalid Dictionaries")
    }
}

// Subtracts key-value pairs in a dictionary if keys are "x" and "y"
func subdict(pointDictionary1: Dictionary<String, Double>,pointDictionary2: Dictionary<String, Double>) {
    if(pointDictionary1["x"] != nil && pointDictionary2["x"] != nil && pointDictionary1["y"] != nil && pointDictionary2["y"] != nil) {
        let newx = pointDictionary1["x"]! - pointDictionary2["x"]!
        let newy = pointDictionary1["y"]! - pointDictionary2["y"]!
        print("The sum of the points is (\(newx), \(newy))")
    } else {
        print("Invalid Dictionaries")
    }
}

let dictionary1: [String:Double] = ["x" : 3, "y" : 8]
let dictionary2: [String:Double] = ["x" : 2, "y" : 5]
let dictionary3: [String:Double] = ["x" : 10, "y" : 55]
adddict(dictionary1, pointDictionary2: dictionary2)
adddict(dictionary1, pointDictionary2: dictionary3)
adddict(dictionary2, pointDictionary2: dictionary3)
let dictionary4: [String:Double] = ["z" : 10, "t" : 55]
adddict(dictionary2, pointDictionary2: dictionary4)

subdict(dictionary1, pointDictionary2: dictionary2)
subdict(dictionary1, pointDictionary2: dictionary3)
subdict(dictionary2, pointDictionary2: dictionary3)
subdict(dictionary2, pointDictionary2: dictionary4)


