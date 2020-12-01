//
//  ContentView.swift
//  Session2
//
//  Created by user on 26.11.2020.
//

import SwiftUI
import Alamofire
import Combine



struct Hello1View:View{
    @EnvironmentObject
    var model: ViewModel
    var body:some View{
        ZStack{
            Color.init("backgroundColor").edgesIgnoringSafeArea(.all)
            VStack{
                Text("StGep 1/5")
                    .foregroundColor(.white)
                    .font(.custom("ND Astronee", size: 50))
//                    .font(.system(size: 50, weight: .regular, design: .default))
                    .padding(.top, 0)
                    
                    .multilineTextAlignment(.center)
                Text("What is your purpose?")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .regular, design: .default))
                    .padding(.top, 50)
                    
                    .multilineTextAlignment(.center)
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        
                        .size(width: 350, height: 80)
                        .foregroundColor(.white)
                        .padding(.leading,30)
                        .padding(.top,50)
                    HStack{
                        Image(systemName: "scalemass")
                            .font(.system(size: 30))
                            .foregroundColor(Color("backgroundColor"))
                        Button(action:{
                            self.model.loadingState = .step2
                        }){
                            Text("Weight loss")
                                .font(.system(size: 30))
                                .padding(.bottom,5)
                                .foregroundColor(Color("backgroundColor"))
                        }
                    }
                    .padding(.top,70)
                    
                    
                    
                }
                .frame(width:400,height:100)
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        
                        .size(width: 350, height: 80)
                        .foregroundColor(.white)
                        .padding(.leading,30)
                        .padding(.top,50)
                    HStack{
                        Image(systemName: "figure.wave")
                            .font(.system(size: 30))
                            .padding(.bottom,5)
                            .foregroundColor(Color("backgroundColor"))
                        Button(action:{
                            self.model.loadingState = .step2
                        }){
                            Text("Keeping fit")
                                .font(.system(size: 30))
                                .padding(.bottom,5)
                                .foregroundColor(Color("backgroundColor"))
                        }
                    }
                    .padding(.top,70)
                    
                    
                    
                }
                .frame(width:400,height:100)
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        
                        .size(width: 350, height: 80)
                        .foregroundColor(.white)
                        .padding(.leading,30)
                        .padding(.top,50)
                    HStack{
                        Image(systemName: "hand.raised")
                            .font(.system(size: 30))
                            .padding(.bottom,5)
                            .foregroundColor(Color("backgroundColor"))
                        Button(action:{
                            self.model.loadingState = .step2
                        }){
                            Text("Build muscle")
                                .font(.system(size: 30))
                                .padding(.bottom,5)
                                .foregroundColor(Color("backgroundColor"))
                        }
                    }
                    .padding(.top,70)
                    
                    
                }
                .frame(width:400,height:100)
            }
            
        }
    }
}

