//
//  RedditDataViewModel.swift
//  redditIosCodeChallenge
//
//  Created by Frank Jansen on 26/10/22.
//
//
import Foundation
//
class RedditDataViewModel: ObservableObject {
    @Published var reddits = [Children]()
    
    func loadData() async {
        guard let url = URL(string:"https://www.reddit.com/top.json") else {
            print("Invalid Url")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decodedData = try JSONDecoder().decode(Json.self, from: data)
            reddits = decodedData.data.children
        } catch {
            print("Invalid data \(error)")
        }
    }
    
}
