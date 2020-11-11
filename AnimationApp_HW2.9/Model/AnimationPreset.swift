//
//  AnimationPreset.swift
//  AnimationApp_HW2.9
//
//  Created by Ivanov Sergey on 11.11.2020.
//

struct AnimationPreset {
    let preset: Preset
    let curve: Curve
    let force: Float
    let duration: Float
    let delay: Float
    
}

extension AnimationPreset {
    static func getAnimationPresets() -> [AnimationPreset] {
        
        var animationPresets: [AnimationPreset] = []
        
        let presets = DataManager.shared.presets.shuffled()
        let curves = DataManager.shared.curves.shuffled()
        let forces = DataManager.shared.forces.shuffled()
        let durations = DataManager.shared.durations.shuffled()
        let delays = DataManager.shared.delays.shuffled()
        
        let count = min(presets.count,
                        curves.count,
                        forces.count,
                        durations.count,
                        delays.count)
        for index in 0..<count {
            animationPresets.append(AnimationPreset(preset: presets[index],
                                                    curve: curves[index],
                                                    force: forces[index],
                                                    duration: durations[index],
                                                    delay: delays[index]))
        }
        
        return animationPresets
    }
}


