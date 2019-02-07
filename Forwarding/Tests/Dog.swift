// Copyright (C) 2019 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

import Foundation

class Dog: Being
{
    @objc func bark() {
        print("Woof, Woof!")
    }
    
    @objc func growl() {
        print("Grrrr!!!")
    }
}
