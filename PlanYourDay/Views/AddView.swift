//
//  AddView.swift
//  PlanYourDay
//
//  Created by Nuhu Sulemana on 05/07/2023.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type your plans here..", text: $textFieldText)
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: 55, alignment: .center)
                    .background(Color(red: 208/255, green: 208/255, blue: 208/255))
                    .cornerRadius(10)
                Button(action: saveButtonPressed, label: {
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
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed() {
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            dismiss.callAsFunction()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if (textFieldText.count < 3) || (textFieldText.isEmpty) {
            alertTitle = "Your plan should not be empty or should be at least 3 characters long 😰😨!!"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
