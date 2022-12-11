//
//  ContentView.swift
//  redditIosCodeChallenge
//
//  Created by Frank Jansen on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = RedditDataViewModel()
    var body: some View {
        VStack {
            Text("Hello")
            NavigationView {
                List(viewModel.reddits, id: \.data.id) { item in
                    VStack{
                        Text(item.data.title ?? "No name")
                        
                    }
                }
                .task {
                    await viewModel.loadData()
                }
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
