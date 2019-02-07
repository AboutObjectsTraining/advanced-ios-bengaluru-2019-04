// Copyright (C) 2019 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

import XCTest

class Tests: XCTestCase
{
    var fred: Person!
    let barkSelector = #selector(Dog.bark)
    let meowSelector = #selector(Cat.meow)
    let growlSelector = #selector(Dog.growl)
    let squawkSelector = #selector(Parrot.squawk)

    override func setUp() {
        super.setUp()
        fred = Person(name: "Fred")
        fred.pets = [Dog(name: "Rover"), Cat(name: "Fluffy"), Parrot(name: "Polly")]
        print()
        print(fred!)
    }
    override func tearDown() {
        print()
    }
    
    func testForwarding() {
        if fred.responds(to: barkSelector) {
            fred.perform(barkSelector)
        }
        
        if fred.responds(to: growlSelector) {
            fred.perform(growlSelector)
        }
        
        if fred.responds(to: squawkSelector) {
            fred.perform(squawkSelector)
        }
        
        if fred.responds(to: meowSelector){
            fred.perform(meowSelector)
        }
    }
}
