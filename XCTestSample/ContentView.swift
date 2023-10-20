//
//  ContentView.swift
//  XCTestSample
//
//  Created by kuehar on 2023/10/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var sum:Int = 0
    let calculator = Calculator()
    
    var body: some View {
        VStack {
            Text(String(sum))
            HStack{
                // 角ボタン
                Button(action: {
                    sum = calculator.add(sum,1)
                }, label: {
                    Text("Add")
                })
                .bold()
                .padding()
                .frame(width: 100, height: 50)
                .foregroundColor(Color.white)
                .background(Color.red)
                
                // 丸ボタン
                Button(action: {
                    sum = calculator.subtract(sum,1)
                }, label: {
                    Text("Subract")
                })
                .bold()
                .padding()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.white)
                .background(Color.yellow)
                .clipShape(Circle())
            }
            
            HStack{
                // 角丸ボタン
                Button(action: {
                    sum = calculator.add(sum,2)
                }, label: {
                    Text("Divide")
                })
                .bold()
                .padding()
                .frame(width: 100, height: 50)
                .foregroundColor(Color.white)
                .background(Color.purple)
                .cornerRadius(10)
                
                // 丸ボタン
                Button(action: {
                    sum = calculator.multiple(sum,2)
                }, label: {
                    Text("Multiple")
                })
                .padding()
                .frame(width: 100, height: 100)
                .imageScale(.large)
                .foregroundColor(Color.black)
                .overlay(
                    Circle()
                        .stroke(Color.green, lineWidth: 3)
                )
            }
        }
    }
}

#Preview {
    ContentView()
}
