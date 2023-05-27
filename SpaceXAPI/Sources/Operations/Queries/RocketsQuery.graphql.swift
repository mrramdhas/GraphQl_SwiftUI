// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class RocketsQuery: GraphQLQuery {
  public static let operationName: String = "Rockets"
  public static let document: ApolloAPI.DocumentType = .notPersisted(
    definition: .init(
      #"""
      query Rockets {
        rockets {
          __typename
          cost_per_launch
          country
          description
          first_flight
          id
          name
          wikipedia
        }
      }
      """#
    ))

  public init() {}

  public struct Data: SpaceXAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { SpaceXAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("rockets", [Rocket?]?.self),
    ] }

    public var rockets: [Rocket?]? { __data["rockets"] }

    /// Rocket
    ///
    /// Parent Type: `Rocket`
    public struct Rocket: SpaceXAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { SpaceXAPI.Objects.Rocket }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("cost_per_launch", Int?.self),
        .field("country", String?.self),
        .field("description", String?.self),
        .field("first_flight", SpaceXAPI.Date?.self),
        .field("id", SpaceXAPI.ID?.self),
        .field("name", String?.self),
        .field("wikipedia", String?.self),
      ] }

      public var cost_per_launch: Int? { __data["cost_per_launch"] }
      public var country: String? { __data["country"] }
      public var description: String? { __data["description"] }
      public var first_flight: SpaceXAPI.Date? { __data["first_flight"] }
      public var id: SpaceXAPI.ID? { __data["id"] }
      public var name: String? { __data["name"] }
      public var wikipedia: String? { __data["wikipedia"] }
    }
  }
}
