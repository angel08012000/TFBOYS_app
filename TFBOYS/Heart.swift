//
//  Heart.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/19.
//

import SwiftUI

struct Heart: View {
    init() {
            UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        ScrollView(){
            VStack(alignment: .leading){
                Group{
                    Text("合:\nLet's go\nListen to my heart oh oh oh oh\nListen to my heart oh oh oh oh\n").foregroundColor(.orange)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("源:\n在看到你微笑的那一秒\n我不安的心跳 正悄悄地發酵\n溫柔像突如其來的風暴\n緊張的我忘了給你擁抱\n").foregroundColor(.green).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("璽:\n(也許還沒準備好)\n").foregroundColor(.red).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("凱:\n別害怕別去逃 跟我奔跑\n你的呼吸我都能聽到\n幸福漸漸圍繞\n就緊緊靠\n聆聽真誠的心跳\n").foregroundColor(.blue).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("合:\nLet's go\nListen to my heart heart\nshow me love baby\n我心動的訊號 你能否感受到\nlove love my love baby\n愛不用太禮貌\n用自信來燃燒\nListen to my heart oh oh oh oh\n").foregroundColor(.orange).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("凱:\n給你快樂是我對你唯一的承諾\n").foregroundColor(.blue).fontWeight(.bold)
                    Text("合:\nListen to my heart heart\nmy love baby\n想牽著你的手\n一起守候\n").foregroundColor(.orange).fontWeight(.bold)
                }
                Group{
                    Text("源:\n睜開眼烏雲都為我散開\n沒有什麼阻礙\n我衝向你的愛\n四葉草在未來唯美盛開\n現在只要你做我的花海\n").foregroundColor(.green).fontWeight(.bold)
                    Text("凱:\n每葉都精心灌溉\n").foregroundColor(.blue).fontWeight(.bold)
                    Text("璽:\n別害怕別去逃\n跟我奔跑\n你的呼吸我都能聽到\n幸福漸漸圍繞\n就緊緊靠\n聆聽真誠的心跳\n").foregroundColor(.red).fontWeight(.bold)
                    Text("合:\nLet's go!Listen to my heart heart\nshow me love baby\n我心動的訊號 你能否感受到\nlove love my love baby\n愛不用太禮貌 用自信來燃燒\nListen to my heart oh oh oh oh\n").foregroundColor(.orange).fontWeight(.bold)
                    Text("凱:給你快樂是我對你唯一的承諾\nListen to my heart heart my love baby\n想牽著你的手 陪我再往下走\n").foregroundColor(.blue).fontWeight(.bold)
                    Text("源:\noh baby 請卸下所有的防備\n跟我到天空自由飛\n有你陪我不會累\n還有夢一起去追\n").foregroundColor(.green).fontWeight(.bold)
                    Text("凱:\n花開總會有枯萎\n但信仰不會後悔\n").foregroundColor(.blue).fontWeight(.bold)
                    Text("璽:\n感謝你日日夜夜的守衛\n").foregroundColor(.red).fontWeight(.bold)
                    Text("合:\n我可以為你平凡 或完美\n").foregroundColor(.orange).fontWeight(.bold)
                }
                Group{
                    Text("合:\nListen to my heart\nshow me love baby\n我心動的訊號 你能否感受到\nlove love my love baby\n愛不用太禮貌\nListen to my heart oh oh oh oh\n").foregroundColor(.orange).fontWeight(.bold)
                    Text("凱:給你快樂是我對你唯一的承諾\nListen to my heart heart\nmy love baby\n想牽著你的手\n一起守候\n").foregroundColor(.blue).fontWeight(.bold)
                    Text("凱:\nPut your hands up\n").foregroundColor(.blue).fontWeight(.bold)
                    Text("源:\nthat's right now\n").foregroundColor(.green).fontWeight(.bold)
                    Text("璽:\nhit me one more time\n").foregroundColor(.red).fontWeight(.bold)
                    Text("合:\nListen to my heart oh oh oh oh").foregroundColor(.orange).fontWeight(.bold)
                }
            }
        }
        .frame(width:300, height: 283)
        .background(Image("Heart").opacity(0.2))
    }
}

struct Heart_Previews: PreviewProvider {
    static var previews: some View {
        Heart()
    }
}
