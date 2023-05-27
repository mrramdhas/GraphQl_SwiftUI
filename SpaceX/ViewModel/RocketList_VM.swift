//
//  RocketList_VM.swift
//  SpaceX
//
//  Created by Ramdhas on 2023-05-27.
//

import Foundation
import SpaceXAPI

class RocketList_VM: ObservableObject {
    @Published var rockets: [RocketModel] = []
    func getRocketList() {
        NetworkService.shared.apollo.fetch(query: RocketsQuery()) { result in
            switch result {
            case .success(let result):
                if let rockets = result.data?.rockets {
                    self.rockets = rockets.map { rocket in
                        RocketModel(rocket: rocket)
                    }
                }
            case .failure(let error):
                debugPrint(error)
            }
        }
    }

}

struct RocketModel {
    let rocket: RocketsQuery.Data.Rocket?
    var name: String {
        rocket?.name ?? ""
    }
    var id : String {
        rocket?.id ?? "" // temp
    }
    var description: String {
        rocket?.description ?? ""
    }
}
