//
//  RedditData.swift
//  redditIosCodeChallenge
//
//  Created by Frank Jansen on 26/10/22.
//

import Foundation

struct Json: Decodable {
    let data: ListOfData
}
struct ListOfData: Decodable {
    let children: [Children]
}
struct Children: Decodable {
    let data: ChildrenData
}
struct ChildrenData: Decodable {
    let title: String?
    let id: String
    
}
