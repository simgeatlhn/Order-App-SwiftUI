//
//  ContentView.swift
//  StepBased-Instructions
//
//  Created by simge on 5.05.2022.
//

import SwiftUI
import StepperView

struct OrderView: View {
    
    let steps = [ Text("İşleme Alındı").font(.caption),
                  Text("Hazırlanacak").font(.caption),
                  Text("Kargoya Verilecek").font(.caption),
                  Text("Teslim Edilecek").font(.caption),
                 ]

    let indicationTypes = [StepperIndicationType
                            .custom(NumberedCircleView(text: "1")),
                            .custom(NumberedCircleView(text: "2")),
                            .custom(NumberedCircleView(text: "3")),
                            .custom(NumberedCircleView(text: "4")),
                            ]
      
    var body: some View {
        NavigationView{
            ScrollView{
                HStack{
                    Image("tv")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                    VStack(alignment: .leading , spacing:8){
                        Text("İşlem Numarası: 26739374")
                        Text("Ürün: Televizyon")
                        HStack{
                            Text("Satıcı:")
                            Text("Hepsiburada")
                                .foregroundColor(.blue)
                                .bold()
                        }
                        Text("1.0000 TL")
                            .foregroundColor(.green)
                        
                    }
                }
                            
                VStack(alignment:.leading){
                    StepperView()
                        .addSteps(steps)
                        .indicators(indicationTypes)
                        .stepIndicatorMode(StepperMode.vertical)
                        .lineOptions(StepperLineOptions.custom(1, Colors.blue(.teal).rawValue))
                        .spacing(50)
                }
                .padding(40)
                
                VStack(alignment:.leading){
                    Button("İptal"){
                        print("button tapped")
                    }
                    .frame(width: 300, height: 40)
                    .foregroundColor(.white)
                    .background(.gray)
                }
            }
            .navigationTitle("Siparişlerim")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}


