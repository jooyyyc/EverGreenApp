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
            ZStack{
                
                VStack{
                    //budget initializer
                    Group{
                        Text("BUDGET MAKER")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .frame(width: 370.0, height: 90.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                            .border(/*@START_MENU_TOKEN@*/Color(hue: 0.781, saturation: 0.824, brightness: 0.223)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .cornerRadius(15)
                        Text("ENTER BUDGET:")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.purple)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        TextField("$", value: $budget, format: .number)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                        .textFieldStyle(.roundedBorder)
                                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.purple/*@END_MENU_TOKEN@*/)
                                        
                                        
                        Spacer()
                            .frame(height: 10.0)
                        Text("CHECK OFF 3 EXPENSES: ")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.purple)
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                    }
                    //checkboxes
                    Group{
                        Toggle(isOn: $isFood) {
                            Text("FOOD")
                                .font(.title)
                        }
                        .onChange(of: isFood) { value in
                            addVal()
                        }
                        .toggleStyle(iOSCheckboxToggleStyle())

                        Toggle(isOn: $isClothes) {
                            Text("CLOTHES")
                                .font(.title)
                        }
                        .toggleStyle(iOSCheckboxToggleStyle())
                        Toggle(isOn: $isSkincare) {
                            Text("SKINCARE")
                                .font(.title)
                        }
                        .toggleStyle(iOSCheckboxToggleStyle())
                        Toggle(isOn: $isShoes) {
                            Text("SHOES")
                                .font(.title)
                        }
                        .toggleStyle(iOSCheckboxToggleStyle())
                        Toggle(isOn: $isTransport) {
                            Text("TRANSPORT")
                                .font(.title)
                        }
                        .toggleStyle(iOSCheckboxToggleStyle())
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 350.0, height: 50.0)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.807, saturation: 0.152, brightness: 0.977)/*@END_MENU_TOKEN@*/)
                    
                    
                    Spacer()
                        .frame(height: 20.0)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .buttonBorderShape(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=shape: ButtonBorderShape@*/.capsule/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                    
                    Button {
                        print("Edit button was tapped")
                        addVal()
                        print(priorities)
                        globalBudget = budget
                    } label: {
                        Label("Generate Budget!", systemImage: "dollarsign.circle.fill")
                    }
                        
                    
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.purple/*@END_MENU_TOKEN@*/)
                    .background(Color(hue: 0.761, saturation: 0.059, brightness: 0.989))
                    .border(/*@START_MENU_TOKEN@*/Color.purple/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                    NavigationLink(destination: PersonalBudget()) {
                        Text("View your Budget!")
                    }
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
