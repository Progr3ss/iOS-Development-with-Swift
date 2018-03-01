//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//one-side ranges

let esports = ["Hearthstone", "CS:GO", "League of Legends",
               "Super Smash Bros", "Overwatch", "Gigantic"]

esports[3...]

esports[3..<esports.endIndex]
esports[..<2]

//Infinite sequences

let uppercase = ["A", "B", "C", "D","E","F"]

let asciiCodes = zip(65..., uppercase)
print(Array(asciiCodes))

//Patten matching
func gameRank(_ index: Int) -> String {
    switch index {
    case ...1:
        return "Oldie but goodie"
    case 3...:
        return "Meh"
    default:
        return "Awesome-sauce!"
    }
}
gameRank(2)
let a = "martin"
a.isEmpty
a.count
a.reversed()
for c in a{
    print(c)
}

let c = type(of: a)

let firstVerse = """
Half a league, half a league,
Half a league onward,
All in the valley of Death
Rode the six hundred.
"Forward, the Light Brigade!
"Charge for the guns!" he said:
Into the valley of Death
Rode the six hundred.
"""

class MyClass: NSObject {
    func print() { Swift.print("hello") } // not visible to Obj-C
    @objc func show() { print() } // visible to Obj-C
}

@objc extension MyClass {
    func f(_ foo: String?) {}
    @nonobjc func g(_ goo: Int?) {}
}

class Super {
    @objc func foo() {}
}
class Sub: Super {
    // inferred @objc
    override func foo() {
        
    }

}

@objc protocol MyDelegate {
    func bar()
    
}

class MyThirdClass: MyDelegate {
    func bar()  {
        print("bar")
    }
}


