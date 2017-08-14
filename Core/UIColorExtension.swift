//
//  UIColorExtension.swift
//  DuckDuckGo
//
//  Copyright © 2017 DuckDuckGo. All rights reserved.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//


import Foundation

extension UIColor {

    public static var onboardingRealPrivacyBackground: UIColor {
        return lightOliveGreen
    }
    
    public static var onboardingContentBlockingBackground: UIColor {
        return amethyst
    }
    
    public static var onboardingTrackingBackground: UIColor {
        return fadedOrange
    }
    
    public static var onboardingPrivacyRightBackground: UIColor {
        return softBlue
    }

    public static var monitoringInactiveTint: UIColor {
        return midGray
    }

    public static var monitoringNeutralTint: UIColor {
        return squash
    }
    
    public static var monitoringNegativeTint: UIColor {
        return dullRed
    }
    
    public static var monitoringPositiveTint: UIColor {
        return nastyGreen
    }
    
    public static var coolGray: UIColor {
        return UIColor(red: 149.0 / 255.0, green: 153.0 / 255.0, blue: 166.0 / 255.0, alpha: 1.0)
    }
    
    public static var silver: UIColor {
        return UIColor(red: 176.0 / 255.0, green: 181.0 / 255.0, blue: 191.0 / 255.0, alpha: 1.0)
    }

    private static var midGray: UIColor {
        return UIColor(red: 190.0 / 255.0, green: 190.0 / 255.0, blue: 190.0 / 255.0, alpha: 1.0)
    }

    private static var nastyGreen: UIColor {
        return UIColor(red: 101.0 / 255.0, green: 187.0 / 255.0, blue: 70.0 / 255.0, alpha: 1.0)
    }
    
    private static var fadedOrange: UIColor {
        return UIColor(red: 245.0 / 255.0, green: 139.0 / 255.0, blue: 107.0 / 255.0, alpha: 1.0)
    }

    private static var squash: UIColor {
        return UIColor(red: 237.0 / 255.0, green: 158.0 / 255.0, blue: 34.0 / 255.0, alpha: 1.0)
    }
    
    private static var dullRed: UIColor {
        return UIColor(red: 221.0 / 255.0, green: 88.0 / 255.0, blue: 56.0 / 255.0, alpha: 1.0)
    }

    private static var lightOliveGreen: UIColor {
        return UIColor(red: 147.0 / 255.0, green: 192.0 / 255.0, blue: 77.0 / 255.0, alpha: 1.0)
    }
    
    private static var amethyst: UIColor {
        return UIColor(red: 156.0 / 255.0, green: 108.0 / 255.0, blue: 211.0 / 255.0, alpha: 1.0)
    }
    
    private static var softBlue: UIColor {
        return UIColor(red: 106.0 / 255.0, green: 187.0 / 255.0, blue: 224.0 / 255.0, alpha: 1.0)
    }
    
    public func combine(withColor other: UIColor, ratio: CGFloat) -> UIColor {
        let otherRatio = 1 - ratio
        let red = (redComponent * ratio) + (other.redComponent * otherRatio)
        let green = (greenComponent * ratio) + (other.greenComponent * otherRatio)
        let blue = (blueComponent * ratio) + (other.blueComponent * otherRatio)
        let alpha = (alphaComponent * ratio) + (other.alphaComponent * otherRatio)
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }

    public var redComponent: CGFloat {
        var redComponent: CGFloat = 0
        getRed(&redComponent, green: nil, blue: nil, alpha: nil)
        return redComponent
    }
    
    public var greenComponent: CGFloat {
        var greenComponent: CGFloat = 0
        getRed(nil, green: &greenComponent, blue: nil, alpha: nil)
        return greenComponent
    }
    
    public var blueComponent: CGFloat {
        var blueComponent: CGFloat = 0
        getRed(nil, green: nil, blue: &blueComponent, alpha: nil)
        return blueComponent
    }
    
    public var alphaComponent: CGFloat {
        var alphaComponent: CGFloat = 0
        getRed(nil, green: nil, blue: nil, alpha: &alphaComponent)
        return alphaComponent
    }
}
