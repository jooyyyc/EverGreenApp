//
//  Food.swift
//  EverGreenApp
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct Food: View {
    var body: some View {
        VStack {
            Text("Resources")
                .font(.largeTitle)
                .fontWeight(.heavy)
            Divider()
            Spacer()
                .frame(height: 20.0)
            Text("$$ - The Pink Door")
                .font(.largeTitle)
                .fontWeight(.heavy)
            

            
        }
        .padding(/*@START_MENU_TOKEN@*/.top, 40.0/*@END_MENU_TOKEN@*/)
        .frame(width: 400.0, height: 30.0)
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.288, saturation: 0.199, brightness: 0.537)/*@END_MENU_TOKEN@*/)
        .background(Rectangle()
            .foregroundColor(Color( red:0.432, green: 0.383, blue: 0.582)))
        
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

