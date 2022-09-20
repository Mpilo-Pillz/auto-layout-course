//
//  Challenge.swift
//  BasicAnchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {

    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }

    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }

    func setupViews() {

        // Comment in incrementally ...
                let offlineLabel = makeLabel(withText: "Offline")
                let offlineSwitch = makeSwitch(isOn: false)
                let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")
        //
                let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
        //        let crossfadeMinLabel = makeSubLabel(withText: "0s")
        //        let crossfadeMaxLabel = makeSubLabel(withText: "12s")
        //        let crossfadeProgressView = makeProgressView()
        //
        //        let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
        //        let gaplessPlaybackSwitch = makeSwitch(isOne: true)
        //
        //        let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
        //        let hideSongsSwitch = makeSwitch(isOne: true)
        //
        //        let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
        //        let enableNormalizationSwitch = makeSwitch(isOne: true)
        //
                view.addSubview(offlineLabel)
                view.addSubview(offlineSwitch)
                view.addSubview(offlineSublabel)
        //
                view.addSubview(crossfadeLabel)
        //        view.addSubview(crossfadeMinLabel)
        //        view.addSubview(crossfadeProgressView)
        //        view.addSubview(crossfadeMaxLabel)
        //
        //        view.addSubview(gaplessPlaybackLabel)
        //        view.addSubview(gaplessPlaybackSwitch)
        //
        //        view.addSubview(hideSongsLabel)
        //        view.addSubview(hideSongsSwitch)
        //
        //        view.addSubview(enableNormalizationLabel)
        //        view.addSubview(enableNormalizationSwitch)

        // Start your layout here...
        
        offlineLabel.translatesAutoresizingMaskIntoConstraints = false
        offlineSwitch.translatesAutoresizingMaskIntoConstraints = false
        offlineSublabel.translatesAutoresizingMaskIntoConstraints = false
        
        crossfadeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            offlineLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            offlineSwitch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            offlineSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            offlineSublabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: 20),
            offlineSublabel.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            offlineSublabel.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeLabel.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: 32),
            crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])

    }
    
}

