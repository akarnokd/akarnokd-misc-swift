//
//  OperatorFusion.swift
//  SwiftExperiments
//
//  Created by David Karnok on 2017. 01. 05..
//  Copyright © 2017. David Karnok. All rights reserved.
//

import Foundation

protocol Queue {

    associatedtype E
    
    func offer(item: E) -> Bool
    
    func poll() throws -> E
    
    func isEmpty() -> Bool
    
    func clear()
}

protocol QueueSubscription : Queue, Subscription {
    
    func requestFusion(mode: Int) -> Int
}

struct FusionMode {
    static let NONE = 0
    
    static let SYNC = 1
    
    static let ASYNC = 2
    
    static let ANY = SYNC | ASYNC
    
    static let BOUNDARY = 4
}

protocol Callable {
    associatedtype E
    
    func call() throws -> E
}

protocol ScalarCallable : Callable {
    func call() -> E
}
