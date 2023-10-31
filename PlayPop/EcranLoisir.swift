/*
 Ecran 3: description d'un loisir et sélection de l'évènement
 
 Prends un loisir en argument
 
 Non fonctionnel, reste à faire:
  - lien sur l'écran de l'évènement
  - lien sur l'écran de création d'évènement
  - tri des évènements
 */

import SwiftUI

struct EcranLoisir: View {
    var leasure: Leasure
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack (spacing: 20){
                ScrollView{
                HeadImage(imageList: leasure.lImage)
                    VStack(spacing: 20) {
                        HStack {
                            Text(leasure.lLabel)
                                .font(.title)
                                .bold()
                            Spacer()
                        }
                        .padding(.top)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(leasure.lTags){tag in
                                    TagView(tag: tag)
                                }
                            }
                        }
                        TextBox(text: leasure.lDesc)
                        HStack{
                            Text("Évènement à venir")
                            Spacer()
                            Image(systemName: "line.horizontal.3.decrease")
                        }
                        .font(.headline)
                    }
                    .padding(.horizontal, 20)
                        ForEach(eventList.filter {event in
                            (leasureList[event.eLeasure].lLabel == leasure.lLabel && !event.ePast)
                        }){event in
                            EventRow(event: event)
                        }
                   
                }
                
            }
            .ignoresSafeArea()
            
            
            FloatingButton(label: "Créer un évènement")
                .padding()
        }
    }
}

#Preview {
    EcranLoisir(leasure: leasureList[2])
}
