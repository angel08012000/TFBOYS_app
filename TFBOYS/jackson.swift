//
//  jackson.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/18.
//

import SwiftUI

struct jackson: View {
    @State private var moveDistance: CGFloat = 100
    var body: some View {
        VStack{
            //text
            LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green: 204/255, blue: 204/255), Color(red: 204/255, green: 0/255, blue: 0/255)]), startPoint: .top, endPoint: .bottom)
                .mask(
                    Text("易烊千璽")
                        .font(.system(size:70, design: .rounded))
                        .fontWeight(.bold)
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                        .clipped()
                )
                .frame(width:300, height:100)
                .offset(y:-80)
                            
            //pic
            Link(destination: URL(string: "https://instagram.com/__4444x__?igshid=er0579ngfqwj")!, label: {
                    Image("jackson")
                    .mask(Image("face")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                            .offset(x:10, y:-30)
                    )
                    .shadow(radius: 30)
                    .offset(x:-10, y:-50)
            })
            
            
            ZStack{
                VStack(alignment: .leading, spacing: 5){
                    Text("生日： 2000年11月28日")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size:25))
                    Text("擔當： 主領舞、高冷擔當")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 25))
                    Text("粉絲名： 千紙鶴")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 25))
                    Text("應援色： ")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .font(.system(size: 25))
                        + Text("紅色").font(.title).foregroundColor(.red)
                        .fontWeight(.heavy)
                }.offset(y:-50)
                
                Image("千紙鶴")
                    .resizable()
                    .scaledToFill()
                    .frame(width:80, height:80)
                    .offset(x:100, y:moveDistance)
                    .animation(Animation.linear(duration: 1)
                                   .speed(2)
                            )
                    .onAppear{
                        moveDistance -= 115
                    }
            }
        }
    }
}

struct jackson_Previews: PreviewProvider {
    static var previews: some View {
        jackson()
    }
}
