//
//  ViewController.swift
//  AnimationAppHW
//
//  Created by Егор on 03.08.2021.
//

import Spring



class ViewController: UIViewController {
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var sptingButton: SpringButton!
    @IBOutlet var labelText: UILabel!
    
    var currentAnimation: Int = 0
    var currentCurve: Int = 0
    var currentDuration: Int = 1
    var currentForce: Double = 0
    var currentDelay: Double = 0
    
//    private var animationList = Animation.getAnimationList()
//    private var animationValues: AnimationState!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        springAnimationView.layer.cornerRadius = 20 / 2
        sptingButton.layer.cornerRadius = 20 / 2
    }

    
    @IBAction func springButtonAction(_ sender: SpringButton) {
        let animation = getAnimationPresent(currentAnimate: currentAnimation)
        springAnimationView.animation = animation
        
        if currentAnimation > 0 {
            currentAnimation += 1 } else {
                currentAnimation = 1
            }
        
        let curve = getCurvePresent(currentCurve: currentCurve)
        springAnimationView.curve = curve
        
        if currentCurve > 0 {
            currentCurve += 1 } else {
                currentCurve = 1
            }
        
        
        setUpValues(currentDuration: currentDuration, currentForce: currentForce, currentDelay: currentDelay)
        springAnimationView.duration = CGFloat(currentDuration)
        springAnimationView.force = CGFloat(currentForce)
        springAnimationView.delay = CGFloat(currentDelay)
        springAnimationView.animate()
        
        let buttonTitle = getAnimationPresent(currentAnimate: currentAnimation)

        
//        let items = [animation, curve]
//        for items in 0..<animation.count{
//            labelText.text = animation
//        }
        labelText.text = animation
        if labelText.text == animation {
            sptingButton.setTitle(buttonTitle, for: .normal)
        }

    }
}


extension ViewController {
    
    private func getAnimationPresent(currentAnimate: Int) -> String {
            Spring.AnimationPreset.allCases[currentAnimate].rawValue
}
    private func getCurvePresent(currentCurve: Int) -> String {
        Spring.AnimationCurve.allCases[currentCurve].rawValue
    }
    
    private func setUpValues (currentDuration: Int, currentForce: Double, currentDelay: Double) {
        let duration = [2, 3, 4, 5]
        self.currentDuration = duration.randomElement() ?? 1
        
        let force = [0.4, 1.3, 1.8, 0.7]
        self.currentForce = force.randomElement() ?? 0.1
        
        let delay = [0.3, 0.2, 0.5, 0.2]
        self.currentDelay = delay.randomElement() ?? 0.1
    }
    
}

