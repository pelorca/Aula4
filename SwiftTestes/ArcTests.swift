//
//  ArcTests.swift
//  SwiftTestes
//
//  Created by Aloc SP08161 on 28/11/2017.
//  Copyright © 2017 Scopus. All rights reserved.
//

import XCTest

class A  {
    
    var refb: B? = nil
    var refc: C? = nil

    
    deinit {
        print("morreu A")
    }
    
    
    
}
class B  {
    deinit {
        print("morreu B")
    }
    
    weak var refa: A? = nil
}

class C  {
    deinit {
        print("morreu C")
    }
    unowned var refa: A = A()

}

class ArcTests: XCTestCase {
    
    func testArc() {
        var a1:A? = A()
        var a2:A? = a1
        var a3:A? = a1

        a1 = nil
        a2 = nil
        a3 = nil
        
        
    }
    
    func testRealocation() {
        
        var a:A? = A()
        var b:B? = B()
        var c:C? = C()
        a?.refb = b
        b?.refa = a
        
        a = nil
        b = nil
        
        
    }
    
}
