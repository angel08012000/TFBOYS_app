//
//  ContentView.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/15.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    let player = AVPlayer()
    
    var body: some View {
        TabView{
            home()
            .tabItem {
                Image(systemName: "house")
                Text("首頁")
            }
            songList()
                .tabItem {
                    Image(systemName: "music.note.list")
                    Text("歌曲")
                }
            drama()
                .tabItem {
                    Image(systemName: "person.3")
                    Text("角色")
                }
            change()
                .tabItem{
                Image(systemName: "square.and.pencil")
                Text("設定")
                    //gearshape
            .frame(height: 200)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
