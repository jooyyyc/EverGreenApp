//
//  Resources.swift
//  EverGreenApp
//
//  Created by scholar on 7/19/23.
//

import SwiftUI

struct Resources: View {
    var body: some View {
        NavigationStack {
            ZStack{
              Color(red: 0.833, green: 0.949, blue: 0.925)
               .ignoresSafeArea()
                    VStack{
                        Text("LINKS FOR TIPS")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        Divider()
                        Spacer()
                            .frame(height: 20.0)
                        NavigationLink(destination: Food()){
                            Text("Affordable Eats") .padding(/*@START_MENU_TOKEN@*/.leading, 5.0/*@END_MENU_TOKEN@*/)
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 350.0, height: 100.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.white/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: PersonalBudget()){
                            Text("Financial Literacy")
                                .padding(/*@START_MENU_TOKEN@*/.leading, 5.0/*@END_MENU_TOKEN@*/)
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 350.0, height: 100.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.774, saturation: 0.103, brightness: 0.94)/*@END_MENU_TOKEN@*/)
                        NavigationLink(destination: Resources()){
                            Text("Budgeting Hacks")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 350.0, height: 100.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.77, saturation: 0.259, brightness: 0.581)/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        NavigationLink(destination: Resources()){
                            Text("College Finances")
                        }
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: 350.0, height: 100.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.77, saturation: 0.329, brightness: 0.33)/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.708, saturation: 0.409, brightness: 0.459)/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .border(/*@START_MENU_TOKEN@*/Color(red: 0.289, green: 0.221, blue: 0.329)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/3/*@END_MENU_TOKEN@*/)
            HStack{
                NavigationLink(destination:ContentView()){
                    Text("Home")
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                NavigationLink(destination: PersonalBudget()){
                    Text("BudgetMaker")
                        .font(.title3)
                        .fontWeight(.bold)
                        
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(width: 10.0)
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

struct Resources_Previews: PreviewProvider {
    static var previews: some View {
        Resources()
    }
}
