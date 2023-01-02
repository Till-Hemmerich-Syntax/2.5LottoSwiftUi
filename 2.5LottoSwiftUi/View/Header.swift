//
//  Header.swift
//  2.5LottoSwiftUi
//
//  Created by Till Hemmerich on 22.12.22.
//

import SwiftUI

struct Header: View {
    let title: LocalizedStringKey
    let subtitle: LocalizedStringKey
    var bgColor: Color
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Ellipse()
                    .fill(self.bgColor)
                    .frame(width: geometry.size.width * 1.4, height: geometry.size.height * 0.33)
                    .position(x: geometry.size.width / 2.35, y: geometry.size.height * 0.1)
                    .shadow(radius: 3)
                    .edgesIgnoringSafeArea(.all)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text(self.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                        
                        Text(self.subtitle)
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .foregroundColor(Color.yellow)
                        
                        
                        Spacer()
                    }
                    
                    .padding(.leading, 25)
                    .padding(.top, 30)
                    Spacer()
                    
                }
            }
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(title: "Syntax-Lotto", subtitle: "####", bgColor: Color.blue)
    }
}
