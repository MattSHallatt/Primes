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
    
    print("Exhaustive check")
    exhaustiveCheck(6)
    exhaustiveCheck(7)
    
    print("\n\nMersenne check")
    checkMersennePrime(31)
    
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

