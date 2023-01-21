//
//  ContentView.swift
//  Fruits
//
//  Created by watariryo on 2023/01/14.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
    
    var fruit: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruit.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruit")
            .navigationBarItems(
                trailing: Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }//: Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }
            )

        }//: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
    }
}
