//
//  xyzm.swift
//  TFBOYS
//
//  Created by 慈慈 on 2020/10/19.
//

import SwiftUI

struct xyzm: View {
    init() {
            UITextView.appearance().backgroundColor = .clear
    }
    var body: some View {
        
        TextEditor(text: .constant("""
        合：
        我向命運拒絕
        在黑暗之中被湮滅
        將荒蕪都溶解
        親手終結深淵的界限
        用生命為祭獻
        這絕不妥協的信念
        心底的夢終會臨現這世界
        """
        ))
        //.accentColor(.clear)
        .frame(width: 300, height: 300)
        .background(Image("信仰之名").opacity(0.3))
        
    }
}

struct xyzm_Previews: PreviewProvider {
    static var previews: some View {
        xyzm()
    }
}
