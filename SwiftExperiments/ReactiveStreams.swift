//
//  ReactiveStreams.swift
//  SwiftExperiments
//
//  Created by David Karnok on 2017. 01. 05..
//  Copyright © 2017. David Karnok. All rights reserved.
//

import Foundation

protocol Subscription {

    func request(n: Int64)
    
    func cancel()
}

/// Represents a consumer of items and/or an error or completion signals.
protocol Subscriber {
    associatedtype T
    
    func onSubscribe(s: Subscription)
    
    func onNext(t: T)
    
    func onError(t: Error)
    
    func onComplete()
}

protocol Publisher {
    
    associatedtype T
    
    func subscribe<S: Subscriber>(s: S) where S.T == T
}

protocol Processor : Publisher, Subscriber {

}

