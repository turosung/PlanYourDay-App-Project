//
//  AddView.swift
//  PlanYourDay
//
//  Created by Nuhu Sulemana on 05/07/2023.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type your plans here..", text: $textFieldText)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 55, alignment: .center)
                    .background(Color.secondary)
                    .cornerRadius(10)
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .frame(height: 55)
                        .font(.headline)
                        .frame(maxWidth: .infinity, idealHeight: 55, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(12)
        }
        .navigationTitle("Add your plan ✍🏽")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
    }
}
