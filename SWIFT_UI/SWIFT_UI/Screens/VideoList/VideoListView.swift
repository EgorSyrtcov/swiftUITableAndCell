//
//  ContentView.swift
//  SWIFT_UI
//
//  Created by Egor Syrtcov on 8/5/20.
//  Copyright © 2020 Macintosh. All rights reserved.
//

import SwiftUI

struct VideoListView: View {
    
    var videos: [Video] = VideoList.topTen
    
    var body: some View {
        
        NavigationView {
            List(videos, id: \.id) { video in
                
                NavigationLink( destination: VideoDetailView(video: video), label: {
                    VideoCell(video: video)
                })
            }
            .navigationTitle("Sean's Top 10")
        }
    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            VideoListView()
        }
    }
