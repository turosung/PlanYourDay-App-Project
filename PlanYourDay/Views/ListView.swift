//
//  ListView.swift
//  PlanYourDay
//
//  Created by Nuhu Sulemana on 04/07/2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the 1st item", isCompleted: false),
        ItemModel(title: "This is the 2nd item", isCompleted: true),
        ItemModel(title: "Last item on the list", isCompleted: false),
    ]
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Plan Your Day 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing:
                NavigationLink("Add", destination:AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListView()
        }
    }
}


