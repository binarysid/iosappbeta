//
//  CICDUnitTestTests.swift
//  CICDUnitTestTests
//
//  Created by Linkon Sid on 22/3/22.
//

import XCTest
@testable import CICDUnitTest

class CICDUnitTestTests: XCTestCase {
    var sut:TripPlan?
    override func setUpWithError() throws {
        sut = TripPlan(destination: "Shimla", budget: 20000, days: 3, partners: 2)
    }
    override func tearDownWithError() throws {
        sut = nil
    }
    func testTripBudgetWithHotelCost(){
        let hotel = Hotel(name: "Shimla hotel", location: "Shimla", cost: 10000)
        XCTAssertLessThan(hotel.getHotelCostPerNight(),sut!.getBudget(), "exceeds budget")
    }
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
