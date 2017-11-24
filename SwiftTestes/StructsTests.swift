//
//  SwiftTestes.swift
//  SwiftTestes
//
//  Created by Aloc SP08161 on 24/11/2017.
//  Copyright © 2017 Scopus. All rights reserved.
//

import XCTest

class MovieC {
    let director: String
    let titleC: String
    
    
    convenience init() {
        self.init(director: "", title: "")
    }
    
    init(director: String, title: String) {
        self.titleC = title
        self.director = director
    }
 }

typealias MovieS = Movie
struct Movie {
    let director: String
    let titleS: String
    
    init() {
        director = ""
        titleS = ""
    }
 
    init(director: String, title: String) {
        self.titleS = title
        self.director = director
    }
    
    init?(dict:[String: String]) {
        titleS = dict["title"] ?? "Teste"
        director =  dict["director"] ?? "asdas"
     }
    
    
}

class StructsTests: XCTestCase {
    
    func testStruct() {
       let movie = Movie(director: "Diretor", title: "Titulo")
        XCTAssertEqual(movie.titleS, "Titulo")
       
        
        guard Movie.init(dict: ["director":"xpto"]) != nil  else {
            XCTFail("Falha....")
            return
        }
    }
    
    func testStructXClass() {
        
        let movieS = MovieS(director: "DiretorS", title: "TituloS")
        let movieC = MovieC(director: "DiretorC", title: "TituloC")
        
        func chupaJava(n: Any)->String {
            if let filme = n as? MovieS {
                return "Struct: \(filme.titleS)"
            }
            if let filme = n as? MovieC {
                return "Class: \(filme.titleC)"
            }
            return ""
        }
        
        print(chupaJava(n: movieC))
        
        
    }
    
}
