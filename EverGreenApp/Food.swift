//
//  Food.swift
//  EverGreenApp
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct Food: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Eats by Price 🍔")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                Divider()
                Spacer()
                    .frame(height: 20.0)
                Link("$ - Spicewaala", destination: URL(string: "https://www.spicewaala.com/")!)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 350.0, height: 150.0)
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .background(Color(hue: 0.773, saturation: 0.133, brightness: 0.79), in: RoundedRectangle(cornerRadius: 8))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 30.0)
                Link("$$ - The Pink Door", destination: URL(string: "https://www.elcubanotogo.com/")!)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 350.0, height: 150.0)
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .background(Color(hue: 0.773, saturation: 0.097, brightness: 0.509), in: RoundedRectangle(cornerRadius: 8))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                    .frame(height: 30.0)
                Link("$$$ - Wild Ginger", destination: URL(string: "https://www.wildginger.net/")!)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .frame(width: 350.0, height: 150.0)
                    .font(.largeTitle)
                    .foregroundStyle(.black)
                    .background(Color(hue: 0.773, saturation: 0.262, brightness: 0.549), in: RoundedRectangle(cornerRadius: 8))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Spacer()
                HStack{
                    NavigationLink(destination:ContentView()){
                        Text("Home")
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    NavigationLink(destination: Resources()){
                        Text("Resources")
                            .font(.title3)
                            .fontWeight(.bold)
                            
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    Spacer()
                        .frame(width: -10.0)
                    NavigationLink(destination: BudgetMaker()){
                        Text("BudgetMaker")
                    }
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 400.0, height: 30.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.773, saturation: 0.085, brightness: 0.926)/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.432, green: 0.383, blue: 0.582)/*@END_MENU_TOKEN@*/)
                

                
            }
        }
  
        
    }
}
        /*
         ZStack {
         Text("Resources")
         .font(.largeTitle)
         .fontWeight(.heavy)
         Divider()
         Spacer()
         .frame(height: 20.0)
         NavigationLink(destination: Resources()){
         Text("$ - Ian's Pizza On The Hill")
         }
         .padding()
         frame(width: 350.0, height: 100.0)
         .background()
         
         
         }
         .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
         .frame(width: 350.0, height: 100.0)
         Text("Finanical Tips - Credit card is the money you borrow, and debit card is your money.")
         } */
        // .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        //  .frame(width: 350.0, height: 100.0)
        //        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.77, saturation: 0.259, brightness: 0.581)/*@END_MENU_TOKEN@*/)
        //        .foregroundColor(.white)
        //        Text("Shopping - $ - Pioneer Diva")
        
//    }
    //    .padding(.all)
    //            .frame(width: 350.0, height: 100.0)
    //            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.77, saturation: 0.259, brightness: 0.581)/*@END_MENU_TOKEN@*/)
    //            .foregroundColor(.white)
    //     Text("College Finances - There are lots of companies including Apple, Amazon, and Levi's ranging from 5%-50%.")
    
//}
    struct Food_Previews: PreviewProvider {
        static var previews: some View {
            Food()
        }
    }

