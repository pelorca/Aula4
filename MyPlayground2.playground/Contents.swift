//: Playground - noun: a place where people can play

import UIKit


class LLNode{
    var key:Any!
    var nextNode:LLNode!
}

class LLNodeList<T>{
    var key: T!
    var nextNode:LLNodeList!
}

class LinkedListAny{
    
    var Head:LLNodeList<Any>!
    func insert(key: Any){
        
        if(Head == nil){
            Head = LLNodeList()
            Head.key = key
            Head.nextNode = nil
        }
        else{
            var current:LLNodeList! = Head
            while(current.nextNode != nil){
                current = current.nextNode
            }
            
            current.nextNode = LLNodeList()
            current.nextNode.key = key
            current.nextNode.nextNode = nil
        }
    }
    
    
    
}


class LinkedList{
    
    var Head:LLNode!
    func insert(key:Any){
        
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

extension LinkedListAny {
    
    //P07
    func flatten() {
        
        
        
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
        return (current.key as! Int)
    }
    
    //P02
    var  pennultimate: Int? {
        var current:LLNode! = Head
        while(current.nextNode!.nextNode != nil){
            current = current.nextNode!
        }
        return (current.key as! Int)
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
        return (current.key as! Int)
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
    
  
    
    //P08
    func compress(){
        var prev:LLNode! = Head
        var current:LLNode! = Head.nextNode
        while(current != nil){
            if (prev.key as! Int) == (current.key as! Int) {
                current = current.nextNode
                prev.nextNode =  prev.nextNode.nextNode
            }
            else{
                prev = current
                current = current.nextNode
            }
        }
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

/*

extension List where T: Equatable {
    //P09
    func pack() -> ListofList<T>! {
        var current = nextItem
        var currentString = nextItem.value
        current = current?.nextItem
        var currentSubList:List<T>
        var tempArray = [T]()
        var tempListArray = [List<T>]()
        tempArray.append(currentString!)
        while(current != nil){
            if(current?.value == currentString){
                tempArray.append((current?.value)!)
            }
            if(current?.value != currentString || current?.nextItem == nil)
            {
                currentSubList = List(tempArray)
                tempListArray.append(currentSubList)
                tempArray.removeAll()
                tempArray.append((current?.value)!)
                currentString = current?.value
            }
            current = current?.nextItem
        }
        return ListofList(tempListArray)
        
    }
    
    func encode() -> ListofEncodeList<T>! {
        var tempArray = [(Int,T)]()
        let currentOuter1 = self.pack()
        var count = 1
        var current = currentOuter1.value.nextItem
        while( current != nil){
            count++
            current = current.nextItem
        }
        tempArray.append((count,currentOuter1.value.value))
        var currentOuter = self.pack().nextItem
        while(currentOuter != nil){
            
            var count = 1
            var current = currentOuter.value.nextItem
            while( current != nil){
                count++
                current = current.nextItem
            }
            tempArray.append((count,currentOuter.value.value))
            currentOuter = currentOuter.nextItem
        }
        
        
        return ListofEncodeList(tempArray)
    }
    
}
extension List {
    //P07
    func flatten() -> List {
     
        return self
    }
}*/



//1 2 3 4 5 6 8
/*var lista = LinkedList()
var lista2 = LinkedList()

lista2.insert(key: 1)
lista2.insert(key: 1)
lista2.insert(key: 3)
lista2.insert(key: 3)
lista2.insert(key: 1)
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
lista2.compress()
lista2.printLista()*/


let lista3 = LinkedListAny()
lista3.insert(key: [1, 1])
lista3.insert(key: 2)
lista3.insert(key: [1, [3,8]])


//List<Any>(List<Any>(1, 1), 2, List<Any>(3, List<Any>(5, 8))).flatten()


//List(1, 1, 2, 3, 5, 8)










