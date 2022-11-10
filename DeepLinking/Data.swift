import Foundation

struct USState: Hashable, Identifiable {    
    let name: String
    let counties: [County]
    
    var id: String { name }
}

struct County: Hashable, Identifiable {
    let name: String
    let cities: [String]
    
    var id: String { name }
}


var usStates: [USState] = [
    USState(name: "Califorina", counties: [
        County(name: "San Diego", cities: [
            "Alpine",
            "Bonita",
            "Bonsall",
            "Borrego Springs",
            "Boulevard",
            "Camp Pendleton",
            "Campo",
            "Cardiff By The Sea",
            "Carlsbad",
            "Chula Vista",
            "Coronado",
            "Del Mar",
            "Descanso",
            "Dulzura",
            "El Cajon",
            "Encinitas",
            "Escondido",
            "Fallbrook",
            "Guatay",
            "Imperial Beach",
            "Jacumba",
            "Jamul",
            "Julian",
            "La Jolla",
            "La Mesa",
            "Lakeside",
            "Lemon Grove",
            "Mount Laguna",
            "National City",
            "Oceanside",
            "Pala",
            "Palomar Mountain",
            "Pauma Valley",
            "Pine Valley",
            "Potrero",
            "Poway",
            "Ramona",
            "Ranchita",
            "Rancho Santa Fe",
            "San Diego",
            "San Luis Rey",
            "San Marcos",
            "San Ysidro",
            "Santa Ysabel",
            "Santee",
            "Solana Beach",
            "Spring Valley",
            "Tecate",
            "Valley Center",
            "Vista",
            "Warner Springs"
        ]),
    ]),
    USState(name: "Utah", counties: [
            County(name: "Utah", cities: [
                "Alpine City",
                "American Fork City",
                "Cedar Fort Town",
                "Cedar Hills City",
                "Draper City",
                "Eagle Mountain City",
                "Elk Ridge City",
                "Fairfield Town",
                "Genola City",
                "Goshen",
                "Highland City",
                "Lehi City",
                "Lindon City",
                "Mapleton City",
                "Orem City",
                "Payson City",
                "Pleasant Grove City",
                "Provo City",
                "Salem City",
                "Santaquin City",
                "Saratoga Springs City",
                "Spanish Fork City",
                "Springville City",
                "Vineyard Town",
                "Woodland Hills City"
            ])
    ])
]

