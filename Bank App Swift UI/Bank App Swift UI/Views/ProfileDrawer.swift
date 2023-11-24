//
//  ProfileModal.swift
//  Bank App Swift UI
//
//  Created by Paulina Lopez Holguin on 16/11/23.
//

import SwiftUI

struct ProfileDrawer: View {
    
    @Binding var isDrawerOpen : Bool
    
    var body: some View {
        ZStack {
            // Main content
            Color.black.edgesIgnoringSafeArea(.all).opacity(0.8)
            
            ScrollView{
                HStack{
                    Button(action: {
                        print("...")
                        isDrawerOpen = false
                    }, label: {
                        Image(systemName: "xmark")
                    }).foregroundColor(ColorSets.tertiaryColor).padding(20)
                        .accessibilityLabel("Close icon")
                        .accessibilityHint("Click twice for closing profile settings")
                    
                    Spacer()
                }
                
                VStack{
                    
                    Image(systemName: "camera")
                    // Profile picture
                        .foregroundColor(.white)
                        .frame(width:80, height: 80)
                        .background(ColorSets.tertiaryColor)
                        .cornerRadius(200)
                        .padding(.horizontal, 1)
                        .accessibilityLabel("Profile picture")
                    
                    Text("Paulina Lopez Holguin")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    
                    HStack{
                        Text("@paulinalh")
                        Image(systemName: "qrcode.viewfinder")
                        // Profile picture
                        
                            .foregroundColor(.white)
                            .cornerRadius(200)
                            .padding(.horizontal, 1)
                    }
                    
                    HStack{
                        
                        cardItem(titleTop: .constant("Standard"), titleBottom: .constant("Your plan"), iconName: .constant("creditcard"))
                        
                        cardItem(titleTop: .constant("Invite your friends"), titleBottom: .constant("Get 50€"), iconName: .constant("person.fill"))
                        
                        
                    }
                    .padding()
                    
                    
                    ZStack(alignment: .leading){
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(height: 200)
                            .opacity(0.3)
                        
                        VStack(alignment: .leading){
                            listItem(title: .constant("Help"), iconName: .constant("info.circle.fill"))
                            listItem(title: .constant("Account"), iconName: .constant("person.fill"))
                            listItem(title: .constant("Learn"), iconName: .constant("lightbulb.fill"))
                            listItem(title: .constant("Inbox"), iconName: .constant("horn.fill"))
                        }.padding(10)
                        
                    }
                    .padding()
                    
                    ZStack(alignment: .leading){
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(height: 200)
                            .opacity(0.3)
                        
                        VStack(alignment: .leading){
                            listItem(title: .constant("Security and privacy"), iconName: .constant("shield.checkered"))
                            listItem(title: .constant("Notification settings"), iconName: .constant("bell.fill"))
                            listItem(title: .constant("Appearance"), iconName: .constant("paintpalette.fill"))
                            listItem(title: .constant("New features"), iconName: .constant("flask.fill"))
                        }.padding(10)
                        
                    }.padding()
                    
                    ZStack(alignment: .leading){
                        
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.white)
                            .shadow(radius: 5)
                            .frame(height: 200)
                            .opacity(0.3)
                        
                        VStack(alignment: .leading){
                            listItem(title: .constant("About us"), iconName: .constant("parkingsign"))
                            listItem(title: .constant("Log out"), iconName: .constant("door.left.hand.open"))
                        }.padding(10)
                        
                    }.padding()
                    
                    
                }.preferredColorScheme(.dark).opacity(0.8)
            }
            
        }.frame(width: UIScreen.main.bounds.width)
            .offset(x: isDrawerOpen ? 0 : -UIScreen.main.bounds.width / 2)
            .animation(.default)
    }
    
    //List item component
    struct listItem: View {
        @Binding var title: String
        @Binding var iconName: String
        
        
        var body: some View {
            Button(action: {
                //TODO: add action
            }, label: {
                HStack{
                    Image(systemName: iconName)
                    // Profile picture
                        .foregroundColor(.white)
                        .cornerRadius(200)
                        .padding(.horizontal, 1)
                    Text(title).font(.title3).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                }.padding(5)
            })
        }
    }
    
    //Card item component
    struct cardItem: View{
        
        @Binding var titleTop: String
        @Binding var titleBottom: String
        
        @Binding var iconName: String
        
        var body: some View{
            ZStack(alignment: .leading){
                
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
                    .frame(height: 200)
                    .opacity(0.2)
                
                VStack(alignment: .leading){
                    Image(systemName: iconName)
                    // Profile picture
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .cornerRadius(200)
                        .padding(.horizontal, 1)
                    
                    Text(titleTop).font(.title3)
                    Text(titleBottom).font(.title3).foregroundColor(ColorSets.tertiaryColor)
                }.padding(10)
                
            }
        }
        
    }
}

#Preview {
    ProfileDrawer(isDrawerOpen: .constant(false))
}
