//
//  karry.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/18.
//

import SwiftUI

struct name: View{
    var body: some View{
        //text
        LinearGradient(gradient: Gradient(colors: [Color(red: 204/255, green: 229/255, blue: 255/255), Color(red: 0/255, green: 102/255, blue: 204/255)]), startPoint: .top, endPoint: .bottom)
            .mask(
                Text("王俊凱")
                    .font(.system(size:70, design: .rounded))
                    .fontWeight(.bold)
                    .scaledToFit()
                    .frame(width: 300, height: 100)
                    .clipped()
            )
            .frame(width:250, height:100)
            .offset(y:-80)
    }
}

struct introduce: View{
    @State private var moveDistance: CGFloat = 100
    @State private var show = false
    var body: some View{
        //pic
        Link(destination: URL(string: "https://instagram.com/kkkwang2?igshid=1tmu67tgu4n8b")!, label: {
                Image("karry")
                    .mask(Image("face")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 400)
                            .offset(y:-30)
                    )
                    .shadow(radius: 30)
                    .offset(y:-50)
        })
        
        
        //content
        ZStack{
            VStack(alignment: .leading, spacing: 5){
                Text("生日： 1999年9月21日")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size:25))
                Text("擔當： 隊長、rap擔當")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 25))
                Text("粉絲名： 小螃蟹")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 25))
                Text("應援色： ")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 25))
                    + Text("藍色").font(.title).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .fontWeight(.heavy)
            }.offset(y:-50)
            
            VStack{
                if show{
                    Image("crab")
                        .resizable()
                        .scaledToFill()
                        .frame(width:80, height:80)
                        .offset(x:100, y:moveDistance)
                        .transition(.slide)
                }
            }
        }
        .animation(Animation.linear(duration: 1).speed(2))
        .onAppear{
            moveDistance -= 110
            self.show = true
        }
    }
}

struct karry: View {
    var body: some View {
        VStack{
            name()
            introduce()
        }
    }
}

struct karry_Previews: PreviewProvider {
    static var previews: some View {
        karry()
    }
}
