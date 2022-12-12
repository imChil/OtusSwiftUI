//
//  ContentView.swift
//  OtusSwiftUI
//
//  Created by  Pavel Chilin on 04.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowModalWindow = false
    @State var tabSelection: Int = 0
    
    var body: some View {
        TabView(selection: $tabSelection) {
            FirstScreen(tabSelection: $tabSelection)
                .tabItem {
                    Label("Main", systemImage: "globe.asia.australia.fill")
                }
                .tag(0)
            SecondScreen()
                .tabItem {
                    Label("Employees", systemImage: "person.3")
                }
                .tag(1)
            Text("Modal Window")
                .padding()
                .background(Color.mint)
                .cornerRadius(8)
                .foregroundColor(.white)
                .onTapGesture {
                    isShowModalWindow = true
                }
                
                .tabItem {
                    Label("ModalWindow", systemImage: "iphone.gen2.circle")
                }
                .tag(2)
                .sheet(isPresented: $isShowModalWindow, content: {
                    Text("This is Modal Window")
                })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
