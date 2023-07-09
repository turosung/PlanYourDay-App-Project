//
//  PlanYourDayApp.swift
//  PlanYourDay
//
//  Created by Nuhu Sulemana on 04/07/2023.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - this is our data point
 View - UI
 ViewModel - manages Models for View 
 */

@main
struct PlanYourDayApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
        }
    }
}
