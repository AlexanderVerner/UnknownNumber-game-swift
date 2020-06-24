//
//  main.swift
//  UnknownNumber
//
//  Created by Alexander Verner on 22.06.2020.
//  Copyright © 2020 AlexanderVerner. All rights reserved.
//

import Foundation
//Declaring a dictionary for storing messages
let message = [
    "start":"Write number: ",
    "select":"Computer selected random number. How this number?",
    "more":"Number is greater than guessed number!",
    "less":"Number is less than guessed number!",
    "win":"Wow! You guessed an unknown number!",
    "try":"Try Again? Write 'y' for new game or any key for quit from game.",
]
//Declaring a boolean variable, that will flag for starting new round or closing the game
var playRound: Bool = true
repeat {
//   Show a selected numder message
    print(message["select"]!)
//   Declaring a random number using pseudo random number function
    let randomNumber = String(arc4random_uniform(10))
//    Declaring a variable number, that will selected user
    var number : String = ""
    repeat {
//        Show a "write number" messages with forced extraction
        print(message["start"]!)
//        Read a numbers, written are users
        let myNumber = readLine()
//        Safe extraction with using a operator ??
        number = myNumber ?? ""
//        Checking a written number any more or less guesed computer number
        if number < randomNumber {
            print(message["less"]!)
        } else if number > randomNumber{
            print(message["more"]!)
        }
    } while number != randomNumber
//    Show a win message
    print(message["win"]!)
//    Show a try again message
    print(message["try"]!)
//    Read a command for restart or closing the game
    let restart = readLine()
    if restart == "y"{
        playRound = true
    } else { playRound = false }
} while playRound == true

