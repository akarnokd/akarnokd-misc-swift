//
//  SubscriptionHelper.swift
//  SwiftExperiments
//
//  Created by David Karnok on 2017. 01. 06..
//  Copyright © 2017. David Karnok. All rights reserved.
//

import Foundation

final class SubscriptionHelper {
    static let CANCELLED : Subscription = CancelledSubscription()
    
    static func set(field : inout Subscription, s: Subscription) -> Bool {
        return false
    }
}

final class CancelledSubscription : Subscription {
    
    func request(n: Int64) {
        // ignored
    }
    
    func cancel() {
        // ignored
    }
}
