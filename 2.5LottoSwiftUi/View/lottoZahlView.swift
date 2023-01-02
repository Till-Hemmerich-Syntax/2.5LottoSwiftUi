//
//  lottoZahlView.swift
//  2.5LottoSwiftUi
//
//  Created by Till Hemmerich on 22.12.22.
//

import SwiftUI

struct lottoZahlView: View {
    var number : Int
    var bgColor: Color
    var body: some View {
        ZStack{
            bgColor
            Text("\(number)")
                .foregroundColor(bgColor == Color.yellow ? Color.blue : Color.white)
        }
        .frame(width: 50,height: 50)
        .cornerRadius(25)
    }
}

struct lottoZahlView_Previews: PreviewProvider {
    static var previews: some View {
        lottoZahlView(number: 22,bgColor: Color.yellow)
    }
}
