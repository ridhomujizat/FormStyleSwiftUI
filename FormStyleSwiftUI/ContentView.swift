//
//  ContentView.swift
//  FormStyleSwiftUI
//
//  Created by ridho mujizat on 12/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            Form{
                Section(){
                    NavigationLink(destination: About()){
                        HStack{
                            Image("profile")
                                .resizable()
                                .scaledToFill()
                                .frame(width:50, height: 50)
                                .clipShape(Circle())
                            
                            VStack(alignment: .leading){
                                Text("Ipung")
                                Text("Swift Enthusiast").font(.caption)
                            }
                        }
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    }

                }
                
                Section(header: Text("Pengaturan Umum")){
                    HStack{
                        Image(systemName: "star.fill")
                            .frame(width:35, height:35)
                            .foregroundColor(Color.white)
                            .background(Color.orange)
                            .cornerRadius(10)
                        
                        Text("Pesan Berbintang")
                        
                    }
                    HStack{
                        Image(systemName: "tv")
                            .frame(width:35, height:35)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .cornerRadius(10)
                        
                        Text("WhatsApp Web")
                        
                    }
                }
                
                Section(header: Text("Pengaturan Akun")){
                    HStack{
                        Image(systemName: "person")
                            .frame(width:35, height:35)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                        Text("Pesan Berbintang")
                        
                    }
                    HStack{
                        Image(systemName: "phone.circle")
                            .frame(width:35, height:35)
                            .foregroundColor(Color.white)
                            .background(Color.green)
                            .cornerRadius(10)
                        
                        Text("Pesan Berbintang")
                        
                    }
                }
                
            }.navigationBarTitle("Setting")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct About : View {
    var body: some View {
        Text("Halaman About")
    }
}
