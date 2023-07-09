//
//  ItemModel.swift
//  PlanYourDay
//
//  Created by Nuhu Sulemana on 06/07/2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
