//
//  home.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/19.
//

import SwiftUI

struct home_pic: View{
    let pictures = [2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020]
    @State private var currentPage = 0
    var body: some View{
        VStack(alignment: .trailing, spacing: -50){
            //年份
            let year = "\(2013+currentPage)"
            Text("   \(year)         ")
                //.padding()
                .font(.title)
                .frame(width: 100, height: 45)
                .clipped()
                .foregroundColor(.white)
                .background(Color.orange)
                .cornerRadius(.infinity)
            //照片
            TabView(selection: $currentPage){
                ForEach(0..<8){(item) in
                    Image("\(pictures[item])")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.width, height:250)
                        .clipped()
                }
            }
            .frame(height: 340)
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            
        }
    }
}

//首頁下的三小隻
struct myHome: View{
    let name = ["王俊凱", "王源", "易烊千璽"]
    var body: some View{
        NavigationView {
            VStack(alignment: .center, spacing: 30){
                home_pic()
                VStack(alignment: .leading){
                    ForEach(name, id: \.self){(item) in

                        HStack{
                        Image("\(item)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 75, height: 75)
                            .clipped()
                            if item=="王俊凱"{
                                NavigationLink(destination: karry()){
                                    Text("\(item)")
                                        .font(.system(.title3, design: .rounded))
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                }
                            }
                            else if item=="王源"{
                                NavigationLink(destination: roy()){
                                    Text("\(item)")
                                        .font(.system(.title3, design: .rounded))
                                        .foregroundColor(.green)
                                }
                            }
                            else{
                                NavigationLink(destination: jackson()){
                                    Text("\(item)")
                                        .font(.system(.title3, design: .rounded))
                                        .foregroundColor(.red)
                                }
                            }
                        }
                        
                    }
                }
                Spacer()
            }
            .toolbar(content: {
                ToolbarItem(placement: .principal) {
                    Text("TFBOYS")
                        .font(.system(.largeTitle, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.orange)
                }
            })
        }
    }
}


struct home: View {
    var body: some View {
        VStack{
            myHome()
        }
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}
