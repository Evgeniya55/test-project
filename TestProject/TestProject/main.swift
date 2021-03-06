//
//  main.swift
//  TestProject
//
//  Created by Evgeniya Senchurova on 23.02.2021.
//

import Foundation

print("Please enter a number of arrays:")
let n = Int(readLine()!)!
print(createArrays(numOfArrays: n))

func createArrays(numOfArrays: Int) -> [[Int]] {
    
    var arrayOfArrays: [[Int]] = []
    var sortedArrayOfArrays: [[Int]] = []
    let sequence = 1...100 // source of random numbers
    let arraysSizes: [Int] = sequence.shuffled() // array with random sizes of arrays
    
    // create an array of arrays
    for i in 1...numOfArrays {
        var newArray: [Int] = []
        for _ in 3...arraysSizes[i] + 3 {
            newArray.append(sequence.randomElement()!)
        }
        arrayOfArrays.append(newArray)
    }
    
    // sort arrays in the array
    for i in 0..<arrayOfArrays.count {
        var sortedArray = arrayOfArrays[i].sorted()
        if (i + 1) % 2 != 0 {
            sortedArray.reverse()
        }
        sortedArrayOfArrays.append(sortedArray)
    }
    
    return sortedArrayOfArrays
}



