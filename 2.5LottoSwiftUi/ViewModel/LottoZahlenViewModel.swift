//
//  LottoZahlenViewModel.swift
//  2.5LottoSwiftUi
//
//  Created by Till Hemmerich on 17.12.22.
//

import Foundation

extension ContentView{
    @MainActor class LottoZahlenViewModel:ObservableObject{
        private var lottoZahlenBereich = Array(1...49)
        @Published private(set) var lottoZahlen = [Int]()
        
        
        func lottoZahlenGenerieren() -> () {
            
            var neueZahlen = [Int]()
            while (neueZahlen.count < 6) {
                let zahl = lottoZahlenBereich.randomElement()!
                if(!neueZahlen.contains(zahl)){
                    neueZahlen.append(zahl)
                }
                
            }
            
            neueZahlen.sort()
            lottoZahlen = neueZahlen
        }
    }
}
