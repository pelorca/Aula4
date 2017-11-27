//: Playground - noun: a place where people can play

import UIKit

var str = "Dali 0 x 4 Fabio"
let range = 1...5
let range2 = 1..<5

var array = [1,2,3,4, 5]

array[0..<1] = [0,1]

let metade = str.index(str.startIndex, offsetBy: str.count/2)
str[str.startIndex..<metade]


var indexInicial = 0
var indexFinal = 3

var start = str.index(str.startIndex, offsetBy: indexInicial)
var end = str.index(str.startIndex, offsetBy: indexInicial + indexFinal)
var teste = String(str[start...end])


var total = 0

for i in 0...10 {
    total += 1
}
total

for c in "Dali  apanhar sabado de novo" {
    //print(c)
}
let array1 = [1,2,3,4,5,6,7,8,10]


for (item, c) in array1.reversed().enumerated() {
    //print("\(item) : \(c)")
}

let dicionario = [1:"Teste", 2:"asdasda", 3:"sdfdfasdfgggg"]



for item in dicionario {
    //print("\(item.key) : \(item.value)")
}

//let something = true
//repeat {

//} while something

var index = 0

func soma(com a:Int, e b: Int)-> Int {
    return a+b
}

soma(com: 1, e: 2)

func somasubstrai(_ a:Int, _ b:Int)-> (Int, Int) {
    return(soma(com: a, e: b), a-b)
}

somasubstrai(2, 3)

var resultadoSoma = 0

func soma(referencia:inout Int, _ valores: Int...){
    for i in valores {
        resultadoSoma += i
    }
}

soma(referencia:&resultadoSoma,1,2,3,4,5,6)

resultadoSoma

//func find(inArray values: [Any], withPredicate predicate: (Any)->Bool)->Int? {
 //   for (i,v) in values.enumerated() {
   //     if predicate(v) {
     //       return i
       // }
    //}
   // return nil
//}

//var index2 = find(inArray: [1,2,3,1,5,6])
//{$0 as! Int == 1}


func fazConta(_ operacao: String) -> ((Double, Double) -> Double)? {
    switch operacao {
    case "+":
        return {$0 + $1}
     case "-":
        return {$0 - $1}
    case "*":
        return {$0 * $1}
    case "/":
        return {$0 / $1}
     default:
        return nil
    }
}

fazConta("*")?(1,2)


func binaryOperation(_ op: String) -> ((Double,Double)-> Double)? {
    func sum(_ a: Double, _ b:Double) -> Double {
        return a + b
    }
    func subtract(_ a: Double, _ b:Double) -> Double {
        return a - b
    }
    
    var dict: [String: (Double, Double)->Double] = [:]
    dict["+"] = sum
    dict["-"] = subtract
    
    return dict[op]
}

binaryOperation("+")?(1,3)


func interator(_ array:[Int]) ->()->Int? {
    var i = 0
    return {
        i += 1
        return i<array.count ? array[i-1] : nil
    }
}
let a = [1,2,3,4,5]
let b = interator(a)



func processUser( name: String) -> (Float, String)? {
    
    let dict1 = ["Dali": -500.0,"Fabão":-500.0]
    let dict2 = ["Dali":"Tanguinha","Fabão":"Puro Oleo"]
    
    guard let money = dict1[name] else { return nil }
    guard let sobrenome = dict2[name] else { return nil}
   
    
    return (Float(money),"\(name) \(sobrenome)")
}


processUser(name: "Fabão")


var overflow =  Int.max
overflow = overflow &+ 1

2 + 2 + 2
(2 << 2) << 2

var idade = 32

assert(idade >= 0, "Idade não pode ser maior que zero")

class Movie {
    
    static let defaultMovie = "Movie"
    static let defaultDiretor = "Diretor"
    
    static func printMovie(){
        print(Movie.defaultDiretor)
    }
    
    var title: String
    let director: String
 
    var description: String {
        return "\(self.title) : \(self.director)"
    }
    var duration: Double
    var durationHour: Double {
        get {
            return duration/60
        }
        set {
            self.duration = newValue*60
        }
    }
    
    var durationMin: Double {
        get {
            return duration*60
        }
        set {
            self.duration = newValue/60
        }
    }

    init(_ title: String, _ director: String, _ duration: Double) {
        self.title  = title
        self.director = director
        self.duration = duration
    }
    
    deinit {
        print("morri")
    }
    
    
    
}




postfix operator %

var percentage = 25%

postfix func % (percentage: Int) -> Double {
    return (Double(percentage) / 100)
}

let number = 10
let divisor = 2

print(number % divisor)










































































































