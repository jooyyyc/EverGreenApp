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
                emoji1 = "🌯"
                p1 = "food"
            }
            else if priorities[2] == 2 {
                emoji1 = "👚"
                p1 = "clothes"
            }
            else if priorities[2] == 3 {
                emoji1 = "🧴"
                p1 = "skincare/makeup"
            }
            else if priorities[2] == 4 {
                emoji1 = "👟"
                p1 = "shoes"
            }
            else if priorities[2] == 5 {
                emoji1 = "🚌"
                p1 = "transport"
            }
            //expense 3
            if priorities[3] == 1 {
                emoji1 = "🌯"
                p1 = "food"
            }
            else if priorities[3] == 2 {
                emoji1 = "👚"
                p1 = "clothes"
            }
            else if priorities[3] == 3 {
                emoji1 = "🧴"
                p1 = "skincare/makeup"
            }
            else if priorities[3] == 4 {
                emoji1 = "👟"
                p1 = "shoes"
            }
            else if priorities[3] == 5 {
                emoji1 = "🚌"
                p1 = "transport"
            }
        }
    }
    var body: some View {
        NavigationStack {
            VStack{
                Button("Generate Your Budget!"){
                    assign()
                    v1 = Int(Double(globalBudget) * 0.45)
                    v2 = Int(Double(globalBudget) * 0.35)
                   v3 = Int(Double(globalBudget) * 0.2)
                }
            }
            HStack{
                Text(emoji1)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Text("Spend $\(v1)  on \(p1)")
            }
            HStack{
                Text(emoji2)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Text("Spend $\(v2)  on \(p2)")
            }
            HStack{
                Text(emoji3)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Text("Spend $\(v3)  on \(p3)")
            }
        }
    }
}

struct PersonalBudget_Previews: PreviewProvider {
    static var previews: some View {
        PersonalBudget()
    }
}
