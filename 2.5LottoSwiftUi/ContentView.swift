//
//  ContentView.swift
//  2.5LottoSwiftUi
//
//  Created by Till Hemmerich on 17.12.22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var lottoViewModel = LottoZahlenViewModel()
    var body: some View {
        ZStack {
            Header(title: "Syntax-Lotto", subtitle: "Batch#003", bgColor: Color.blue)
            VStack{
                HStack{
                    ForEach(lottoViewModel.lottoZahlen.indices,id: \.self){
                        index in
                       
                        lottoZahlView(
                            number: lottoViewModel.lottoZahlen[index],
                            bgColor: index % 2 == 0 ? .blue : .yellow
                        )
                    }
                }
                
                Button(action: getNewNumbers){
                    Text("Let´s Roll")
                }
                .buttonStyle(GrowingButton())
            }
            
        }
    }
    func getNewNumbers(){
        lottoViewModel.lottoZahlenGenerieren()
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



