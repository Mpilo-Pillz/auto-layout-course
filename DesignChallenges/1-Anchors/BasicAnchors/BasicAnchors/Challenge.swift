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
                let crossfadeMinLabel = makeSubLabel(withText: "0s")
                let crossfadeMaxLabel = makeSubLabel(withText: "12s")
                let crossfadeProgressView = makeProgressView()
        //
                let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
                let gaplessPlaybackSwitch = makeSwitch(isOn: true)
        //
                let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
                let hideSongsSwitch = makeSwitch(isOn: true)
        //
                let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
                let enableNormalizationSwitch = makeSwitch(isOn: true)
        //
                view.addSubview(offlineLabel)
                view.addSubview(offlineSwitch)
                view.addSubview(offlineSublabel)
        //
                view.addSubview(crossfadeLabel)
                view.addSubview(crossfadeMinLabel)
                view.addSubview(crossfadeProgressView)
                view.addSubview(crossfadeMaxLabel)
        //
                view.addSubview(gaplessPlaybackLabel)
                view.addSubview(gaplessPlaybackSwitch)
        //
                view.addSubview(hideSongsLabel)
                view.addSubview(hideSongsSwitch)
        //
                view.addSubview(enableNormalizationLabel)
                view.addSubview(enableNormalizationSwitch)

        // Start your layout here...
        
        offlineLabel.translatesAutoresizingMaskIntoConstraints = false
        offlineSwitch.translatesAutoresizingMaskIntoConstraints = false
        offlineSublabel.translatesAutoresizingMaskIntoConstraints = false
        
        crossfadeLabel.translatesAutoresizingMaskIntoConstraints = false
        crossfadeMinLabel.translatesAutoresizingMaskIntoConstraints = false
        crossfadeMaxLabel.translatesAutoresizingMaskIntoConstraints = false
        crossfadeProgressView.translatesAutoresizingMaskIntoConstraints = false
        
        gaplessPlaybackLabel.translatesAutoresizingMaskIntoConstraints = false
        gaplessPlaybackSwitch.translatesAutoresizingMaskIntoConstraints = false
        
        hideSongsSwitch.translatesAutoresizingMaskIntoConstraints = false
        hideSongsLabel.translatesAutoresizingMaskIntoConstraints = false
        
        enableNormalizationSwitch.translatesAutoresizingMaskIntoConstraints = false
        enableNormalizationLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            offlineLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            offlineLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        // below used centerY instead of topAncho so that the switch aligns with the text
        NSLayoutConstraint.activate([
//            offlineSwitch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            offlineSwitch.centerYAnchor.constraint(equalTo: offlineLabel.centerYAnchor),
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
        
        NSLayoutConstraint.activate([
            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        // GOT this one completely wrong commented out the wrong and left the correction
        // also was not working after correcting so I learnt that order matters
        // always go top to bottom, left to right
        NSLayoutConstraint.activate([
//            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
//            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4),
//            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4)
            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4),
            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -4)
//            crossfadeProgressView.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
//            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.leadingAnchor, constant: 20),
//            crossfadeProgressView.trailingAnchor.constraint(equalTo: crossfadeMaxLabel.leadingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeMaxLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -32)
        ])
        
        
        
        NSLayoutConstraint.activate([
            gaplessPlaybackLabel.topAnchor.constraint(equalTo: crossfadeMinLabel.bottomAnchor, constant: 32),
            gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            gaplessPlaybackSwitch.topAnchor.constraint(equalTo: crossfadeMaxLabel.bottomAnchor, constant: 32),
            gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            hideSongsSwitch.topAnchor.constraint(equalTo: gaplessPlaybackSwitch.bottomAnchor, constant: 32),
            hideSongsSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])
        
        NSLayoutConstraint.activate([
            hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackSwitch.bottomAnchor, constant: 32),
            hideSongsLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        NSLayoutConstraint.activate([
            enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsSwitch.bottomAnchor, constant: 32),
            enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        
        
        NSLayoutConstraint.activate([
            enableNormalizationSwitch.topAnchor.constraint(equalTo: hideSongsSwitch.bottomAnchor, constant: 32),
            enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20)
        ])

    }
    
}

