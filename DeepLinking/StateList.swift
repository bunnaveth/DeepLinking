import SwiftUI

struct StateList: View {
    let states = usStates
    
    var body: some View {
        List(states) { state in
            NavigationLink {
                CountyList(state: state)
            } label: {
                Text(state.name)
            }
        }
        .navigationTitle("States")
    }
}

struct StateList_Previews: PreviewProvider {
    static var previews: some View {
        StateList()
    }
}
