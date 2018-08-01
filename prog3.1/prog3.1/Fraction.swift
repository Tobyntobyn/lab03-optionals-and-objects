//
//  Fraction.swift
//  prog2.1
//
//  Created by Tobyn Packer on 7/20/18.
//  Copyright © 2018 Tobyn Packer. All rights reserved.
//
import Foundation

class Fraction : CustomStringConvertible{
    
    //Stored propertities
    private let num: Int; //numerator
    private let den: Int; //demon
    
    // COMPUTED PROPERTIES
    
    /**
     Converts fraction to a Float value
     
     - returns: Float Decimal value of the fraction
     */
    var decimal: Float {
        get {
            // num and den are of type Int, therefore,
            // they need to be explicitly converted to Floats
            return Float(self.num)/Float(self.den);
        }
    }
    /**
     Converts object to a string description
     
     - returns: String String representation of a fraction
     */
    var description: String {
        if(self.den == 1){
            return "\(self.num)"
        }
 
        return "\(self.num)/\(self.den)"
    }
    
    // Initalisers
    convenience init() {
        //init(1, 0)
//        self.num = 1
//        self.den = 0
        self.init(num: 1, den: 0 );
    }
    
    init(num: Int, den: Int) {
        // Setting numerator to 0 and
        // denominator to 1 is equivalent
        // to setting the fraction to zero
        assert(den != 0, "Denominator cannot be zero")
        
        var num = num
        var den = den
        
        if(den < 0){
            // If the denominator is negative
            // multiply the numerator and
            // denominator by -1 - this
            // ensures the denominator is
            // always positive, and numerator
            // carries the appropriate sign
            num = -num
            den = -den
        }
        
        //Finds greatest common denom
        for gcd in (1...den).reversed(){
            //common denom found, divide num and den by it
            if(num%gcd == 0 && den%gcd==0){
                num /= gcd
                den /= gcd
                break
            }
        }
        self.num = num
        self.den = den
        
    }
    
    convenience init(num: Int) {
        // Setting numerator to 0 and
        // denominator to 1 is equivalent
        // to setting the fraction to zero
        self.init(num: num, den: 1);
    }
    
    func add(_ f: Fraction) -> Fraction{
        return Fraction(num: self.num*f.den + self.den*f.num,
                        den: self.den*f.den)
    }
    
    func subtract(_ f: Fraction) -> Fraction{
        return Fraction(num: self.num*f.den - self.den*f.num,
                        den: self.den*f.den)
    }
    
    func multiply(_ f: Fraction) -> Fraction{
        return Fraction(num: self.num*f.num, den: self.den*f.den)
    }
    
    func divide(_ f: Fraction) -> Fraction{
        return Fraction(num: self.num*f.den, den: self.den*f.num)
    }
    
    /**
     Add a fraction to fraction.
     
     - parameter f1: Fraction to add to
     - parameter f2: Fraction to be added
     
     - returns: The result of f1 + f2.
     */
    static func add(_ f1: Fraction, to f2: Fraction) -> Fraction{
        return Fraction(num: f1.num*f2.den + f1.den*f2.num,
                        den: f1.den*f2.den)
    }
    
    static func subtract(_ f1: Fraction, from f2: Fraction) -> Fraction{
            return f2.subtract(f1)
    }
    
    static func multiply(_ f1: Fraction, by f2: Fraction) -> Fraction{
        return f1.multiply(f2)
    }
    
    static func divide(_ f1: Fraction, by f2: Fraction) -> Fraction{
        return f1.divide(f2)
    }
    
    /**
     Adds an integer to self.
     
     - parameter x: Integer to add to self
     
     - returns: Fraction The result of adding x to self.
     */
    func add(_ x: Int) -> Fraction{
        return Fraction(num: self.num + self.den*x,
                        den: self.den)
    }
    
    func subtract(_ x: Int) -> Fraction{
        return Fraction(num: self.num - self.den*x,
                        den: self.den)
    }
    
    func multiply(_ x: Int) -> Fraction{
        return Fraction(num: self.num*x, den: self.den)
    }
    
    func divide(_ x: Int) -> Fraction{
        return Fraction(num: self.num, den: self.den*x)
    }
    
    /**
     + operator between two Fractions
     */
    static func +(f1: Fraction, f2: Fraction) -> Fraction{
        return f1.add(f2)
    }
    
    static func -(f1: Fraction, f2: Fraction) -> Fraction{
        return f1.subtract(f2)
    }
    
    static func *(f1: Fraction, f2: Fraction) -> Fraction{
        return f1.multiply(f2)
    }
    
    static func /(f1: Fraction, f2: Fraction) -> Fraction{
        return f1.divide(f2)
    }
    
    /**
    overloading operators with Frations and int
    */
    static func +(f1: Fraction, f2: Int) -> Fraction{
        return f1.add(f2)
    }
    static func -(f1: Fraction, f2: Int) -> Fraction{
        return f1.subtract(f2)
    }
    
    static func *(f1: Fraction, f2: Int) -> Fraction{
        return f1.multiply(f2)
    }
    
    static func /(f1: Fraction, f2: Int) -> Fraction{
        return f1.divide(f2)
    }
}
