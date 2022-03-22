//
//  TripPlan.swift
//  CICDUnitTest
//
//  Created by Linkon Sid on 22/3/22.
//

import Foundation
import UIKit

class Hotel{
    private var name:String, location:String, cost:Double
    init(name:String, location:String, cost:Double) {
        self.name = name
        self.location = location
        self.cost = cost
    }
    func getHotelCostPerNight()->Double{
        return cost
    }
}
class TripPlan{
    private var destination:String,days:Int,partners:Int
    private let budget:Double
    private var spent:Double = 0
    private var hotel:Hotel?
    private var hasStarted = false
    private var hasEnded = false
    
    init(destination:String,budget:Double,days:Int,partners:Int){
        self.destination = destination
        self.budget = budget
        self.days = days
        self.partners = partners
    }
    func setHotel(hote:Hotel?){
        self.hotel = hote
    }
    func getBudget()->Double{
        return budget
    }
    func startTrip(){
        hasStarted = true
        print("trip started")
    }
    func endTrip(){
        hasEnded = true
        print("trip ended")
    }
    func spent(money:Double){
        guard spent>0 else{
            print("no budget to spend")
            return
        }
        spent -= money
    }
    func getTotalSpent()->Double{
        return spent
    }
}
