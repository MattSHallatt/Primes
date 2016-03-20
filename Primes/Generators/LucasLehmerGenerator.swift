//
//  LucasLehmerGenerator.swift
//  Primes
//
//  Created by Matthew Hallatt on 20/03/2016.
//  Copyright (c) 2016 Matthew Hallatt. All rights reserved.
//
// Based on https://www.uraimo.com/2015/11/12/experimenting-with-swift-2-sequencetype-generatortype/

import Foundation

class LucasLehmerGenerator: GeneratorType {
  
  var current = 4
  var powerToCheck: Int
  var currentIteration = 0
  
  init (power: Int) {
    powerToCheck = power
  }
  
  func next() -> Int? {
    if currentIteration == powerToCheck - 1 {
      return nil
    }
    
    if currentIteration == 0 {
      currentIteration += 1
      return current
    }
    
    let lucasLehmer = LucasLehmerNumberForNumber(current)
    let mersenne = mersennePrimeWithPower(powerToCheck)
    
    if lucasLehmer > mersenne {
      current = lucasLehmer % mersenne
    } else {
      current = lucasLehmer
    }
    
    currentIteration += 1
    
    return current
  }
  
  private func LucasLehmerNumberForNumber(number: Int) -> Int {
    return (number * number) - 2
  }
  
  func mersennePrimeWithPower(power: Int) -> Int {
    return Int(pow(2.0, Float(power)) - 1)
  }
  
}

class LucalLehmerSequence: SequenceType {
  
  var powerToCheck: Int
  
  init (power: Int) {
    powerToCheck = power
  }
  
  func generate() -> LucasLehmerGenerator {
    return LucasLehmerGenerator(power: powerToCheck)
  }
  
}
