//
//  GenericTests.swift
//  SwiftTestes
//
//  Created by Aloc SP08161 on 27/11/2017.
//  Copyright © 2017 Scopus. All rights reserved.
//

import XCTest

class Stack<T> {
    
    var itens = Array<T>()
    var peek: T? {
        return itens.last
    }
    
    init(_ itens: Array<T>){
        self.itens = itens
    }
    
    func push(_ item:T) {
        
        self.itens.append(item)
        
    }
    
    func pop() -> T? {
        guard !itens.isEmpty else { return nil }
        return itens.removeLast()
    }
    
}

class GenericTests: XCTestCase {
    
    func testGenericUsage() {
        
        let _ = [Int]()
        let _ = Array<Int>()
        let _ = [Int:Int]()
        let _ = Dictionary<Int, Int>()
        let _ :Int?
        let _ :Optional<Int>
        
    }
    
    func testStack() {
        
        let stack = Stack([1,2,3])
        stack.push(4)
        XCTAssertEqual(stack.peek, 4)
        XCTAssertEqual(stack.pop(), 4)
        XCTAssertEqual(stack.peek, 3)
        
        
    }
    
}
