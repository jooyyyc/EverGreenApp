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
            VStack{
                Text(addPrice)
                TextField("$", value: $price, format: .number)
                    .multilineTextAlignment(.center)
                    .font(.title)
                    .border(Color.gray, width:2)
                    .cornerRadius(5)
                    .padding()
                Button("Submit amount"){
                    globalPrice = price
                }
                .padding()
                
//                DatePicker("Start Date",
//                            selection: $date,
//                            displayedComponents: [.date])
//                      .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
//                      .datePickerStyle(.graphical)
            }
        }
    }
}

struct AddTransaction_Previews: PreviewProvider {
    static var previews: some View {
        AddTransaction()
    }
}
