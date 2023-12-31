//
//  EcranSuggestions.swift
//  PlayPop
//
//  Created by apprenant50 on 30/10/2023.
//
// Affiche des suggestions de loisirs en fonction des filtres de l'utilisateur

import SwiftUI
import Foundation

struct EcranSuggestions: View {
    @Environment (\.dismiss) var dismiss
    @EnvironmentObject var data: UserData
    @State var selectedTags: [Tag] = []
    @State var showingFiltres = false
    
    
    //Vérifie quels loisirs sont à afficher en fonction des tags
    func showInDisplay (leasure: Leasure)-> Bool {
        var show = false
        // Vérifie que le loisir corresponde a tous les tags de type séléctionnés
        for tag in (selectedTags) {
            if (!leasure.lTags.contains { tag1 in
                tag.id == tag1.id}) {
                    return show
                }
        }
        // Vérifie aue le loisir corresponde a au moins un des tags d'accés selectionnés pour le budget et le local
        for tag in (data.user.pAnswers) {
                if (leasure.lTags.contains { tag1 in
                    tag.id == tag1.id} && tag.tId >= 100 && tag.tId <= 101) || (data.user.pAnswers.contains { tag1 in
                        tag.id == tag1.id} && tag.tId > 101) {
                    show = true
                    return show
                }
        }
        return true
    }
    
    var body: some View {
            VStack (alignment: .leading, spacing: 20){
                
                // Affiche les tags actuellement selectionnés et le bouton pour les modifier
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        
                        Button(action: {
                            showingFiltres.toggle()
                        }, label: {
                            Label(
                                title: { Text("éditer") },
                                icon: { Image(systemName: "tag") })
                                .padding(.vertical, 5)
                                .padding(.horizontal, 15)
                                .background(Color(.systemGray6))
                                .clipShape(Capsule())
                        }) .foregroundStyle(.primary)
                        
                        ForEach (data.user.pAnswers + selectedTags) {tag in
                            TagView(tag: tag)
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .padding(.horizontal, -20)
                
//              Affiche les loisirs qui ont tous les tags selectionnés
                ScrollView (showsIndicators: false){
                    VStack{
                        if ((data.leasureList.filter {
                            leasure in
                            showInDisplay(leasure: leasure)
                        }).count == 0) {
                            HStack {
                                Spacer()
                                Text("Aucun loisir ne correspond à ces tags")
                                    .font(.headline)
                                    .foregroundStyle(.tertiary)
                                    .multilineTextAlignment(.center)
                                Spacer()
                            }
                        } else {
                            LazyVGrid(
                                columns: [GridItem(.adaptive(minimum: 130, maximum: 360))],
                                content:
                                    {
                                        ForEach(data.leasureList.filter {
                                            leasure in
                                            showInDisplay(leasure: leasure)
                                        }) {leasure in
                                            NavigationLink(destination: {
                                                if let idx = data.leasureList.firstIndex(where: {$0.id == leasure.id}) {
                                                    EcranLoisir(leasureIndex: idx)
                                                }
                                                //                                        EcranLoisir(leasure: leasure)
                                            }, label: {
                                                CardComponent(leasure: leasure)
                                                    .padding(5)
                                            })
                                        }
                                    }).frame(width: 360)
                        }
                    } .padding(.bottom, 100)
                } .ignoresSafeArea()
            }
                .fullScreenCover(isPresented: $showingFiltres) {
                EcranFiltre(isPresented: $showingFiltres, fSelectedTags: $selectedTags)
                    }.padding()
                .tint(.primary)
                .navigationTitle("Suggestions")
                .toolbar {
                    ToolbarItem (placement: .navigationBarTrailing) {
                        ProfileButton()
                            .buttonStyle(CustomButtonAnimation())
                    }
                    ToolbarItem(placement: .topBarLeading) {
                        Button(action: {dismiss()}, label:{
                            HStack{
                                Image(systemName: "chevron.backward")
                                    .font(.title2)
                                Text("Retour")
                                    .font(.title3)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 6)
                            .background(.ultraThinMaterial)
                            .clipShape(Capsule())
                        })
                    }
                }
                .navigationBarBackButtonHidden()
    }
}

#Preview {
    EcranSuggestions()
        .environmentObject(dataDev)
}
