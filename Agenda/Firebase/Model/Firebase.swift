//
//  Firebase.swift
//  Agenda
//
//  Created by Fabricio Rodrigo Baixo on 12/30/20.
//  Copyright © 2020 Alura. All rights reserved.
//

import UIKit
import Alamofire

class Firebase: NSObject {

    func enviaTokenParaServidor(token:String){
        Alamofire.request("http://localhost:8080/api/firebase/dispositivo",method: .post,headers:["token":token]).responseData {(response) in
            if response.error == nil{
                print ("Token Enviado com sucesso")
            }else{
                print("ERROR:---")
                print(response.error!)
            }
        }
    }
}
