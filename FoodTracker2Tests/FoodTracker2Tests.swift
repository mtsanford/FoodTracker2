//
//  FoodTracker2Tests.swift
//  FoodTracker2Tests
//
//  Created by Work on 8/12/15.
//  Copyright © 2015 Mark Sanford. All rights reserved.
//

import XCTest
@testable import FoodTracker2

class FoodTracker2Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // MARK: FoodTracker Tests
    
    func testMealInitialization() {
        
        // Success
        let potentialItem = Meal(name: "New meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")
        
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")

        
    }

}
