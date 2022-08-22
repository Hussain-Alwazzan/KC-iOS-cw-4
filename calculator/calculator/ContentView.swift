//
//  ContentView.swift
//  calculator
//
//  Created by Hussain Alwazzan on 06/08/2022.
//

import SwiftUI
struct ContentView: View {
    @State var finalGrade = ""
    @State var grades = ""
    var body: some View {
        
        ZStack{
            
            
            VStack{
                Text("حاسبة الدرجات")
                    .foregroundColor(Color.black)
                    .font(.largeTitle)
                    .padding()
                
                Spacer()
                
                
                Image("CALC")
                    .resizable()
                    .fixedSize()
                    .frame(width: 200, height: 200)
                    .padding()
                
                
                TextField("Enter Your Grade", text: $finalGrade)
                
                
                
                Text("احسب درجتي")
                    .font(.title3)
                    .frame(width: 200, height: 40)
                    .background(.blue.opacity(0.7))
                    .cornerRadius(15)
                    .onTapGesture {
                        if (Double(finalGrade) ?? 0) >= 90 {
                            grades = "امتياز"
                        }
                        
                        else if (Double(finalGrade) ?? 0) >= 80 { grades = "جيد جدا"}
                        
                        else if (Double(finalGrade) ?? 0) >= 70 { grades = "جيد" }
                        
                        
                        else if (Double(finalGrade) ?? 0) >= 60  { grades = "مقبول"}
                        
                        else {
                            
                            grades = "رسوب"
                        }
                        
                        
                        
                        
                    }
                
                
                
                
                Text("لقد حصلت على درجة")
                    .padding()
                
                
                Text(grades)
                    .font(.system(size: 30, weight: .medium, design: .serif))
                
                Spacer()
                
                
            }.padding()
            
            
            
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
