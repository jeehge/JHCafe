//
//  IntroViewController.swift
//  JHCafe
//
//  Created by JH on 2022/10/23.
//

import Lottie
import UIKit

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

		animationView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        animationView.center = view.center
        animationView.contentMode = .scaleAspectFit

		animationView.loopMode = .autoReverse
        animationView.play()

        Timer.scheduledTimer(withTimeInterval: 3.0, repeats: false, block: { _ in
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