struct Hello2View:View{
    @EnvironmentObject
    var model: ViewModel
    var body:some View{
        ZStack{
            Color.init("backgroundColor").edgesIgnoringSafeArea(.all)
            VStack{
                Text("Step 2/5")
                    .foregroundColor(.white)
                    .font(.system(size: 50, weight: .regular, design: .default))
                    .padding(.top, 0)
                    
                    .multilineTextAlignment(.center)
                Text("What is your gender?")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .regular, design: .default))
                    .padding(.top, 50)
                    
                    .multilineTextAlignment(.center)
                HStack{
                    ZStack{
                                       
                                            Button(action:{
                                                self.model.loadingState = .signin
                                            }){
                                                Circle()
                                                    
                                                    .size(width: 100, height: 100)
                                                    .foregroundColor(.white)
                                                    .padding(.leading,30)
                                                    .padding(.top,50)
                                                
                                                    Image(systemName: "rays")
                                                        .font(.system(size: 30))
                                                        .foregroundColor(Color("backgroundColor"))
                                                        .padding(.trailing,105)
                                            }
                                        
                                        .padding(.bottom,5)
                        Text("Female")
                            .font(.system(size: 30))
                            .padding(.top,160)
                            .padding(.trailing,45)
                            .foregroundColor(.white)
                                        
                                        
                                    }
                                    .frame(width:200,height:200)
                    ZStack{
                                        
                                            Button(action:{
                                                self.model.loadingState = .signin
                                            }){
                                                Circle()
                                                    
                                                    .size(width: 100, height: 100)
                                                    .foregroundColor(.white)
                                                    .padding(.leading,30)
                                                    .padding(.top,50)
                                                
                                                    Image(systemName: "cursorarrow")
                                                        .font(.system(size: 30))
                                                        .foregroundColor(Color("backgroundColor"))
                                                        .padding(.trailing,110)
                                            }
                                        
                                        .padding(.bottom,5)
                        Text("Male")
                            .font(.system(size: 30))
                            .padding(.top,160)
                            .padding(.trailing,40)
                            .foregroundColor(.white)
                                        
                                        
                                    }
                                    .frame(width:200,height:200)
                }.padding(.leading,50)
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        
                        .size(width: 350, height: 80)
                        .foregroundColor(.white)
                        .padding(.leading,30)
                        .padding(.top,50)
                    HStack{
                        
                        Button(action:{
                            self.model.loadingState = .signin
                        }){
                            Text("Next")
                                .font(.system(size: 30))
                                .padding(.bottom,5)
                                .foregroundColor(Color("backgroundColor"))
                        }
                    }
                    .padding(.top,70)
                    
                    
                }
                .frame(width:400,height:100)
                
            }
            
        }
    }
}
struct Hello3View:View{
    @EnvironmentObject
    var model: ViewModel
    var body:some View{
        ZStack{
            Color.init("backgroundColor").edgesIgnoringSafeArea(.all)
            VStack{
                Text("Step 3/5")
                    .foregroundColor(.white)
                    .font(.system(size: 50, weight: .regular, design: .default))
                    .padding(.top, 0)
                    
                    .multilineTextAlignment(.center)
                Text("What do you want to work on?")
                    .foregroundColor(.white)
                    .font(.system(size: 25, weight: .regular, design: .default))
                    .padding(.top, 50)
                    
                    .multilineTextAlignment(.center)
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        
                        .size(width: 250, height: 60)
                        .foregroundColor(.white)
                        .padding(.top,50)
                    HStack{
                        
                        Button(action:{
                            self.model.loadingState = .signin
                        }){
                            Text("Hands")
                                .font(.system(size: 25))
                                .padding(.bottom,5)
                                .padding(.trailing,110)
                                .foregroundColor(Color("backgroundColor"))
                        }
                    }
                    .padding(.top,70)
                    
                    
                }
                .frame(width:350,height:60)
                .padding(.trailing,50)
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        
                        .size(width: 250, height: 60)
                        .foregroundColor(.white)

                        .padding(.top,50)
                    HStack{
                        
                        Button(action:{
                            self.model.loadingState = .signin
                        }){
                            Text("Spine")
                                .font(.system(size: 25))
                                .padding(.bottom,5)
                                .padding(.trailing,110)
                                .foregroundColor(Color("backgroundColor"))
                        }
                    }
                    .padding(.top,70)
                    
                    
                }
                .frame(width:350,height:60)
                .padding(.trailing,50)
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        
                        .size(width: 250, height: 60)
                        .foregroundColor(.white)
                        
                        .padding(.top,50)
                    HStack{
                        
                        Button(action:{
                            self.model.loadingState = .signin
                        }){
                            Text("Torso")
                                .font(.system(size: 25))
                                .padding(.bottom,5)
                                .padding(.trailing,110)
                                .foregroundColor(Color("backgroundColor"))
                        }
                    }
                    .padding(.top,70)
                    
                    
                }
                .frame(width:350,height:60)
                .padding(.trailing,50)
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        
                        .size(width: 250, height: 60)
                        .foregroundColor(.white)

                        .padding(.top,50)
                    HStack{
                        
                        Button(action:{
                            self.model.loadingState = .signin
                        }){
                            Text("Legs")
                                .font(.system(size: 25))
                                .padding(.bottom,5)
                                .padding(.trailing,110)
                                .foregroundColor(Color("backgroundColor"))
                        }
                    }
                    .padding(.top,70)
                    
                    
                }
                .frame(width:350,height:60)
                .padding(.trailing,50)
            }
            Image("dlya-kalkul")
                .font(.system(size: 500))
                .padding(.leading,380)
                .padding(.top,300)
            
        }
    }
}
struct ContentView: View {
    @ObservedObject
    var model: ViewModel = .init()
    
    var body: some View {
        switch self.model.loadingState {
        case .step1:
            Hello1View()
                .environmentObject(self.model)
        case .signin:
            SignIn()
                .environmentObject(self.model)
        case .step2:
            Hello2View()
            .environmentObject(self.model)
        }
    }
}


