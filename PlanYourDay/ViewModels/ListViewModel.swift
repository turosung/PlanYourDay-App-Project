//
//  ListViewModel.swift
//  PlanYourDay
//
//  Created by Nuhu Sulemana on 09/07/2023.
//

import Foundation

/*
 ListViewModel will contain all our CRUD functions
 CREATE
 READ
 UPDATE
 DELETE
 */

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the 1st item", isCompleted: false),
            ItemModel(title: "This is the 2nd item", isCompleted: true),
            ItemModel(title: "Last item on the list", isCompleted: false),
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to )
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index] = item.updateCompletion()
        }
    }
}
