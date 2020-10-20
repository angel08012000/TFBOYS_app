import SwiftUI

struct word: View{
    var body: some View{
        VStack{
            Text("為自己的")
                .foregroundColor(Color(red: 64/255, green:64/255, blue: 64/255))
                .font(.title3)
            + Text("老公")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.orange)
            + Text("選擇")
                .foregroundColor(Color(red: 64/255, green:64/255, blue: 64/255))
                .font(.title3)
            Text("最")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color(red: 255/255, green:102/255, blue: 102/255))
            + Text("合適的")
                .foregroundColor(Color(red: 64/255, green:64/255, blue: 64/255))
                .font(.title3)
                + Text("Icon")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(red: 102/255, green:178/255, blue: 255/255))
//                .font(.custom("Nagurigaki-Crayon", size: 10))
        }.frame(width: UIScreen.main.bounds.width, height:80)
        
        
    }
}

struct choice: View{
    var body: some View{
        VStack(spacing: 0){
            Divider()
            HStack{
                Button(action: {
                    UIApplication.shared.setAlternateIconName(nil)
                }) {
                    VStack{
                        Image("sign")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(20)
                            .frame(width: 150, height: 150)
                    }
                }
                Divider()
                Button(action: {
                    UIApplication.shared.setAlternateIconName("cuteBoys")
                }) {
                    Image("cute")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(20)
                        .frame(width: 150, height: 150)
                }
            }
            Divider()
            HStack{
                Button(action: {
                    UIApplication.shared.setAlternateIconName("realBoys")
                }) {
                    Image("real")
                        .resizable()
                        .scaledToFill()
                        .cornerRadius(20)
                        .frame(width: 150, height: 150)
                }
                Divider()
                Button(action: {
                    UIApplication.shared.setAlternateIconName("smallBoys")
                }) {
                    Image("small")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                        .cornerRadius(20)
                        .clipped()
                }
            }
            Divider()
        }.padding()
    }
}

struct change: View {
    var body: some View {
//        Text("With great power, comes great responsibility")
//           .font(.custom("Nagurigaki-Crayon", size: 30))
        VStack{
            word()
            choice()
        }.background(LinearGradient(gradient: Gradient(colors: [Color(red: 255/255, green:204/255, blue: 204/255), Color(red: 255/255, green:253/255, blue: 204/255)]), startPoint: .top, endPoint: .bottom))    }
}

struct change_Previews: PreviewProvider {
    static var previews: some View {
        change()
    }
}
