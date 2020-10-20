//
//  drama.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/19.
//

import SwiftUI

struct actor: View{
    
    let name = [
        "班小松", "鄔童", "尹柯", "張小凡", "林驚羽", "小七", "劉星", "小韓老師", "蒼白少年", 
        "宋仁宗", "小波", "姜小楷", "寒霜似", "李想", "張保慶",
    "張吉安", "宋雲哲", "諶浩軒", "李必", "阿易", "小北"
    ]
    var body: some View{
        ScrollView(.vertical){
            let columns = [GridItem(), GridItem(), GridItem()]
            LazyVGrid(columns: columns, spacing: 40){
                ForEach(name.indices){(index) in
                    VStack(spacing: 10){
                        Image("\(name[index])")
                            .resizable()
                            .scaledToFill()
                            .frame(width:80, height:80)
//                            .clipShape(Circle())
                            .mask(Circle())
                                .shadow(radius: 10)
                                .overlay(Circle().stroke(Color.white, lineWidth: 5))
                        Text("\(name[index])")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.gray)
                    }
                }
            }
        }.background(Image("settingBG").resizable().scaledToFill().opacity(0.3))
    }
}

struct drama: View {
    var body: some View {
        NavigationView{
            actor()
                .toolbar(content: {
                    ToolbarItem(placement: .principal) {
                        Text("TFBOYS戲劇角色")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                    }
                })
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct drama_Previews: PreviewProvider {
    static var previews: some View {
        drama()
    }
}
