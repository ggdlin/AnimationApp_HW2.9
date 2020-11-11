//
//  ViewController.swift
//  AnimationApp_HW2.9
//
//  Created by Ivanov Sergey on 11.11.2020.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animationView: SpringView!
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    private var animations: [AnimationPreset] = []
    private var animationIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animations = AnimationPreset.getAnimationPresets()
        updateViewLabels(at: animationIndex)
    }

    @IBAction func runAnimation(_ sender: UIButton) {
        
        animationView.animation = animations[animationIndex].preset.rawValue
        animationView.curve = animations[animationIndex].curve.rawValue
        animationView.force = CGFloat(animations[animationIndex].force)
        animationView.duration = CGFloat(animations[animationIndex].duration)
        animationView.delay = CGFloat(animations[animationIndex].delay)
        
        updateViewLabels(at: animationIndex)
        animationView.animate()
        
        animationIndex += 1
        if animationIndex == animations.count {
            animationIndex = 0
        }
        sender.setTitle("Run \(animations[animationIndex].preset.rawValue)",
                        for: .normal)
    }
    
    private func updateViewLabels(at index: Int) {
        guard !animations.isEmpty else { return }
        let animation = animations[index]
        presetLabel.text = "preset: \(animation.preset.rawValue)"
        curveLabel.text = "curve: \(animation.curve.rawValue)"
        forceLabel.text = "force: \(string(from: animation.force))"
        durationLabel.text = "duration: \(string(from: animation.duration))"
        delayLabel.text = "delay: \(string(from: animation.delay))"
    }
    
    private func string(from float: Float) -> String {
        String(format: "%.2f", float)
    }
}

