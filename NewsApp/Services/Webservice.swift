//
//  Webservice.swift
//  NewsApp
//
//  Created by Yunus Emre Berdibek on 19.03.2023.
//

import Foundation

class Webservice {
    
    //Asenkron olan işlem bittikten sonra yapılacak işlemi belirtmek için escaping closure kullanılacak.
    //Json'dan gelen veri News dizisi oldugu için closure parametresi dizi oldu.
    func haberleriIndir(url:URL, completion: @escaping ([News]?) -> () ) {
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                
                let haberlerDizisi = try? JSONDecoder().decode([News].self, from: data)
                
                if let haberlerDizisi = haberlerDizisi {
                    completion(haberlerDizisi)
                }
                
            }
            
        }.resume()
        
    }
}
