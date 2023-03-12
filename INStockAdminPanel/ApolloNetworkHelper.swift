//
//  ApolloNetworkHelper.swift
//  INStockAdminPanel
//
//  Created by Afnan on 06/03/2023.
//

 import Apollo
import Foundation

enum GraphType : String {
    case products
    case Inventory
    case coupons
    
}
final class ApolloNetworkHelper
{
    static let shared = ApolloNetworkHelper()
    var graphQlType:GraphType = .products
    private (set) lazy var appolloClient :ApolloClient = {
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let authPayloads = ["X-Shopify-Access-Token":"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 ",
                            "Content-Type": "application/json",
                             "apiKey":     "b61bfc9ff926e2344efcd1ffd0d0b751"
        ]
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = authPayloads
        let client = URLSessionClient(sessionConfiguration: configuration, callbackQueue: nil)
        let provider = NetworkInterceptorProvider(client: client, shouldInvalidateClientOnDeinit: true, store: store)
        let url = URL(string: getGraphQLURL(type: graphQlType))!
        let requestChainTransport = RequestChainNetworkTransport(interceptorProvider: provider, endpointURL: url)
         return ApolloClient(networkTransport: requestChainTransport, store: store)
    }()
    
    private func getGraphQLURL (type: GraphType)->String
    {
        switch type {
        case.products:
            return "https://b61bfc9ff926e2344efcd1ffd0d0b751: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@mad-ios-1.myshopify.com/admin/api/2023-01/graphql.json"
     
        case .Inventory:
           return ""
        case .coupons:
            return ""

        }
    }
    
}

class NetworkInterceptorProvider: DefaultInterceptorProvider
{
    override func interceptors<Operation>(for operation: Operation) -> [ApolloInterceptor] where Operation : GraphQLOperation {
        return super.interceptors(for: operation)
    }
}
