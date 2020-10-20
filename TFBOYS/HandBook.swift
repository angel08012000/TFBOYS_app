//
//  HandBook.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/19.
//

import SwiftUI

struct HandBook: View {
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                Group{
                    Text("凱：跟著我 左手 右手\n一個慢動作\n右手 左手 慢動作重播\n").foregroundColor(.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("璽：\n這首歌 給你快樂\n你有沒有愛上我\n").foregroundColor(.red).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("源：\n跟著我 鼻子 眼睛\n動一動耳朵\n裝乖 耍帥 換不停風格\n").foregroundColor(.green).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("合：\n青春有太多\n未知的猜測\n成長的煩惱算什麼\nOne! Two! Three! Go!\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("源：\n皮鞋擦亮 換上西裝\n佩戴上一克拉的夢想\n").foregroundColor(.green).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("璽：\n我的勇敢充滿電量\n昂首到達每一個地方\n").foregroundColor(.red).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("凱：\n這世界 的太陽\n因為自信才能把我照亮\n這舞臺 的中央\n").foregroundColor(.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("合：\n有我才閃亮\n有我才能發著光\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                Group{
                    Text("合：跟著我 左手 右手\n一個慢動作\n右手 左手 慢動作重播\n這首歌 給你快樂\n你有沒有愛上我\n跟著我 鼻子 眼睛\n動一動耳朵\n裝乖 耍帥 換不停風格\n青春有太多 未知的猜測\n成長的煩惱算什麼\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("源：\n經常會想 長大多好\n有些事情卻只能想像\n").foregroundColor(.green).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("璽：\n想說就說 想做就做\n為了明天的自己鼓掌\n").foregroundColor(.red).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("凱：\n這世界 的太陽\n因為自信才能把我照亮\n這舞臺 的中央\n").foregroundColor(.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("合：\n有我才閃亮\n有我才能發著光\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("合：\n跟著我 左手 右手\n一個慢動作\n右手 左手 慢動作重播\n這首歌 給你快樂\n你有沒有愛上我\n跟著我 鼻子 眼睛\n動一動耳朵\n裝乖 耍帥 換不停風格\n青春有太多 未知的猜測\n成長的煩惱算什麼\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("凱：\nYeah\n向明天 對不起\n向前衝 不客氣(不客氣)\n一路有你 充滿鬥志無限動力(yeah)\n").foregroundColor(.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("合：\n男子漢 沒有什麼輸不起\n正太修煉成功的秘笈\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("合：\n跟著我 左手 右手\n一個慢動作\n右手 左手 慢動作重播\n這首歌 給你快樂\n你有沒有愛上我\n跟著我 鼻子 眼睛\n動一動耳朵\n裝乖 耍帥 換不停風格\n青春有太多 未知的猜測\n成長的煩惱算什麼\nHey! TFBOYS!\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
            }
        }
        .frame(width:300, height: 283)
        .background(Image("青春修煉手冊").resizable().scaledToFill().frame(width:400, height: 400).opacity(0.2))
    }
}

struct HandBook_Previews: PreviewProvider {
    static var previews: some View {
        HandBook()
    }
}
