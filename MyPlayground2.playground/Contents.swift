//: Playground - noun: a place where people can play

import UIKit


public class List<T> {
    var value: T!
    var nextItem: List<T>?
    
    public convenience init!(_ values: T...) {
        self.init(Array(values))
    }
    
    init!(_ values: Array<T>) {
        var values = values
        if values.count == 0 {
            return nil
        }
        value = values.removeFirst()
        nextItem = List(values)
    }
}

class LLNode{
    var key:Int!
    var nextNode:LLNode!
}

class LinkedList{
    
    var Head:LLNode!
    func insert(key:Int){
        
        if(Head == nil){
            Head = LLNode()
            Head.key = key
            Head.nextNode = nil
        }
        else{
            var current:LLNode! = Head
            while(current.nextNode != nil){
                current = current.nextNode
            }
            
            current.nextNode = LLNode()
            current.nextNode.key = key
            current.nextNode.nextNode = nil
        }
    }
    
    
    
}



//
extension LinkedList {
    //P01
    var last:Int{
        var current:LLNode! = Head
        while(current.nextNode != nil){
            current = current.nextNode
        }
        return current.key
    }
    
    //P02
    var  pennultimate: Int? {
        var current:LLNode! = Head
        while(current.nextNode!.nextNode != nil){
            current = current.nextNode!
        }
        return current.key
    }
    //P03
    subscript(index: Int)-> Int? {
        var current:LLNode! = Head
        var count = 0
        if index < 0 { return nil}
        while(count != index && current.nextNode != nil){
            count += 1
            current = current.nextNode
        }
        return current.key
    }
    
    //P04
    var length: Int {
        var current:LLNode! = Head
        var count = 0
        while current != nil {
            count += 1
            current = current.nextNode
        }
        return count
    }
    //P05
    func reverse() {
        var secondNode:LLNode! = Head
        var firstNode:LLNode! = Head.nextNode
        secondNode.nextNode = nil
        var temp:LLNode!
        while(firstNode != nil){
            temp = firstNode.nextNode
            firstNode.nextNode = secondNode
            secondNode = firstNode
            firstNode = temp
        }
        Head = secondNode
    }
    
    func isPalindrome() -> Bool {
        var firstIndex = 0
        var lastIndex = self.length-1
        while(firstIndex <= lastIndex){
            if(self[firstIndex] != self[lastIndex]){
                return false
            }
            firstIndex += 1
            lastIndex -= 1
        }
        return true
    }
    
    //P07
    func flatten() -> LinkedList{
        return self
    }
    
    
    func printLista() {
        var current:LLNode! = Head
        var str = "[ "
        while current != nil {
            str += "\(current.key!) , "
            current = current.nextNode
        }
        print(str + "]")
    }
    
}


var lista = LinkedList()
var lista2 = LinkedList()

lista2.insert(key: 1)
lista2.insert(key: 2)
lista2.insert(key: 3)
lista2.insert(key: 2)
lista2.insert(key: 1)

for i in 1...10 {
    lista.insert(key: i)
}
lista.last
lista.pennultimate
lista.length
lista[5]
lista.reverse()
lista.printLista()
lista2.isPalindrome()






