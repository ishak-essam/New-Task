//
//  InputUi.swift
//  New Task
//
//  Created by Ishak Essam on 07/03/2023.
//

import SwiftUI

struct InputUi: View {
    @State  var username = "UserName";
    //    @State private var password = "ItemName";
    @State  var Phone = "Phone";
    @State private var IsPresented=true;
//    @Binding var Booe:Bool=false
//    @Binding var Item
//    ={
//        let phoneContent :String = $Phone
//        let username:String=$username
//    };
    var body: some View {
         NavigationView {
            VStack{
                    form(userform: username,Phone: Phone)
                       NavigationLink(destination: ContentView()) {
                           Text("Go To Next Step")
                       }
                   }
            }
        }
    func form(userform:String,Phone:String)->some View{
        Form {
            HStack{
                Text("Name")
                TextField("Username",text: $username)
                
            }
            HStack{
                Text("Phone")
                SecureField("Phone",text: $Phone)
            }
            HStack(){
                NavigationLink(destination: ContentView()) {
                    Button(action: {
                        print("$$$$$$$$$$")
                        print("Name \($username) ,Phone \(Phone)")
                        print("$$$$$$$$$$")
                    }, label: {
                            Text("Save")
                    }).sheet(isPresented: $IsPresented, content:{
                        ContentView()
                    })
                }
             
            }
        }
        
    }
    }

struct InputUi_Previews: PreviewProvider {
    static var previews: some View {
        InputUi()
//        let _ =   print(username ,password);
//        print("Hello Console")
        
    }
}