struct SignIn: View {
    @EnvironmentObject
    var model: ViewModel
    
    
    var body: some View {
        ZStack{
            Color.init("backgroundColor").edgesIgnoringSafeArea(.all)
            VStack{
                ZStack{
                    Image("fitness-logo-png-1")
                        .resizable()
                        .frame(width:120,height:130)
                        .padding(.bottom,70)
                    
                    Text("Home\nGym")
                        .foregroundColor(.white)
                        .font(.system(size: 35, weight: .regular, design: .default))
                        .padding(.top, 70)
                        
                        .multilineTextAlignment(.center)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        .size(width: 300, height: 40)
                        .foregroundColor(.white)
                        .padding(.leading,5)
                    HStack{
                        Image(systemName:"person.fill")
                            .font(.system(size:20))
                            .foregroundColor(.gray)
                        Divider()
                        TextField("Ivanov",text: self.$model.Login)
                        
                    }
                    .padding(.leading,30)
                    
                    
                }
                .frame(width:310,height:40)
                
                if self.model.isAuth {
                    ZStack{
                        RoundedRectangle(cornerRadius: 60)
                            
                            .size(width: 300, height: 40)
                            .foregroundColor(.white)
                            .padding(.leading,5)
                        HStack{
                            Image(systemName:"envelope")
                                .font(.system(size:20))
                                .foregroundColor(.gray)
                            Divider()
                                .padding(.leading,3)
                            TextField("Email",text: self.$model.Email)
                            
                        }
                        .padding(.leading,30)
                        
                        
                    }
                    .frame(width:310,height:40)
                    ZStack{
                        RoundedRectangle(cornerRadius: 60)
                            
                            .size(width: 300, height: 40)
                            .foregroundColor(.white)
                            .padding(.leading,5)
                        HStack{
                            Image(systemName:"lock.fill")
                                .font(.system(size:20))
                                .foregroundColor(.gray)
                            Divider()
                                .padding(.leading,3)
                            SecureField("Password",text: self.$model.Password)
                            
                        }
                        .padding(.leading,30)
                        
                        
                    }
                    .frame(width:310,height:40)
                }
                ZStack{
                    RoundedRectangle(cornerRadius: 60)
                        
                        .size(width: 300, height: 40)
                        .foregroundColor(.white)
                        .padding(.leading,5)
                    HStack{
                        Image(systemName:"lock.fill")
                            .font(.system(size:20))
                            .foregroundColor(.gray)
                        Divider()
                            .padding(.leading,3)
                        SecureField("Password",text: self.$model.PasswordSec)
                        
                    }
                    .padding(.leading,30)
                    
                    
                }
                .frame(width:310,height:40)
                if self.model.isAuth{
                    ZStack{
                        RoundedRectangle(cornerRadius: 60)
                            
                            .size(width: 300, height: 40)
                            .foregroundColor(.white)
                            .padding(.leading,5)
                            .padding(.top,10)
                        Button(action:{
                            //loadingState = self.success
                            //self.model.loadingState = .step1
                            self.model.signup()
                        }){
                            Text("Sign In")
                                .font(.system(size: 20))
                                .padding(.top,10)
                                .foregroundColor(Color("backgroundColor"))
                        }
                        
                        
                    }
                    .frame(width:310,height:50)
                }else{
                    
                    
                    
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 60)
                            
                            .size(width: 300, height: 40)
                            .foregroundColor(.white)
                            .padding(.leading,5)
                        Button(action:{
                            self.model.signin()
                            //self.model.loadingState = .step1
                        }){
                            Text("Sign In")
                                .font(.system(size: 20))
                                .padding(.bottom,5)
                                .foregroundColor(Color("backgroundColor"))
                        }
                        
                        
                    }.frame(width:310,height:50)
                    .frame(width:310,height:50)
                    //.padding(.top,20)
                    
                    ZStack{
                        Button(action:{
                            self.model.isAuth = true
                            
                        }){
                            Text("Sign Up")
                                .foregroundColor(.white)
                                .underline()
                                .font(.system(size:20))
                                .padding(.top,70)
                        }
                        
                    }.frame(width:310,height:50)
                    
                    
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
                .padding(.top,100)
                .frame(height: 0.0)
            }
        }
    }
}


struct Item:Codable{
    var notice:JOP
}

struct JOP:Codable{
    var token: Int
}

enum ChangeScene {
    case step1, signin, step2
}

class ViewModel: ObservableObject {
    @Published
    var loadingState: ChangeScene = .step1
    @Published var Login: String="qwe"
    @Published var Password:String = "123qwe"
    @Published var PasswordSec:String = "123qwe"
    @Published var Email:String = "test@mail.ru"
    @Published
    var isAuth: Bool = false
    
    @Published
    var userInf: JOP? = nil
    
    func signin() {
        AF
            .request("http://gym.areas.su/signin", method: .post, parameters: [
                "username": self.Login,
                "password": self.Password
            ])
            .responseDecodable(of: Item.self) { response in
                print(response)
                if response.value != nil {
                    if !self.Password.isEmpty
                    {
                        self.isAuth = true
                        self.loadingState = .step1
                        //self.userInformation = response.value!
                        //print("You Auth, your Token: \(self.userInformation!.notice.token)")
                    }
                }
            }
    }
    func signup () {
        AF
            .request("http://gym.areas.su/signup", method: .post, parameters: [
                "username": self.Login,
                "email": self.Email,
                "password": self.Password,
                "weight": 20,
                "height": 20
            ])
            .responseDecodable(of: Item.self) { response in
                if case.success = response.result,
                   self.Password == self.PasswordSec
                {
                    
                    print("Person is register")
                    self.isAuth.toggle()
                    self.loadingState = .step1
                }
                
                
            }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Hello3View()
    }
}
