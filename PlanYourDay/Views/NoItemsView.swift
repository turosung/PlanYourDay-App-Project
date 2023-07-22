//
//  NoItemsView.swift
//  PlanYourDay
//
//  Created by Nuhu Sulemana on 20/07/2023.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                Text("There are not items!")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Do you want to stay organized and productive through your day? You can add a bunch of items for the day by clicking the add button !")
                    .padding(.bottom, 20)
                NavigationLink(
                    destination: AddView(),
                               label: {
                                    Text("Add Something🤔")
                                       .foregroundColor(.white)
                                       .font(.headline)
                                       .frame(height: 55)
                                       .frame(maxWidth: .infinity)
                                       .background(animate ? secondaryAccentColor : Color.accentColor)
                                       .cornerRadius(10)
                })
                .padding(.horizontal, animate ? 30 : 50)
                .scaleEffect(animate ? 1.1 : 1.0)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            .onAppear(perform: addAnimation )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        })
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}
