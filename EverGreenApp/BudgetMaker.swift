//
//  BudgetMaker.swift
//  EverGreenApp
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI
struct iOSCheckboxToggleStyle:
    ToggleStyle{
    func makeBody(configuration: Configuration) -> some View {
        Button(action: {
            configuration.isOn.toggle()
        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")

                configuration.label
            }
        })
        
    }
}

struct BudgetMaker: View {
    //expenses variables
    @State var budget = 0
    @State var e1 = 0
    //checkboxes variables
    @State var isFood = false
    @State var isClothes = false
    @State var isSkincare = false
    @State var isShoes = false
    @State var isTransport = false
    func addVal(){
        if priorities.count<4{
            if isFood{
                priorities.append(1)
            }
            if isClothes{
                priorities.append(2)
            }
            if isSkincare{
                priorities.append(3)
            }
            if isShoes{
                priorities.append(4)
            }
            if isTransport{
                priorities.append(4)
            }
        }
        else{
            priorities.removeAll()
            priorities.append(0)
        }
    }
    var body: some View {
        NavigationStack {
            VStack{
                //budget initializer
                Group{
                    Text("Budget Maker")
                    Text("Enter Budget:")
                    TextField("$", value: $budget, format: .number)
                                    .textFieldStyle(.roundedBorder)
                                    .padding()
                    Spacer()
                }
                //checkboxes
                Group{
                    Toggle(isOn: $isFood) {
                        Text("Food")
                    }
                    .onChange(of: isFood) { value in
                        addVal()
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())

                    Toggle(isOn: $isClothes) {
                        Text("Clothes")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    Toggle(isOn: $isSkincare) {
                        Text("Skincare")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    Toggle(isOn: $isShoes) {
                        Text("Shoes")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                    Toggle(isOn: $isTransport) {
                        Text("Transport")
                    }
                    .toggleStyle(iOSCheckboxToggleStyle())
                }
                Spacer()
                Button("Confirm Expenses + Budget"){
                    addVal()
                    print(priorities)
                    globalBudget = budget
                }
                NavigationLink(destination: PersonalBudget()) {
                    Text("View your Budget!")
                }
            }
        }
    }
}

struct BudgetMaker_Previews: PreviewProvider {
    static var previews: some View {
        BudgetMaker()
    }
}
