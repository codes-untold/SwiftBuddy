//
//  OnboardingLander.swift
//  SwiftBuddy
//
//  Created by Osamudiame Ogedegbe on 01/08/2022.
//

import SwiftUI

struct OnboardingLander: View {
    
   @State var index = 0
    var boardingTitles = [
    "Discover Code Snippets for SwiftUi Components",
        "Discover Code Snippets for SwiftUi Components",
        "Discover Code Snippets for SwiftUi Components"]
    
    var body: some View {
        GeometryReader{ dimension in
            ZStack{
                Rectangle().fill(LinearGradient(gradient:  Gradient(colors: [
                    Color(hex: "ffffff"),
                    Color(hex: "0f65ff"),
                    Color(hex: "0f65ff"),
                 
                ]),  startPoint: .topLeading,
                endPoint: .center)).frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
                
               VStack{
                Image("swift_buddy_logo").resizable()
                 //   .scaledToFit()
                  //  .frame(width: 450.0, height: 450.0)
               
                ZStack{
                    RoundedRectangle(cornerRadius: 40).fill()
                        .frame(maxWidth:.infinity,maxHeight: dimension.size.height * 0.4).foregroundColor(.white)
                    
                   
                    VStack{
                         TabView(selection: self.$index){
                             ForEach(0..<3,id: \.self){i in
                                VStack{
                                    Text(boardingTitles[i])
                                        .fontWeight(.bold)
                                        .font(.system(size: 22, weight: .light, design: .default))
                                        .multilineTextAlignment(.center)
                                    Spacer()//.frame(height:30)
                                   
                                }
                                
                             }
                         }.tabViewStyle(PageTabViewStyle())
                         .frame(maxWidth: .infinity, maxHeight: dimension.size.height * 0.45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                       
                        HStack{
                            ForEach(0..<3,id: \.self){i in
                                 BoardingCircles(circleColor:
                                                     index == i ? Color(hex: "0f65ff"):.gray, circleSize: index == i ? 8.0 : 5.0)
                            }
                        }
                        Spacer().frame(height:90)
                        Button("Get Started") {
                          // some code
                        }
                        .frame(maxWidth:.infinity,
                               maxHeight: 50)
                       
                        .font(.system(size: 22, weight: .bold))
                        .foregroundColor(.white)
                        .shadow(radius: 10 )
                        .background(Color(hex: "0f65ff"))
                        .cornerRadius(10)
                       
                            
                    }.padding(40)
                   // .scaledToFit()
                        
                    
                }.padding(20)
                .frame(maxWidth:.infinity,maxHeight: dimension.size.height * 0.45)

                }    .edgesIgnoringSafeArea(.all)
 
            }
          

        }
       
    }
}

struct OnboardingLander_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingLander()
    }
}

struct BoardingCircles: View {
    
    var circleColor:Color
    var circleSize:CGFloat
    var body: some View {
        Circle()
            .frame(width: circleSize, height: circleSize, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(circleColor)
    }
}
