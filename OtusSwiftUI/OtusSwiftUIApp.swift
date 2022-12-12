//
//  OtusSwiftUIApp.swift
//  OtusSwiftUI
//
//  Created by  Pavel Chilin on 04.12.2022.
//

import SwiftUI

@main
struct OtusSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(EmployeeListViewModel())
        }
    }
}
