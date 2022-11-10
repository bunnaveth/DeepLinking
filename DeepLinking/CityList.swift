import SwiftUI

struct CityList: View {
    let county: County
    
    var body: some View {
        List(county.cities, id: \.self) { city in
            NavigationLink {
                CityDetails(city: city)
            } label: {
                Text(city)
            }
        }
        .navigationTitle("\(county.name) Cities")
    }
}

struct CityList_Previews: PreviewProvider {
    static var previews: some View {
        CityList(county: County(name: "My County", cities: [ "city 1", "city 2" ]))
    }
}
