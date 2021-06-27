//
//  ContentView.swift
//  Information Page
//
//  Created by Stanley Ngo on 6/26/21.
//

import SwiftUI

let columns: [GridItem] = [GridItem(.flexible()),
                           GridItem(.flexible()),]

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                CircleView().offset(y: -90)
                VStack{
                    Spacer()
                    Rectangle()
                        .frame(height: 75)
                        .foregroundColor(Color(red: 172/255, green: 242/255, blue: 186/255))
                }
               /*VStack {
                    Spacer()
                    Image(systemName:"person.crop.circle.fill").resizable().frame(width:40, height:40)
                }
                */
                .edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct RecycleView: View {
    var body: some View {
        
        
        ZStack {
            VStack{
                Text("Information").font(.title).padding(.trailing, 150)
                Spacer().frame(height:700)
            }
        }
    }
}

struct CircleView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                LazyVGrid(columns: columns, spacing: 0) {
                    ForEach(0..<4) { i in
                        ZStack {
                            Circle()
                                .foregroundColor(Color(red:150/255, green: 226/255, blue:165/255))
                                .frame(width: geometry.size.width/3 - 15,
                                       height: geometry.size.width - 30)
                        }
                    }
                }
            }
            VStack {
                Text("Why and How").padding(.top, 275).padding(.leading, 50)
                Image(systemName: "questionmark").resizable().offset(y: -135).offset(x:15).foregroundColor(.white)
                    .frame(width: 20, height: 40)
            }
            VStack {
                Text("Effects and Impacts").padding(.top, 275).padding(.leading, 220)
                Image(systemName: "exclamationmark").resizable()
                    .offset(y: -140)
                    .offset(x: 110)
                    .frame(width: 15, height: 40)
                    .foregroundColor(.white)
            }
            VStack {
                Text("Statistics").padding(.top, 630).padding(.leading, 60)
                Image(systemName:"chart.bar").resizable()
                    .offset(y: -130)
                    .offset(x: 29)
                    .frame(width:40, height: 30)
                    .foregroundColor(.white)
            }
            VStack {
                Text("Types").padding(.top, 630).padding(.leading, 270)
                Image(systemName:"trash")
                    .resizable()
                    .offset(y: -135)
                    .offset(x: 135)
                    .frame(width: 30, height: 40)
                    .foregroundColor(.white)
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
