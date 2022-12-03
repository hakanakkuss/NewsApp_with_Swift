//
//  Webservice.swift
//  NewsApp
//
//  Created by Macbook Pro on 3.12.2022.
//

import Foundation

class Webservice {
    
    func getData(url: URL, completion: @escaping ([News]?) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            }
            else if let data = data {
                do{
                    let response = try? JSONDecoder().decode([News].self, from: data)
                    if let response = response {
                        completion(response)
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
            
        }.resume()
        
    }
  
}




