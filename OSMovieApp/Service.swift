//
//  Service.swift
//  OSMovieApp
//
//  Created by Gabriel Batista Cristiano on 16/09/21.
//

import Foundation
import UIKit

func getMovieDetails() {
    
    if let url = URL(string: "https://api.themoviedb.org/3/movie/699?api_key=b1fd8a0053ece03d2d82afa541222f18&language=en-US") {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data{
                do{
                    let res = try JSONDecoder().decode(Root.self, from: data)
                }catch let error{
                    print(error)
                }
            }
            
        }.resume()
    }
    
    
}
