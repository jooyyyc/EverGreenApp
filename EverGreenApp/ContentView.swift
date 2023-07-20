//
//  ContentView.swift
//  EverGreenApp
//
//  Created by scholar on 7/17/23.
//

import SwiftUI

struct ContentView: View {
//    @State private var price = 0
//    @State private var addPrice = "Enter the amount of this purchase"

    //progress bar
    @State var progressValue: Float = 0.3
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
        @State private var degrees1: Double = -110
    var body: some View {
        NavigationStack{
            VStack {
                Text("JULY")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                ZStack {
                    Color(red: 204/255, green: 225/255, blue: 198/255)
                        .ignoresSafeArea()
                    ProgressBar(progress: self.$progressValue)
                        .frame(width: 250.0, height: 250.0)
                        .padding(40.0).onReceive(timer) { _ in
                            withAnimation {
                                if progressValue < 0.8999996 {
                                    progressValue += 0.0275
                                }
                            }
                        }
                    ProgressBarTriangle(progress: self.$progressValue).frame(width: 280.0, height: 290.0).rotationEffect(.degrees(degrees1), anchor: .bottom)
                        .offset(x: 0, y: -150).onReceive(timer) { input in
                            withAnimation(.linear(duration: 0.01).speed(200)) {
                                if degrees1 < 110.0 {
                                    degrees1 += 10
                                }
                                print(degrees1)
                            }
                        }
                }
                Spacer()
                Text("Recent transactions")
                    .font(.largeTitle)
                    .fontWeight(.light)
                    .multilineTextAlignment(.leading)
                Text("-$24")
                Text("-$\(globalExpense)")
//                    .padding(.bottom, 130.0)
//                    .border(Color.gray, width:2)
//                    .cornerRadius(5)
//                Text("\(price)")
//                    .padding()
                HStack{
                    NavigationLink(destination:BudgetMaker()){
                        Text("Budget maker")
                    }
                    NavigationLink(destination: AddTransaction()){
                        Text("+")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .padding(.bottom, 1)
                            .padding()
                    }
                    NavigationLink(destination: Resources()){
                        Text("Resources")
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: 400.0, height: 30.0)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 1.0, green: 1.0, blue: 1.0)/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.432, green: 0.383, blue: 0.582)/*@END_MENU_TOKEN@*/)
            }
        }
    }
    struct ProgressBar: View {
        @State var spent = Int()
            @Binding var progress: Float
        var body: some View {
            NavigationStack {
                ZStack {
                    
                    Color(red: 204/255, green: 225/255, blue: 198/255)
                    Circle()
                        .trim(from: 0.3, to: 0.9)
                        .stroke(style: StrokeStyle(lineWidth: 12.0, lineCap: .round, lineJoin: .round))
                        .opacity(0.3)
                        .foregroundColor(Color.gray)
                        .rotationEffect(.degrees(54.5))
                    Circle()
                                        .trim(from: 0.3, to: CGFloat(self.progress))
                                        .stroke(style: StrokeStyle(lineWidth: 12.0, lineCap: .round, lineJoin: .round))
                                        .fill(AngularGradient(gradient: Gradient(stops: [
                                            .init(color: Color.init(hex: "D4F2D2"), location: 0.39000002),
                                            .init(color: Color.init(hex: "BEB7DF"), location: 0.48000002),
                                            .init(color: Color.init(hex: "ABA9BF"), location: 0.5999999),
                                            .init(color: Color.init(hex: "868784"), location: 0.7199998),
                                            .init(color: Color.init(hex: "34113F"), location: 0.8099997)]), center: .center))
                                        .rotationEffect(.degrees(54.5))
                    VStack{
                                        Text("\(spent + totalExpense)").font(Font.system(size: 44)).bold().foregroundColor(Color.init(hex: "314058"))
                                        Text("Your Spendings").bold().foregroundColor(Color.init(hex: "0F3810"))
                                    }
                                }
            }
            
            
                                }
                            }
    
    struct ProgressBarTriangle: View {
            @Binding var progress: Float
            
            
            var body: some View {
                ZStack {
                    Image("triangle").resizable().frame(width: 10, height: 10, alignment: .center)
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
                                     
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }
        
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
