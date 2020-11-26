//
//  ContentView.swift
//  Session2
//
//  Created by user on 26.11.2020.
//

import SwiftUI
import Alamofire

struct SignUpView:View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.init("backgroundColor").edgesIgnoringSafeArea(.all)
            }
        }
    }
}

struct ContentView: View {
    @State var Login: String=""
    @State var Password:String = ""
    
    @State
    var isAuth: Bool = false
    
    var body: some View {
        ZStack{
            Color.init("backgroundColor").edgesIgnoringSafeArea(.all)
            VStack{
                ZStack{
                    Image("fitness-logo-png-1")
                        .resizable()
                        .frame(width:110,height:120)
                        .padding(.bottom,70)
                    
                    Text("Home\nGym")
                        .foregroundColor(.white)
                        .font(.system(size: 35, weight: .regular, design: .default))
                        .padding(.top, 70)
                        
                        .multilineTextAlignment(.center)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        .size(width: 280, height: 40)
                        .foregroundColor(.white)
                        .padding(.leading,15)
                    HStack{
                        Image(systemName:"person.fill")
                            .font(.system(size:20))
                            .foregroundColor(.gray)
                        Divider()
                        TextField("Ivanov",text:$Login)
                        
                    }
                    .padding(.leading,30)
                    
                    
                }
                .frame(width:310,height:40)
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        
                        .size(width: 280, height: 40)
                        .foregroundColor(.white)
                        .padding(.leading,15)
                    HStack{
                        Image(systemName:"lock.fill")
                            .font(.system(size:20))
                            .foregroundColor(.gray)
                        Divider()
                            .padding(.leading,3)
                        SecureField("Password",text:$Password)
                        
                    }
                    .padding(.leading,30)
                    
                    
                }
                .frame(width:310,height:40)
                if self.isAuth {
                    ZStack{
                        RoundedRectangle(cornerRadius: 60)
                            .size(width: 280, height: 40)
                            .foregroundColor(.white)
                            .padding(.leading,15)
                        HStack{
                            Image(systemName:"person.fill")
                                .font(.system(size:20))
                                .foregroundColor(.gray)
                            Divider()
                            TextField("Ivanov",text:$Login)
                            
                        }
                        .padding(.leading,30)
                        
                        
                    }
                    .frame(width:310,height:40)
                    ZStack{
                        RoundedRectangle(cornerRadius: 60)
                            
                            .size(width: 280, height: 40)
                            .foregroundColor(.white)
                            .padding(.leading,15)
                        HStack{
                            Image(systemName:"lock.fill")
                                .font(.system(size:20))
                                .foregroundColor(.gray)
                            Divider()
                                .padding(.leading,3)
                            SecureField("Password",text:$Password)
                            
                        }
                        .padding(.leading,30)
                        
                        
                    }
                    .frame(width:310,height:40)
                }
                
                ZStack{
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 60)
                            
                            .size(width: 280, height: 40)
                            .foregroundColor(.white)
                            .padding(.leading,15)
                        Button(action:{
                            
                        }){
                            Text("Sign In")
                                .font(.system(size: 20))
                                .padding(.bottom,5)
                                .foregroundColor(Color("backgroundColor"))
                        }
                        
                        
                    }
                    .frame(width:310,height:50)
                    //.padding(.top,20)
                    
                    ZStack{
                        Button(action:{
                            self.isAuth = true
                        }){
                            Text("Sign Up")
                                .foregroundColor(.white)
                                .underline()
                                .font(.system(size:20))
                                .padding(.top,70)
                        }
                        
                    }
                    
                }
                
                
                ZStack{
                    Button(action:{
                        print("based")
                    }){
                        Text("Skip")
                            .foregroundColor(.white)
                            .font(.system(size: 15))
                            .underline()
                    }
                    
                }
                .padding(.top,40)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Item:Codable{
    var notice:JOP
}

struct JOP:Codable{
    var token: Int
}

