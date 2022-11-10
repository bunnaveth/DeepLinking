import SwiftUI

struct CountyList: View {
    let state: USState
    
    var body: some View {
        List(state.counties) { county in
            NavigationLink(value: county) {
                Text(county.name)
            }
        }
        .navigationDestination(for: County.self) { county in
            CityList(county: county)
        }
        .navigationTitle("\(state.name) Counties")
    }
}

struct CountyList_Previews: PreviewProvider {
    static var previews: some View {
        CountyList(
            state: USState(name: "State", counties: [
                    County(name: "County 1", cities: [ "City 1" ]),
                    County(name: "County 2", cities: [ "City 2" ])
                ])
        )
    }
}
