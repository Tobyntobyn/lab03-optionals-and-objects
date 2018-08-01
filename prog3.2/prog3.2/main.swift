//
//  main.swift
//  prog3.2
//
//  Created by Tobyn Packer on 8/1/18.
//  Copyright © 2018 Tobyn Packer. All rights reserved.
//

import Foundation

var x: Int?

x = nil

print("x=\(x as Int?)")

if let xunwrapped = x{
    print("x has a value of \(xunwrapped)")
} else{
    print("x has no value")
}
/*
if x == nil{
    print("x has no value")
} else{
    print("x has a value of \(x!)")
}
*/
x = 3

print("x=\(x as Int?)")

if x != nil{
    print("x has the value of \(x!)")
} else{
    print("x has no value")
}

var z: Fraction?

z = Fraction(num:1, den:3)

print("z=\(z as Fraction?)")

if let zu = z{
    print("z has a value of \(zu)")
    print("The decimal property of z's value is \(zu.decimal)")
} else{
    print("z has no value")
}
/*
if z != nil{
    print("z has a value of \(z!)")
    print("The decimal value of z's value is \(z!.decimal)")
} else{
    print("z has no value")
}
*/
