//
//  songList.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/19.
//

import SwiftUI
import AVFoundation

struct song{
    var name: String
    var singer: String
    var pic: String
}

struct songRow: View{
    @State private var show = false
    let player = AVPlayer()
    let mySong: song
    var body: some View{
        HStack(){
            Image("\(mySong.pic)")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
            
            VStack(alignment: .leading, spacing: 10){
                Text("\(mySong.name)")
                    .font(.system(.headline, design: .rounded))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.gray)
                    
                Text("\(mySong.singer)")
                    .font(.system(.caption, design: .rounded))
                    .foregroundColor(.gray)
            }
            Spacer()
            
            if mySong.name=="Heart" || mySong.name=="愛出發" || mySong.name=="夢想啟航" || mySong.name=="青春修煉手冊" || mySong.name=="大夢想家" || mySong.name=="我們的時光" || mySong.name=="和你在一起"{
                Button(action:{
                    let fileUrl = Bundle.main.url(forResource: "\(mySong.name)", withExtension: "mp3")!
                    let playerItem = AVPlayerItem(url: fileUrl)
                    if player.currentItem==nil{
                        player.replaceCurrentItem(with: playerItem)
                    }
                    player.volume = 0.1
                    if show == false{
                        show = true
                        player.play()
                    }
                    else{
                        show = false
                        player.pause()
                    }
                    
                }){
                    if show == false{
                        Image(systemName: "play")
                    }
                    else{
                        Image(systemName: "pause")
                    }
                }
            }
        }
    }
}

struct songPhoto: View{
    let photo = ["Heart", "青春修煉手冊", "大夢想家", "我們的時光", "和你在一起"]
//    let target=[Heart(), HandBook(), Dreamer(), Time(), Together()]
    var body: some View{
        NavigationView{
            VStack{
                ScrollView(.horizontal) {
                    let rows = [GridItem()]
                    LazyHGrid(rows: rows) {
                        ForEach(photo.indices) { (index) in
                            VStack{
                                if index==0{
                                    NavigationLink(destination: Heart()){
                                        Image(photo[index])
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 200, height: 200)
                                            .clipped()
                                    }
                                }
                                else if index==1{
                                    NavigationLink(destination: HandBook()){
                                        Image(photo[index])
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 200, height: 200)
                                            .clipped()
                                    }
                                }
                                else if index==2{
                                    NavigationLink(destination: Dreamer()){
                                        Image(photo[index])
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 200, height: 200)
                                            .clipped()
                                    }
                                }
                                else if index==3{
                                    NavigationLink(destination: Time()){
                                        Image(photo[index])
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 200, height: 200)
                                            .clipped()
                                    }
                                }
                                else{
                                    Image(photo[index])
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 200, height: 200)
                                        .clipped()
                                }
                          
                                if photo[index]=="和你在一起"{
                                    Text("其他")
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.gray)
                                }
                                else{
                                    Text(photo[index])
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.gray)
                                }
                            }
                        }
                    }
                }
                .navigationTitle("專輯主打歌")
                .fixedSize(horizontal: false, vertical: true)
            }
            
        }
    }
}

struct mySongList: View{
    let mini_one = [
        song(name: "Heart", singer: "TFBOYS", pic: "Heart"),
        song(name: "愛出發", singer: "TFBOYS", pic: "愛出發"),
        song(name: "夢想啟航", singer: "TFBOYS", pic: "夢想啟航")
    ]
    let mini_two = [
        song(name: "青春修煉手冊", singer: "TFBOYS", pic: "青春修煉手冊"),
        song(name: "幸運符號", singer: "TFBOYS", pic: "幸運符號"),
        song(name: "快樂環島", singer: "TFBOYS", pic: "快樂環島"),
        song(name: "信仰之名", singer: "TFBOYS", pic: "信仰之名")
    ]
    
    let mini_three = [
        song(name: "大夢想家", singer: "TFBOYS", pic: "大夢想家"),
        song(name: "寵愛", singer: "TFBOYS", pic: "寵愛"),
        song(name: "樣Young", singer: "TFBOYS", pic: "樣Young"),
        song(name: "剩下的盛夏", singer: "TFBOYS", pic: "剩下的盛夏"),
        song(name: "少年說", singer: "TFBOYS", pic: "少年說"),
        song(name: "Love With You", singer: "TFBOYS", pic: "Love With You")
    ]
    
    let ep1 = [
        song(name: "我們的時光", singer: "TFBOYS", pic: "我們的時光"),
        song(name: "躲貓貓", singer: "TFBOYS", pic: "躲貓貓"),
        song(name: "不完美小孩", singer: "TFBOYS", pic: "不完美小孩"),
        song(name: "是你", singer: "TFBOYS", pic: "是你"),
        song(name: "小精靈", singer: "TFBOYS", pic: "小精靈"),
        song(name: "真心話太冒險", singer: "TFBOYS", pic: "真心話太冒險"),
        song(name: "螢火", singer: "TFBOYS", pic: "螢火")
    ]
    let others = [
        song(name: "魔法城堡", singer: "TFBOYS", pic: "魔法城堡"),
        song(name: "未來的進擊", singer: "TFBOYS", pic: "未來的進擊"),
        song(name: "不息之河", singer: "TFBOYS", pic: "不息之河"),
        song(name: "加油！Amigo！", singer: "TFBOYS", pic: "加油！Amigo！"),
        song(name: "同一秒快樂", singer: "TFBOYS", pic: "同一秒快樂"),
        song(name: "喜歡你", singer: "TFBOYS", pic: "喜歡你"),
        song(name: "最好的那年", singer: "TFBOYS", pic: "最好的那年"),
        song(name: "第一次告白", singer: "TFBOYS", pic: "第一次告白"),
        song(name: "我的朋友", singer: "TFBOYS", pic: "我的朋友"),
        song(name: "和你在一起", singer: "TFBOYS", pic: "和你在一起"),
        song(name: "燈火", singer: "TFBOYS", pic: "燈火")
    ]
    var body: some View{
        NavigationView{
            VStack{
                songPhoto()
                List{
                    Section(header: Text("迷你專輯1 - Heart 夢·出發") ){
                        ForEach(mini_one.indices){(item) in
                            songRow(mySong: mini_one[item])
                        }
                    }
                    Section(header: Text("迷你專輯2 - 青春修煉手冊") ){
                        ForEach(mini_two.indices){(item) in
                            songRow(mySong: mini_two[item])
                        }
                    }
                    Section(header: Text("迷你專輯3 - 大夢想家") ){
                        ForEach(mini_three.indices){(item) in
                            songRow(mySong: mini_three[item])
                        }
                    }
                    Section(header: Text("正規專輯1 - 我們的時光") ){
                        ForEach(ep1.indices){(item) in
                            songRow(mySong: ep1[item])
                        }
                    }
                    Section(header: Text("其他") ){
                        ForEach(others.indices){(item) in
                            songRow(mySong: others[item])
                        }
                    }
                }
                .toolbar(content: {
                    ToolbarItem(placement: .principal) {
                        Text("TFBOYS歌單")
                            .font(.system(.largeTitle, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                    }
                })
                .edgesIgnoringSafeArea(.all)
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}


struct songList: View {
    var body: some View {
        mySongList()
    }
}

struct songList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            songList()
            songList()
                .preferredColorScheme(.dark)
        }
    }
}
