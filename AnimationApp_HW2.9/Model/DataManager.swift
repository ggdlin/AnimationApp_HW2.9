//
//  DataManager.swift
//  AnimationApp_HW2.9
//
//  Created by Ivanov Sergey on 11.11.2020.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let presets: [Preset] = [
        .slideLeft,
        .slideRight,
        .slideDown,
        .slideUp,
        .squeezeLeft,
        .squeezeRight,
        .squeezeDown,
        .squeezeUp,
        .fadeIn,
        .fadeOut,
        .fadeOutIn,
        .fadeInLeft,
        .fadeInRight,
        .fadeInDown,
        .fadeInUp,
        .zoomIn,
        .zoomOut,
        .fall,
        .shake,
        .pop,
        .flipX,
        .flipY,
        .morph,
        .squeeze,
        .flash,
        .wobble,
        .swing
    ]
    
    let curves: [Curve] = [
        .easeIn,
        .easeOut,
        .easeInOut,
        .linear,
        .spring,
        .easeInSine,
        .easeOutSine,
        .easeInOutSine,
        .easeInQuad,
        .easeOutQuad,
        .easeInOutQuad,
        .easeInCubic,
        .easeOutCubic,
        .easeInOutCubic,
        .easeInQuart,
        .easeOutQuart,
        .easeInOutQuart,
        .easeInQuint,
        .easeOutQuint,
        .easeInOutQuint,
        .easeInExpo,
        .easeOutExpo,
        .easeInOutExpo,
        .easeInCirc,
        .easeOutCirc,
        .easeInOutCirc,
        .easeInBack,
        .easeOutBack,
        .easeInOutBack
    ]
    
    var forces: [Float] {
        getRandomFloats()
    }
        
    var durations: [Float] {
    getRandomFloats()
    }
    
    var delays: [Float] {
    getRandomFloats()
    }
    
    private init() {}
    
    private func getRandomFloats() -> [Float] {
        var floats: [Float] = []
        for _ in 0..<presets.count {
            floats.append(Float.random(in: 0.5 ..< 2.0))
        }
        return floats
    }
}
