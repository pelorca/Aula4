//
//  DesafioTests.swift
//  SwiftTestes
//
//  Created by Aloc SP08161 on 24/11/2017.
//  Copyright © 2017 Scopus. All rights reserved.
//

import XCTest

extension String {
    
    static func subString(str: String, _ startIndex: Int, _ length: Int) -> String
    {
        guard startIndex < str.count && length < str.count else {
            return ""
        }
        
        let start = str.index(str.startIndex, offsetBy: String.IndexDistance(startIndex))
        let end = str.index(str.startIndex, offsetBy: String.IndexDistance(length))
        return String(str[start..<end])
    }
    
}

extension Array {
    
    
    mutating func shuffle()
    {
            self.sort { (_,_) in arc4random() < arc4random()
     }
    }
    
    mutating func shuffle2()
    {
        for i in 0..<count - 1 {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            self.swapAt(i, j)
        }
    }
    

    
}



class DesafioTests: XCTestCase {
    
    func testString(){
         XCTAssertEqual("12",String.subString(str: "012345", 1, 3))
    }
        
    func testEmbaralha() {
        
        var array = [1,2,3,4,5]
        
        array.shuffle()
        
        var str = "["
        for i in array {
            
         str += " \(i) ,"
        }
        
        str += "]"

        print(str)
        
        
        
    }
        
    
}
