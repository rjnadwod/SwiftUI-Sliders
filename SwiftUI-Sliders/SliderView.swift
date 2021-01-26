//
//  SliderView.swift
//  SwiftUI-Sliders
//
//  Created by Riley Nadwodny on 1/8/21.
//

import Foundation
import SwiftUI

struct SliderView: View {
    
    @Binding var value:Double
    var label:String
    
    var body: some View {
        
        VStack {
            Slider(value: $value, in: 0...255,
                   step: 1.0)
            Text("\(label): \(Int(value))")
        }
    }
}

struct SliderView_Previous: PreviewProvider {
    static var previews: some View {
        SliderView(value:Binding.constant(0),
                   label: "Label").padding()
    }
}
