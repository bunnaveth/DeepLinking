import SwiftUI


struct StateList: View {
    @State private var path = NavigationPath()
    
    let states = usStates
    
    var body: some View {
        NavigationStack(path: $path) {
            List(states) { state in
                NavigationLink(value: state) {
                    Text(state.name)
                }
            }
            .navigationDestination(for: USState.self) { state in
                CountyList(state: state)
            }
            .navigationTitle("States")
        }
        .onOpenURL { url in
            let stateParam = url.host()?.lowercased()
            let countyParam = url.pathComponents[1].lowercased()
            let cityParam = url.pathComponents[2].lowercased()
            
            
            if let state = usStates.first(where: { $0.name.lowercased() == stateParam }) {
                path.append(state)
                if let county = state.counties.first(where: { $0.name.lowercased() == countyParam }) {
                    path.append(county)
                    if let city = county.cities.first(where: { $0.lowercased() == cityParam }) {
                        path.append(city)
                    }
                }
            }
        }
    }
}

struct StateList_Previews: PreviewProvider {
    static var previews: some View {
        StateList()
    }
}
