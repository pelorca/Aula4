//
//  CuriosityTests.swift
//  SwiftTestes
//
//  Created by Aloc SP08161 on 27/11/2017.
//  Copyright © 2017 Scopus. All rights reserved.
//

import XCTest

class Subscript {
    private var value = 1
    
    subscript (_ index: Int) -> Int {
    
        get {
            return value * index
        }
        set {
            value =  newValue
        }
    }
    
    subscript (_ indexs: Int...) -> Int {
    
        var produto = value
        
        for v in indexs {
            produto *= v
        }
        return produto
    }
    
    subscript (_ key: String, value: Int) -> Int {
        return (Int(key) ?? 1) * value * self.value
    }
    
    
}


class PropertyObservers {
    var teste = 0
    init() {
        print("Inicializado \(PropertyObservers.instaceCount)")
        PropertyObservers.instaceCount += 1
    }
    
    lazy var instace = PropertyObservers()
     static var instaceCount: Int = 0
    
    var value = 0 {
        
        willSet  {
            print("setou +1 no willset")
            teste += 1
        }
        didSet {
            print("setou +2 no didset")
            teste += 2
        }
        
        
    }
}

class CuriosityTests: XCTestCase {
    
    func testFor() {
        var count = 0
        for i in stride(from: 0.5, through: 2.5, by: 0.5) {
            print(i)
            count += 1;
        }
        
        print(count)
    }
    
    func testProperty() {
        
        let v = PropertyObservers()
        v.value = 1
    
        
    }
    
    func testLazyInstanciate() {
        let v = PropertyObservers()
        print(v.instace)
    
    }
    
    
    func testOperatorAsFunction() {
    
        func aritimetic(_ v1: Double, _ v2: Double, _ op: ((Double, Double) -> Double)) -> Double {
            return op(v1,v2)
        }
 
        XCTAssertEqual(6, aritimetic(2, 4, +))
        XCTAssertEqual(2, aritimetic(4, 2, -))
        
        
    }
    
    
    func testSubscript() {
        XCTAssertEqual(4, Subscript()[4])
        XCTAssertEqual(256, Subscript()[2,2,2,2,2,2,2,2])
        XCTAssertEqual(16, Subscript()["4",4])
        
        
    }
    
    
}
