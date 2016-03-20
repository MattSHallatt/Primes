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
//    exhaustiveCheck(6)
//    exhaustiveCheck(7)
    
//    print("\n\nMersenne check")
//    checkMersennePrime(31)
    
//    print("\n\nLucasLehmer check")
//    checkMeresennePrimeUsingLucasLehmer(13)
    
  }
  
  func checkMersennePrime(power: Int) -> Bool {
    return exhaustiveCheck(mersennePrimeWithPower(power))
  }
  
  func checkMeresennePrimeUsingLucasLehmer(power: Int) -> Bool {
    
    let numbers = Array(LucalLehmerSequence(power: power))
    
    print(numbers)
    
    return numbers[power - 2] % mersennePrimeWithPower(power) == 0 ? true : false
  }
  
  func mersennePrimeWithPower(power: Int) -> Int {
    return Int(pow(2.0, Float(power)) - 1)
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

