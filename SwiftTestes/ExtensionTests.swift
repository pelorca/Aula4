//
//  ExtensionTests.swift
//  SwiftTestes
//
//  Created by Aloc SP08161 on 24/11/2017.
//  Copyright © 2017 Scopus. All rights reserved.
//

import XCTest




extension String {
    
    enum Exception: Error {
        
        case OutofBoundsException(Int, Int, Int)
        
        
    }
    
    func subString(_ startIndex: Int, _ length: Int) -> String?
    {
        guard startIndex < self.count && length < self.count else {
            return nil
        }
        
        let start = self.index(self.startIndex, offsetBy: String.IndexDistance(startIndex))
        let end = self.index(self.startIndex, offsetBy: String.IndexDistance(length))
        return String(self[start..<end])
    }
    
    func subString(startIndex: Int, length: Int) -> String?
    {
        guard startIndex < self.count && length < self.count else {
            return nil
        }
        
        let start = self.index(self.startIndex, offsetBy: startIndex)
        let end = self.index(self.startIndex, offsetBy: startIndex + length)
        return String(self[start..<end])
    }
    
    
    func subStringThrow(_ startIndex: Int, _ length: Int) throws -> String
    {
        guard startIndex < self.count && length <  self.count else {
            throw Exception.OutofBoundsException(startIndex, length, self.count)
        }
        
        let start = self.index(self.startIndex, offsetBy: String.IndexDistance(startIndex))
        let end = self.index(self.startIndex, offsetBy: String.IndexDistance(length))
        return String(self[start..<end])
    }
    
    
}



class ExtensionTests: XCTestCase {
    
    func testSubstring() {
        XCTAssertEqual("234","012345".subString(startIndex: 2, length: 3))
        XCTAssertEqual("234","012345".subString(2,5))
    }
    
    func testException() {
        let str = "12345"
       
        do {
            _ = try str.subStringThrow(3, 8)
        } catch String.Exception.OutofBoundsException(let i, let l, let c) {
            XCTFail("Range [\(i)], [\(l)] 🖕 [0,\(c)]")
        } catch {
             XCTFail("XUPA SWIFT")
        }
        
        
    }
   
    
}
