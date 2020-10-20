//
//  karry.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/18.
//

import SwiftUI

struct rong: View {
    var body: some View {
        VStack{
            //text
            LinearGradient(gradient: Gradient(colors: [Color(red: 204/255, green: 255/255, blue: 204/255), Color(red: 0/255, green: 51/255, blue: 25/255)]), startPoint: .top, endPoint: .bottom)
                .mask(
                    Text("王源")
                        .font(.system(size:70, design: .rounded))
                        .fontWeight(.bold)
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                        .clipped()
                )
                .frame(width:250, height:100)
                .offset(y:-80)
                            
            //pic
            Image("roy")
                .mask(Image("face")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 400)
                        .offset(y:-30)
                )
                .shadow(radius: 30)
                .offset(y:-50)
            
            VStack(alignment: .leading, spacing: 5){
                Text("生日： 2000年11月8日")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size:25))
                Text("擔當： 主唱、可愛擔當")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 25))
                Text("粉絲名： 小湯圓")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 25))
                Text("應援色： ")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 25))
                    + Text("綠色").font(.title).foregroundColor(.green)
                    .fontWeight(.heavy)
            }.offset(y:-50)
        }
    }
}

struct rong_Previews: PreviewProvider {
    static var previews: some View {
        rong()
    }
}
