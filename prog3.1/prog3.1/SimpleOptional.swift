//
//  SimpleOptional.swift
//  prog3.1
//
//  Created by Tobyn Packer on 8/1/18.
//  Copyright © 2018 Tobyn Packer. All rights reserved.
//

import Foundation

class SimpleOptional : CustomStringConvertible{
    
    //STORED PROPERTIES
    
    let value: Any
    let hasValue: Bool
    //set or not
    
    //COMPUTED PROPERTIES
    
    var unwrap: Any{
        assert(self.hasValue, "fatal error: cannot unwrap a NIL")
        return self.value
    }
    
    var description: String{
        if self.hasValue{
            return "SimpleOptional(\(self.value))"
        } else{
            return "nil"
        }
    }
    
    //IINITIALISERS
    
    fileprivate init(){
        self.value = "Undefined"
        self.hasValue = false
    }
    
    init(value: Any) {
        self.value = value
        self.hasValue = true
    }
}

func == (left: SimpleOptional, right: SimpleOptional) -> Bool{
    if right.hasValue == left.hasValue{
        return true
    } else{
        return false
    }
}

func != (left: SimpleOptional, right: SimpleOptional) -> Bool{
    return !(left == right)
}

let NIL: SimpleOptional = SimpleOptional()
