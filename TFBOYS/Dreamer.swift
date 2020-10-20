//
//  Dreamer.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/19.
//

import SwiftUI

struct Dreamer: View {
    var body: some View {
        ScrollView{
            VStack(alignment:.leading){
                Group{
                    Text("凱：\n一個一個夢飛出了天窗\n一次一次想穿梭舊時光\n").foregroundColor(.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("源：\n雨再大 也總要回家\n被淋濕的鞋 曬乾再出發\n輕鬆的步伐 被泥土沖刷\n力量無限放大\n").foregroundColor(.green).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("凱：\n我們 被小事打擾\n為心事煩惱 骨骼和時間賽跑\n未來的最佳男主角\n準沒準備好\n").foregroundColor(.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("璽：\n帶著光\n跟我飛翔\n感受風的速度在耳邊 呼嘯遠方\n").foregroundColor(.red).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("合：\n一個一個夢飛出了天窗\n一次一次想穿梭舊時光\n插上竹蜻蜓張開了翅膀\n飛到任何想要去的地方\n一個一個夢寫在日記上\n一點一點靠近諾貝爾獎\n只要你敢想就算沒到達理想\n至少 有回憶珍藏\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }
                
                Group{
                    Text("源：\n我們 慢慢地生長\n從小的願望 到大的夢想 起航\n").foregroundColor(.green).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("凱：\n堅持是生命的永恆\n跳動的心臟\n").foregroundColor(.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("璽：\n帶著光\n跟我飛翔\n").foregroundColor(.red).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("合：\n感受風的速度在耳邊\n呼嘯遠方\n一個一個夢飛出了天窗\n一次一次想穿梭舊時光\n插上竹蜻蜓張開了翅膀\n飛到任何想要去的地方\n一個一個夢寫在日記上\n一點一點靠近諾貝爾獎\n只要你敢想就算沒到達理想\n至少 有回憶珍藏\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("凱：\n未來是什麼樣\n心未眠夜未央\n像鑽石一樣閃亮\nOooh！\n站在逆風的方向\n反而更大聲的唱\nYOLO青春 一次瘋狂\n").foregroundColor(.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("源：\n一個一個夢飛出了天窗\n").foregroundColor(.green).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("璽：\n一次一次想穿梭舊時光\n").foregroundColor(.red).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("凱：\n插上竹蜻蜓張開了翅膀\n").foregroundColor(.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("合：\n飛到任何想要去的地方\n一個一個夢寫在日記上\n一點一點靠近諾貝爾獎\n只要你敢想就算沒到達理想\n至少 有回憶珍藏\nYeah! 大夢想家! YOLO!\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                }


            }
        }
        .frame(width:300, height: 283)
        .background(Image("大夢想家")
                        .resizable().scaledToFill().frame(width:400, height:400).opacity(0.2))
    }
}

struct Dreamer_Previews: PreviewProvider {
    static var previews: some View {
        Dreamer()
    }
}
