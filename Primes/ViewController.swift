//
//  ViewController.swift
//  Primes
//
//  Created by Matthew Hallatt on 29/01/2016.
//  Copyright © 2016 Matthew Hallatt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
//    print("Exhaustive check")
//    exhaustiveCheck(2)
//    exhaustiveCheck(3)
//    exhaustiveCheck(4)
//    exhaustiveCheck(5)
//    exhaustiveCheck(6)
//    exhaustiveCheck(7)
    
    print("\n\nMersenne check")
//    checkMersennePrime(2)
//    checkMersennePrime(3)
//    checkMersennePrime(4)
    checkMersennePrime(31)
    
//    print("\n\nLoop from 1 to 1000")
//    
//    var count = 0
//    for index in 1...1000000 {
//      let result = exhaustiveCheck(index)
//      count += result ? 1 : 0
//    }
//    print("\(count) primes found between 1 and 1000000")
    
  }
  
  func checkMersennePrime(power: Int) -> Bool {
    
    let number = pow(2.0, Float(power)) - 1
    
    return exhaustiveCheck(Int(number))
  }
  
  func exhaustiveCheck(number: Int) -> Bool {
    
    if (number <= 2) {
      print("\(number) is prime")
      return true
    }
    
    print("\nChecking \(number)...")
    
    for index in 2...(number - 1) {
      if (number % index == 0) {
        print("\(number) is not prime")
        return false
      }
    }
    
    print("\(number) is prime")
    
    return true
  }
  
}

