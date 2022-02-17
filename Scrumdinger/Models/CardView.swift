import SwiftUI

struct CardView: View {
    // instantiating the DailyScrum class.
    let scrum: DailyScrum
    // creating a body
    var body: some View {
        // stacking everything vertically
        VStack(alignment: .leading){
            // text
            Text(scrum.title)
                .font(.headline)
            // spacing
            Spacer()
            // stacking encapsulated elements horizontally.
            HStack {
                // pulling data from the scrum object and adding a count.
                Label("\(scrum.attendees.count)",systemImage:"person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)",systemImage: "clock").labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
    }
}

// this is responsible for previewing.
struct CardView_Previews: PreviewProvider {
    static var scrum = DailyScrum.sampleData[1]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
