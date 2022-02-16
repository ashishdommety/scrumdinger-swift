//
//  ContentView.swift
//  Shared
//
//  Created by Ashish Dommety on 2/15/22.
//

import SwiftUI

// This is to describe the view.
struct MeetingView: View {
    // content, layout and behavior of the view is decided here.
    var body: some View {
        VStack {
            ProgressView(value:5, total:15)
            // this is like a div for mobile swift apps.
            HStack {
                // so is this.
                VStack (alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption) // this is called a modifier.
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack (alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.tophalf.fill")
                }
                
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Button(action:{}){
                    Image(systemName:"forward.fill")
                }
                .accessibilityLabel("Next Speaker")
            }
        }
        .padding() // you can add modifiers to stacks too.
    }
}

// this is what displays the preview.
struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MeetingView()
        }
    }
}
