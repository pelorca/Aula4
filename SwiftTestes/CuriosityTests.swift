//
//  CuriosityTests.swift
//  SwiftTestes
//
//  Created by Aloc SP08161 on 27/11/2017.
//  Copyright © 2017 Scopus. All rights reserved.
//

import XCTest

class PropertyObservers {
    var teste = 0
    
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
    
}
