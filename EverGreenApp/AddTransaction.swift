//
//  AddTransaction.swift
//  EverGreenApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI


struct AddTransaction: View {
    @State private var price = Int()
    @State private var addPrice = globalAddPrice
//    @State private var date = ""
//    @State private var addDate = "Enter the date of this purchase"
    @State private var presentAlert = false
    var body: some View {
        NavigationStack{
            ZStack{
                Color(red: 204/255, green: 225/255, blue: 198/255)
                    .ignoresSafeArea()
                VStack{

                    Text(addPrice)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        
                    TextField("$", value: $price, format: .number)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .border(Color.gray, width:2)
                        .cornerRadius(5)
                        .padding()
                    Button("Submit amount"){
                        globalExpense = price
                        totalExpense += price
                        
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.294, saturation: 0.038, brightness: 0.955)/*@END_MENU_TOKEN@*/)
                    .background(Color(hue: 0.294, saturation: 0.201, brightness: 0.493))
                    .border(/*@START_MENU_TOKEN@*/Color(hue: 0.29, saturation: 0.215, brightness: 0.2)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                    Spacer()
                    HStack{
                        NavigationLink(destination:BudgetMaker()){
                            Text("Budget maker")
                                .tint(.white)
                                .fontWeight(.bold)
                        }
                        NavigationLink(destination: ContentView()){
                            Text("Home")
                                .font(.title)
                                .fontWeight(.bold)
                                .tint(.white)
                                .padding(.bottom, 1)
                                .padding()
                            
                                
                        }
                        NavigationLink(destination: Resources()){
                            Text("Resources")
                                .tint(.white)
                                .fontWeight(.bold)
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/.top, 40.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 400.0, height: 30.0)
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.288, saturation: 0.199, brightness: 0.537)/*@END_MENU_TOKEN@*/)
                    .background(Rectangle()
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.432, green: 0.383, blue: 0.582)/*@END_MENU_TOKEN@*/))
                }
            }
            
        }

    }
}


struct AddTransaction_Previews: PreviewProvider {
    static var previews: some View {
        AddTransaction()
    }
}
