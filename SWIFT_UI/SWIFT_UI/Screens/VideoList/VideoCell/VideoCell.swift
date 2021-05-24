//
//  VideoCell.swift
//  SWIFT_UI
//
//  Created by Egor Syrtcov on 5/24/21.
//  Copyright © 2021 Macintosh. All rights reserved.
//

import SwiftUI

struct VideoCell: View {
    
    var video: Video
    
    var body: some View {
        
        HStack {
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(14)
                .padding(.vertical, 4)
            
            VStack(alignment: .leading, spacing: 1) {
                Text(video.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
