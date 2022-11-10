import SwiftUI

struct CountyList: View {
    let state: State
    
    var body: some View {
        List(state.counties) { county in
            NavigationLink {
                CityList(county: county)
            } label: {
                Text(county.name)
            }
        }
        .navigationTitle("\(state.name) Counties")
    }
}

struct CountyList_Previews: PreviewProvider {
    static var previews: some View {
        CountyList(
            state: State(name: "State", counties: [
                    County(name: "County 1", cities: [ "City 1" ]),
                    County(name: "County 2", cities: [ "City 2" ])
                ])
        )
    }
}
