//
//  PersonalBudget.swift
//  EverGreenApp
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

struct PersonalBudget: View {
    //emoji changes
    @State var emoji1 = ""
    @State var emoji2 = ""
    @State var emoji3 = ""
    
    //name changes
    @State var p1 = ""
    @State var p2 = ""
    @State var p3 = ""
    
    //money changes
    @State var v1 = 0
    @State var v2 = 0
    @State var v3 = 0
    
    //assigning things
    func assign(){
        if(priorities.count == 4){
            //expense 1
            if priorities[1] == 1 {
                emoji1 = "🌯"
                p1 = "food"
            }
            else if priorities[1] == 2 {
                emoji1 = "👚"
                p1 = "clothes"
            }
            else if priorities[1] == 3 {
                emoji1 = "🧴"
                p1 = "skincare/makeup"
            }
            else if priorities[1] == 4 {
                emoji1 = "👟"
                p1 = "shoes"
            }
            else if priorities[1] == 5 {
                emoji1 = "🚌"
                p1 = "transport"
            }
            //expense 2
            if priorities[2] == 1 {
                emoji2 = "🌯"
                p2 = "food"
            }
            else if priorities[2] == 2 {
                emoji2 = "👚"
                p2 = "clothes"
            }
            else if priorities[2] == 3 {
                emoji2 = "🧴"
                p2 = "skincare/makeup"
            }
            else if priorities[2] == 4 {
                emoji2 = "👟"
                p2 = "shoes"
            }
            else if priorities[2] == 5 {
                emoji2 = "🚌"
                p2 = "transport"
            }
            //expense 3
            if priorities[3] == 1 {
                emoji3 = "🌯"
                p3 = "food"
            }
            else if priorities[3] == 2 {
                emoji3 = "👚"
                p3 = "clothes"
            }
            else if priorities[3] == 3 {
                emoji3 = "🧴"
                p3 = "skincare/makeup"
            }
            else if priorities[3] == 4 {
                emoji3 = "👟"
                p3 = "shoes"
            }
            else if priorities[3] == 5 {
                emoji3 = "🚌"
                p3 = "transport"
            }
        }
    }
    var body: some View {
        NavigationStack {
            ZStack{
                Color(.blue)
               .ignoresSafeArea()
                
                VStack{
                    Button("Click to View Your Budget!"){
                        assign()
                        v1 = Int(Double(globalBudget) * 0.45)
                        v2 = Int(Double(globalBudget) * 0.35)
                        v3 = Int(Double(globalBudget) * 0.2)
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.432, green: 0.383, blue: 0.582)/*@END_MENU_TOKEN@*/)
                    .background(Color(red: 0.524, green: 0.823, blue: 0.815))
                    .border(/*@START_MENU_TOKEN@*/Color(red: 0.535, green: 0.48, blue: 0.689)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/4/*@END_MENU_TOKEN@*/)
                    .cornerRadius(/*@START_MENU_TOKEN@*/8.0/*@END_MENU_TOKEN@*/)
                    Group{
                        HStack{
                            Text(emoji1)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            
                            Text("Spend $\(v1) on \(p1)")
                        }
                        .frame(width: 350.0, height: 100.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.535, green: 0.48, blue: 0.689)/*@END_MENU_TOKEN@*/)
                        
                        HStack{
                            Text(emoji2)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            
                            Text("Spend $\(v2) on \(p2)")
                        }
                        .frame(width: 350.0, height: 100.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.957, green: 0.724, blue: 0.72)/*@END_MENU_TOKEN@*/)
                        HStack{
                            Text(emoji3)
                                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            
                            Text("Spend $\(v3) on \(p3)")
                        }
                        .frame(width: 350.0, height: 100.0)
                        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.524, green: 0.823, blue: 0.815)/*@END_MENU_TOKEN@*/)
                    }
                    .padding(/*@START_MENU_TOKEN@*/[.top, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.semibold/*@END_MENU_TOKEN@*/)
                }
                
                
              
            }
            }

            
        
    }
}

struct PersonalBudget_Previews: PreviewProvider {
    static var previews: some View {
        PersonalBudget()
    }
}
