//
//  Challenge.swift
//  SpotifyPlayer
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }

    func setupViews() {

        // Comment in incrementally...
                let albumImage = makeImageView(named: "rush")
        //        let trackLabel = makeTrackLabel(withText: "Tom Sawyer")
        //        let albumLabel = makeAlbumLabel(withText: "Rush • Moving Pictures (2011 Remaster)")
        //
        //        let playButton = makePlayButton()
        //        let previewStartLabel = makePreviewLabel(withText: "0:00")
        //        let previewEndLabel = makePreviewLabel(withText: "0:30")
        //        let progressView = makeProgressView()
        //
        //        let spotifyButton = makeSpotifyButton(withText: "PLAY ON SPOTIFY")
        //
                view.addSubview(albumImage)
        //        view.addSubview(trackLabel)
        //        view.addSubview(albumLabel)
        //
        //        view.addSubview(playButton)
        //        view.addSubview(previewStartLabel)
        //        view.addSubview(progressView)
        //        view.addSubview(previewEndLabel)
        //
        //        view.addSubview(spotifyButton)

        // Start your layout here...
        
//        albumImage.setContentHuggingPriority(UILayoutPriority(rawValue: 249), for: .vertical)
//        albumImage.setContentCompressionResistancePriority(UILayoutPriority(rawValue: 749), for: .vertical)
        
        NSLayoutConstraint.activate([
            albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1),
            albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width)
        ])
        
//        NSLayoutConstraint.activate([
//            albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
//            albumImage.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
//            albumImage.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
//            albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width),
//
//        ])
        
//        albumImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
//        albumImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        albumImage.heightAnchor.constraint(equalTo: albumImage.widthAnchor, multiplier: 1).isActive = true
//        albumImage.widthAnchor.constraint(equalToConstant: view.bounds.width).isActive = true
        
        


    }
}
