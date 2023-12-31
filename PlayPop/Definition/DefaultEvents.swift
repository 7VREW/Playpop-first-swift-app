//
//  DefaultEvents.swift
//  PlayPop
//
//  Created by Émilio Williame on 27/10/2023.
//

import Foundation
import MapKit


//Film d'horreur
var horrorEvent1 = Event(eLabel: "Soirée film d'horreur", eDesc: "Qui n'a pas envie de quelques frayeurs pour Halloween. Venez nombreux !", eLeasure: 3, eImage: leasureList[3].lImage, eMinU: 2, eMaxU: 7, eUsersList: [jDPDev.id], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(1000), ePast: false, eActualNumberParticipant: 5)


//Skate
var skateEvent1 = Event(eLabel: "Initiation au skate", eDesc: "Pour ceux qui n'ont jamais essayé et qui souhaitent se lancer !", eLeasure: 7, eImage: leasureList[7].lImage, eMinU: 2, eMaxU: 10, eUsersList: [jDPDev.id], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(-1), ePast: false, eActualNumberParticipant: 9)


//Jeu de rôle
var jDREvent1 = Event(eLabel: "One shot D&D", eDesc: "Une première partie de donjons et dragons pour faire découvrir le jeu a de nouveaux joueurs", eLeasure: 0, eImage: leasureList[0].lImage, eMinU: 3, eMaxU: 5, eUsersList: [jDPDev.id], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(300000), ePast: false, eActualNumberParticipant: 4)


//Lecture
var lectureEvent1 = Event(eLabel: "Réunion club lecture du \(Date())", eDesc: "Réunion hebdomadaire du club lecture. Pensez a prendre vos livres!", eLeasure: 1, eImage: leasureList[1].lImage, eMinU: 6, eMaxU: 15, eUsersList: [], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(20000), ePast: false, eActualNumberParticipant: 8)


//Théatre improvisation
var theatreEvent1 = Event(eLabel: "CircImprov Paris 2023", eDesc: "L'évenement incontournable pour s'initier au théatre d'improvisation", eLeasure: 4, eImage: leasureList[4].lImage, eMinU: 10, eMaxU: 40, eUsersList: [], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(800), ePast: false, eActualNumberParticipant: 31)


//Bowling
var eventBowling1 = Event(eLabel: "Bowling sans pression", eDesc: "Petite séance de bowling sans pression pour discuter entre jeunes; tout niveaux acceptés.", eLeasure: 2, eImage: leasureList[2].lImage, eMinU: 2, eMaxU: 6, eUsersList: [], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(-100), ePast: false, eActualNumberParticipant: 5)

var eventBowling2 = Event(eLabel: "Mini tournoi bowling", eDesc: "Mini tournoi de bowling organisé par le club \"Le bowling c'est cool!\"", eLeasure: 2, eImage: leasureList[2].lImage, eMinU: 4, eMaxU: 8, eUsersList: [], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(800000), ePast: false, eActualNumberParticipant: 5)


//Jardinage collaboratif
var eventGarden1 = Event(eLabel: "Chantier à la BASE Toulouse", eDesc: "La BASE Toulouse à besoin d'un coup de main pour réaménager son nouveau terrain! Viens rejoinder notre équipe motivée, goûter offert sur place.", eLeasure: 5, eImage: leasureList[5].lImage, eMinU: 2, eMaxU: 15, eUsersList: [], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(2000), ePast: false, eActualNumberParticipant: 12)


//Ping-pong
var pingPong1 = Event(eLabel: "Petit ping-pong au parc", eDesc: "Pas besoins de ramener de raquettes on a tout ce qu'il faut", eLeasure: 8, eImage: leasureList[8].lImage, eMinU: 2, eMaxU: 15, eUsersList: [], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(14000), ePast: false, eActualNumberParticipant: 9)


//Karting
var karting1 = Event(eLabel: "Karting tous ensemble pour le fun", eDesc: "On a tout ce qu'il faut, soyez motivé !", eLeasure: 10, eImage: leasureList[10].lImage, eMinU: 2, eMaxU: 15, eUsersList: [], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(31000), ePast: false, eActualNumberParticipant: 7)


//Guitare
var guitarEvent1 = Event(eLabel: "Cours de guitare", eDesc: "Donne cours de guitare electrique gratuits pour jeunes rockers intéressés", eLeasure: 9, eImage: leasureList[9].lImage, eMinU: 1, eMaxU: 4, eUsersList: [], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(2000000), ePast: false, eActualNumberParticipant: 3)

var hipHopEvent1 = Event(eLabel: "Ça percutte, ça bouge, ça vibe", eDesc: "Let's go pour une séance tour de pass-pass au centre ville", eLeasure: 6, eImage: leasureList[6].lImage, eMinU: 5, eMaxU: 15, eUsersList: [], eLocation: Location(name: "Pin", coordinate: CLLocationCoordinate2D(latitude: 51.50, longitude: -0.1275)), eDate: Date().addingTimeInterval(400000), ePast: false, eActualNumberParticipant: 8)
