// MusicPlayerViewController.swift

import UIKit

final class MusicPlayerViewController: UIViewController {
    var album: Album
    
    private lazy var mediaPlayer: MediaPlayer = {
        let v = MediaPlayer(album: album)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    init(album: Album) {
        self.album = album
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        addBlurredView()
        view.addSubview(mediaPlayer)
        
        setupConstraints()
    }
    
    private func addBlurredView() {
        if !UIAccessibility.isReduceTransparencyEnabled {
            self.view.backgroundColor = UIColor.clear
            
            let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.dark)
            let blueEffectView = UIVisualEffectView(effect: blurEffect)
            blueEffectView.frame = self.view.bounds
            blueEffectView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
            
            view.addSubview(blueEffectView)
        } else {
            view.backgroundColor = UIColor.black
        }
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            mediaPlayer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mediaPlayer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mediaPlayer.topAnchor.constraint(equalTo: view.topAnchor),
            mediaPlayer.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        mediaPlayer.play()
        UIApplication.shared.isIdleTimerDisabled = true
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        mediaPlayer.stop()
        UIApplication.shared.isIdleTimerDisabled = false
    }
}
