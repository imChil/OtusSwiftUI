//
//  SecondScreen.swift
//  OtusSwiftUI
//
//  Created by  Pavel Chilin on 11.12.2022.
//

import SwiftUI

struct SecondScreen: View {
    
    @EnvironmentObject var viewModel: EmployeeListViewModel
    
    var body: some View {
        NavigationView {
            List {
                listContent
            }
        }
    }
    
    var listContent: some View {
        ForEach(viewModel.employees) { employee in
            cell(employee: employee)
        }
    }

    func cell(employee: Employee) -> some View {
        NavigationLink(destination: EmployeeScreen(title: employee.name)) {
            Text(employee.name)
        }
    }
}

struct Employee {
    let name: String
}

extension Employee: Identifiable {
    var id: String  {
        UUID().uuidString
    }
}

final class EmployeeListViewModel: ObservableObject {
    
    @Published private(set) var employees = [
        Employee(name: "Савченков А. С."),
        Employee(name: "Иванов А. Ю."),
        Employee(name: "Добряков Я. П."),
        Employee(name: "Генералова Е. А."),
        Employee(name: "Шеренков К. В."),
        Employee(name: "Волкова Н. С."),
    ]
    
}



struct EmployeeScreen: View {
    
    let title: String
    
    var body: some View {
        Text(title)
    }
    
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen()
    }
}
