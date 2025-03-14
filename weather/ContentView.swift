//
//  ContentView.swift
//  weather
//
//  Created by MD. MOINUDDIN on 7/3/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(
                gradient: Gradient(colors: [.blue, .white]),
                startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
            VStack{
                Text("Dhaka,Bangladesh")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                VStack(spacing:10){
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 180, height: 180,alignment: .center)
                        
                    
                Text("25°C")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white)
                }.padding(.bottom,40)
                HStack{
                    WeatherOfWeakView(dayOfName: "Friday", image: "cloud.sun.fill", tempature: "13°")
                    WeatherOfWeakView(dayOfName: "Friday", image: "cloud.sun.fill", tempature: "13°")
                    WeatherOfWeakView(dayOfName: "Friday", image: "cloud.sun.fill", tempature: "13°")
                    WeatherOfWeakView(dayOfName: "Friday", image: "wind.snow", tempature: "13°")
                    WeatherOfWeakView(dayOfName: "Friday", image: "cloud.sun.fill", tempature: "13°")
                    
                    
                }
                Spacer()
                Button{
                    print("weather")
                }label:{
                    Text("Change  Day time")
                        .frame(width: 200, height: 50, alignment: .center)
                        .font(.system(size: 20, weight: .medium, design: .default))
                        .background(.white)
                        .cornerRadius(10)
                }
               
                Spacer()
                
                
                
                    
                
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherOfWeakView: View {
    var dayOfName:String
    var image:String
    var tempature:String
    var body: some View {
        VStack{
            Text(dayOfName)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .frame(width: 40, height: 40,alignment: .center)
            
            
            Text(tempature)
                .font(.system(size: 28, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}
