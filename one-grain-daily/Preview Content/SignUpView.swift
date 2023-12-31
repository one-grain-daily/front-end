//
//  SignUpView.swift
//  one-grain-daily
//
//  Created by 김주현 on 2023/08/20.
//

import SwiftUI
import Alamofire

struct SignUpView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @State private var showingAlert = false
    @State var uiTabarController: UITabBarController?
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var nickname: String = ""

    

    var btnBack : some View { Button(action: {
        self.showingAlert = true
    }){
        Text("뒤로가기")
    }.alert(isPresented: $showingAlert){
        Alert(title: Text("회원 가입 취소"), message: Text("회원가입을 취소하시겠습니까?"),
              primaryButton: .destructive(Text("취소하기"), action: {
            presentationMode.wrappedValue.dismiss()
        })
              , secondaryButton: .cancel(Text("이어하기")))
    }
        
    }
    
    var body: some View {
        VStack{
            Text("회원가입")
                .font(.title)
                .fontWeight(.heavy)
                .padding().frame(height:100)
                .foregroundColor(.black)
            HStack{
                Spacer().frame(width: 20)
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(.bottom)
                
                TextField("아이디를 입력하세요.", text: $username)
                    .frame(width: 270, height: 10)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Spacer().frame(width: 20)
            }
                            

            HStack{
                Spacer().frame(width: 20)
                Image(systemName: "tag")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(.bottom)
                
                TextField("닉네임을 입력하세요", text: $nickname)
                    .frame(width: 270, height: 10)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Spacer().frame(width: 20)
                    
            }
            HStack{
                Spacer().frame(width: 20)
                Image(systemName: "lock")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(.bottom)
                    
                SecureField("비밀번호를 입력하세요", text: $password)
                    .frame(width: 270, height: 10)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                Spacer().frame(width: 20)
            }
            
            Button(action: {
                print(self.username + self.password + self.nickname)

                sendPostRequest("http://115.85.183.243:8080/join", parameters:
                                ["username": self.username, "password": self.password, "nickname": self.nickname]
                                 ){
                    responseObject, error in guard let _ = responseObject, error == nil else {
                        print(error ?? "Unknown error")
                        return
                    }
                }
                self.presentationMode.wrappedValue.dismiss()
            }){
                Text("회원가입")
                    .frame(width: 80, height: 10)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(.orange))
                    .cornerRadius(10)
                    
            }
            .padding()
            .onSubmit {
                
            }
        }
        .padding(.all, 30)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: btnBack)
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
