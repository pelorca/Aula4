//
//  OverloadsTests.swift
//  SwiftTestes
//
//  Created by Aloc SP08161 on 27/11/2017.
//  Copyright © 2017 Scopus. All rights reserved.
//

import XCTest
postfix operator ++
prefix operator ++
extension Int {
    
    static prefix func ++ (_ left:inout Int) -> Int {
        left = left + 1
        return left
    }
    static postfix func ++ (_ left:inout Int) -> Int {
        let temp = left
        left = left + 1
        return temp
    }
    
    
}


postfix operator -
infix operator ×

struct Vector2D {
    var x: Double
    var y: Double
    
    static func + (_ left: Vector2D, _ right: Vector2D) -> Vector2D {
        return Vector2D(x: left.x + right.x, y: left.y + right.y)
    }
    
    static func == (_ left: Vector2D, _ right: Vector2D) -> Bool {
        return left.x == right.x && left.y == right.y
    }
    
    static func != (_ left: Vector2D, _ right: Vector2D) -> Bool {
        return !(left == right)
    }
    
    static func += (_ left:inout Vector2D, _ right: Vector2D) -> Vector2D {
        left = (left + right)
        return left
    }
    
 
    
    static prefix func - (_ right: Vector2D) -> Vector2D {
        return Vector2D(x: -right.x , y: -right.y)
    }
    
    static postfix func - (_ left: Vector2D) -> Vector2D {
        return -(left)
    }
    
    static func × (_ left:inout Vector2D, _ right: Vector2D) -> Double {
        return (left.x * right.x) + (left.y * right.y)
    }

    
}

class OverloadsTests: XCTestCase {
    
    func testVerctorSum() {
        
        var result = Vector2D(x: 2, y: 2) + Vector2D(x: 3, y: 3)
        
        XCTAssert(result == Vector2D(x: 5, y: 5), "Equals")
        XCTAssert(result != Vector2D(x: 4, y: 5), "Not Equals")
       XCTAssert((result += Vector2D(x: 1, y: 1)) == Vector2D(x: 6, y: 6), "Equals")
        XCTAssert(-result == result-)
        
         XCTAssert((result × Vector2D(x: 2, y: 2)) == 24)
        
        
        
    }
        
    func testMais() {
        
        var i = 0
        
        XCTAssert(i++ == 0)
         XCTAssert(++i == 2)
        XCTAssert(++i == 3)
        XCTAssert(i++ == 3)
        
    }
        
    
}
