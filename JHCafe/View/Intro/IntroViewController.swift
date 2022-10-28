//
//  IntroViewController.swift
//  JHCafe
//
//  Created by JH on 2022/10/23.
//

import Foundation
import Lottie

final class IntroViewController: BaseViewController {
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        initIntroAnimation()
    }

    // MARK: - initialize

    private func initIntroAnimation() {
        let animationView: LottieAnimationView = .init(name: "39177-coffee-beans")
        view.addSubview(animationView)

        animationView.frame = view.bounds
        animationView.center = view.center
        animationView.contentMode = .scaleAspectFit

        animationView.loopMode = .playOnce
        animationView.play()

        Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false, block: { _ in
            self.nextViewController()
        })
    }
	
	private func nextViewController() {
		let mainVC: MainViewController = MainViewController()
		mainVC.modalPresentationStyle = .fullScreen
		mainVC.modalTransitionStyle = .crossDissolve
		present(mainVC, animated: true, completion: nil)
	}
}
