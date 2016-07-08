//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var table = [Any]()

table.append("coucou")
table.append(2.0)
table.append("lala")
table.append(["string"])
table.append(4)
table.append(4)
table.append(4)

table.count

for element in table {
    
    switch element {
        
    case is Int:
        print(element)

    case is Double:
        print(element)
        
    case is String:
        print(element)
        
    case is [String]:
        print("Array")
        
    default:
        print("default")
        
    }
        
}



