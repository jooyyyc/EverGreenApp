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
                Color(red: 223/255, green: 216/255, blue: 245/255)
                    .ignoresSafeArea()
                VStack{
                    //budget initializer
                    Group{
                        Text("BUDGET MAKER")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .frame(width: 370.0, height: 70.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.431, green: 0.383, blue: 0.582)/*@END_MENU_TOKEN@*/)
                            .border(/*@START_MENU_TOKEN@*/Color(red: 0.166, green: 0.065, blue: 0.224)/*@END_MENU_TOKEN@*/, width: 8)
                            .cornerRadius(15)
                            .foregroundColor(Color(red: 190/255, green: 183/255, blue: 223/255))
                        Text("ENTER BUDGET:")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 110/255, green: 97/255, blue: 148/255))
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                        TextField("$", value: $budget, format: .number)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                                        .textFieldStyle(.roundedBorder)
                                        .cornerRadius(/*@START_MENU_TOKEN@*/20.0/*@END_MENU_TOKEN@*/)
                                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.432, green: 0.383, blue: 0.582)/*@END_MENU_TOKEN@*/)
                                        
                                        
                        Spacer()
                            .frame(height: 10.0)
                        
                    }
                    //checkboxes
                    VStack{
                        Text("CHECK OFF 3 EXPENSES:")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 110/255, green: 97/255, blue: 148/255))
                            .padding(/*@START_MENU_TOKEN@*/[.top, .leading, .trailing]/*@END_MENU_TOKEN@*/)
                        Group{
                            Toggle(isOn: $isFood) {
                                Text("FOOD")
                                    .font(.title2)
                            }
                            .onChange(of: isFood) { value in
                                addVal()
                            }
                            .toggleStyle(iOSCheckboxToggleStyle())

                            Toggle(isOn: $isClothes) {
                                Text("CLOTHES")
                                    .font(.title2)
                            }
                            .toggleStyle(iOSCheckboxToggleStyle())
                            Toggle(isOn: $isSkincare) {
                                Text("SKINCARE")
                                    .font(.title2)
                            }
                            .toggleStyle(iOSCheckboxToggleStyle())
                            Toggle(isOn: $isShoes) {
                                Text("SHOES")
                                    .font(.title2)
                            }
                            .toggleStyle(iOSCheckboxToggleStyle())
                            Toggle(isOn: $isTransport) {
                                Text("TRANSPORT")
                                    .font(.title2)
                                    
                                    
                            }
                            .toggleStyle(iOSCheckboxToggleStyle())
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color(red: 110/255, green: 97/255, blue: 148/255))
                        
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                    .border(/*@START_MENU_TOKEN@*/Color(red: 0.166, green: 0.065, blue: 0.224)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
                    .cornerRadius(5)
                    
                    
                    Spacer()
                        .frame(height: 20.0)
                 
                    
                    Button {
                        addVal()
                        print(priorities)
                        globalBudget = budget
                    } label: {
                        Label("Generate Budget!", systemImage: "dollarsign.circle.fill")
                    }
                        
                    
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.876, green: 0.846, blue: 0.962)/*@END_MENU_TOKEN@*/)
                    .background(Color(red: 0.432, green: 0.383, blue: 0.582))
                    .border(/*@START_MENU_TOKEN@*/Color(red: 0.166, green: 0.065, blue: 0.224)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                    HStack{
                        NavigationLink(destination:ContentView()){
                            Text("Home")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: PersonalBudget()){
                            Text("Your Budget")
                                .font(.title3)
                                .fontWeight(.bold)
                                .padding(/*@START_MENU_TOKEN@*/.leading, 5.0/*@END_MENU_TOKEN@*/)
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: Resources()){
                            Text("Resources")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 400.0, height: 30.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 1.0, green: 1.0, blue: 1.0)/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.432, green: 0.383, blue: 0.582)/*@END_MENU_TOKEN@*/)
                    
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
