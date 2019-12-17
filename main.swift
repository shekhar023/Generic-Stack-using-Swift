//
//  main.swift
//  Generic_Stack
//
//  Created by Shekhar Chaudhary on 19/07/19.
//  Copyright © 2019 Shekhar Chaudhary. All rights reserved.
//

import Foundation

struct Stack<Elements>{
    
    var item = [Elements]()
    
    mutating func push (items : Elements){
        item.append(items)
    }
    
    mutating func pop()-> Elements{
        
        if !item.isEmpty{
            
            return print(item.removeLast()) as! Elements
        }
        else{
            return ("The stack is Empty") as! Elements
        }
    }
}

var stack = Stack<Any>()

func add()-> Any{
    
    let item : Any = readLine()!
    return item
}

print("Press 1 to Add and 2 to remove")
let choice = Int(readLine()!)

switch(choice){
case 1 :stack.push(items: add())
    break
    
case 2 : stack.pop()
    break

case 3 : break
    
case 4: print(Stack<Any>.self)
    
default: print("Enter Proper Choice")
}


