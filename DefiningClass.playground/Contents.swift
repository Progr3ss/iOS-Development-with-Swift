//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Distance {
    
    //type properties: type properties
    //are connected to the type rather than the object
    static let kmPerMile = 1.609834
    static let feetPerKm: Double = 5280
    var  miles : Double
    
    var km: Double {
        
        get{
            return Distance.toKm(miles: miles)
        }
        set(newKm){
            miles = Distance.toMiles(km: newKm)
        }
    }
    
    
    
    init(miles: Double) {
        self.miles = miles
        self.km = 0
        self.km = miles * Distance.toKm(miles: miles)
//        self.km = miles * Distance.kmPerMile
        
    }
    
    //override init
    //convenience: alternative initializers that add the keyword conveience
    
    convenience init(km: Double) {
//        self.km = km
//        self.miles = Distance.toMiles(km: km)
        self.init(miles: Distance.toMiles(km: km))
        
    }
    
    
    //Methods: Functions defined inside a class are called methods
    /*
     instance methods are relevant to an instance of a type
     type methods apply to the type itself
     */
    
    //instance method
    func displayMiles() -> String {
        return "\(Int(miles)) miles "
    }
    
    static func toKm(miles: Double) -> Double {
        return miles * Distance.kmPerMile
    }
    //overriding functions with different parameter names
    static func toKm(feet:Double) -> Double {
        return feet / feetPerKm
    }
    
    static func toMiles(km:Double) -> Double {
        return km / kmPerMile
    }
    
    
}

//create or instantiate your class
var distance = Distance(miles: 60)
Distance.kmPerMile
distance.miles
//call instance method using a Distance object
print(distance.displayMiles())
//override functions
let km = Distance.toKm(miles: 60)
let km2 = Distance.toKm(feet: 100)
//override init
let dist1 = Distance(miles: 60)
let dist2 = Distance(km: 100)

//Class inheritance: multiple classes can inherit the implementation of one class through subclassing, forming an is-a relationship


class Telephone {
    
    func makeCall() {
        //make a call here
    }
    func hangUp() {
        //hang up here
    }
    
}
class landline:Telephone {
    
}

class Cellular:Telephone {
    //overriding a method will by default, prevent the supercalss's implementaitons of that methods from running
    override func makeCall()  {
        //make cellular call
        
    }
    func sendSMS() {
        //send SMS here
    }
}
//...

func hangUpAndRedial(telephone:Telephone) {
    
    telephone.hangUp()
    telephone.makeCall()
}
/*
 Inheritance has issues, however, that are worth noting.
 
 Swift only permits inheritance from one class. iPhones aren’t simply telephones any more. They’re game consoles, e-readers, video players, compasses, GPS devices, step counters, heart rate monitors, fingerprint readers, earthquake detectors, and the list goes on. How can an iPhone share common functionality and implementation with these other devices? According to the simple inheritance model, they can’t.
 
 Sharing code can only happen between subclasses and superclasses. Non-smart phones and push-button phones both have push-button input, but neither of them inherits from each other. iPads have iOS too, but they aren’t telephones. These common implementations couldn’t be shared, according to the pure inheritance model.
 
 Sometimes it’s not so clear which identity is the most relevant to subclass. Should you have subclassed smartphones by operating system or by manufacturer? Both are important and could potentially contain different functionality or properties.
 
 
 */


//Protocols: are similar to interfaces in other languges
//protocols methods only indicate the definition of the method and not the actual body of the method

protocol Telephone2 {
    var phoneNo: Int{get set}
    func makeCall()
    
    
    func hangUp()
    
    
    
}
//when methods are implemented in the telephone protocl they no longer need to be implemented in a class that adopts that protocol.
extension Telephone2 {
    func makeCall() {
        print("make a call")
        
    }
    
    func hangUp() {
        print("hang up")
    }
    
}

//No longer needs to implement the methods in telephone 2
class Landline2:Telephone2 {
    //protocol property
    var phoneNo: Int
    init(phoneNo: Int) {
        self.phoneNo = phoneNo
    }
    
//    func makeCall() {
//
//    }
//
//    func hangUp() {
//
//    }
    
    
}
//Landline2.

//Structures
/*
 Structures can't inherit
 structures can have memberwise initializers
 structures are value types
 */
struct Telephone3 {
    
}
var telephone3 = Telephone3()
//memverwise init
struct Distance2 {
    var miles:Double
}


func +(left: [String:String], right:[String:String]) -> [String:String] {
    var returnDictionary = left
    for (key,value) in right {
        returnDictionary[key] = value
    }
    return returnDictionary
}
var c = ["a"] + ["b"]
c

