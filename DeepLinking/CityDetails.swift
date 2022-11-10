import SwiftUI

struct CityDetails: View {
    let city: String
    
    var body: some View {
        Text(city)
    }
}

struct CityDetails_Previews: PreviewProvider {
    static var previews: some View {
        CityDetails(city: "City Name")
    }
}
