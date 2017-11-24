//
//  EnunTests.swift
//  SwiftTestes
//
//  Created by Aloc SP08161 on 24/11/2017.
//  Copyright © 2017 Scopus. All rights reserved.
//

import XCTest

enum NewEnun {
    
    case SUCCESS([String:String])
    case FAIL(String)
  
}


enum Color:String{
    case RED = "RED"
    case BLUE = "BLUE"
    case GREEN = "GREEN"
    case YELLOW =  "YELLOW"
 
    
    var descriptio:String {
        switch self {
        case .RED:
            return "RED"
        case .BLUE:
            return "BLUE"
        case .GREEN:
            return "GREEN"
        case .YELLOW:
            return "YELLOW"
        }
    }
}

class EnunTests: XCTestCase {
    
    func testColor() {
        
        XCTAssertEqual(Color.BLUE.descriptio,Color.BLUE.rawValue)
        
    }
    
    func testEnun() {
        
        let resultado = NewEnun.SUCCESS(["200" : "Sucesso"])
        let resultado1 = NewEnun.FAIL("")
        let resultado2 = NewEnun.FAIL("Erro")
        
        func Executa(op: NewEnun) {
            switch op {
                case .SUCCESS(let x):
                    XCTAssertEqual(x["200"],"Sucesso")
                case .FAIL(let x) where x.isEmpty:
                    XCTAssertEqual(x, "")
                case .FAIL(let x):
                    XCTAssertEqual(x, "Erro")
            }
            
        }
        
        Executa(op: resultado)
        Executa(op: resultado1)
        Executa(op: resultado2)
        
        
        
    }
    
    
    
}
