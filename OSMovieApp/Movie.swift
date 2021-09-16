//
//  Movie.swift
//  OSMovieApp
//
//  Created by Gabriel Batista Cristiano on 16/09/21.
//

import Foundation

struct Root: Codable {
    
    let title: String?
    let vote_count: Int?
    let runtime: Int?
    let release_date: String?
    let poster_path: String?
    let popularity: Double?
    let overview: String?
    let original_title: String?
    let original_language: String?
}
