//
//  CollectionDetailsViewModel.swift
//  INStockAdminPanel
//
//  Created by Afnan on 10/03/2023.
//

import Foundation
import Apollo
class CollectionDetailsViewModel
{
    var smartCollectionDetails = SmartCollectionQuery.Data.Collection.self
    
    var bindResultToCollectionView : (() -> ()) = {}
    var CollectionID : Int!   {
        didSet{
            bindResultToCollectionView()
        }
    }
    var collectionImg : String! {
        didSet{
            bindResultToCollectionView()
        }
    }
    
    var collectionTitle : String!{
        didSet{
            bindResultToCollectionView()
        }
    }
    var collectionType : String!{
        didSet{
            bindResultToCollectionView()
        }
    }
    var CollectionIDNew : Int!  {
        didSet{
            bindResultToCollectionView()
        }
    }
    
    // Create Collection
    func createCollection()
    {
        
        //testCollection
     //   img : https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Louis_Vuitton_logo_and_wordmark.svg/800px-Louis_Vuitton_logo_and_wordmark.svg.png
       // Louis Vuitton
        let imageInput = ImageInput(src: collectionImg)
        let ruleInput = CollectionRuleInput(column:.title, relation: .contains, condition: collectionTitle)
        let apolloNetworkHelper = ApolloNetworkHelper.shared
        apolloNetworkHelper.graphQlType = .products
        
        let collectionInput =  CollectionInput(image: imageInput  ,ruleSet:CollectionRuleSetInput(appliedDisjunctively: true, rules: [ruleInput]),   sortOrder: .bestSelling, title: collectionTitle)
        
        
        
        let mutation = CollectionCreateMutation(input: collectionInput)
        apolloNetworkHelper.appolloClient.perform(mutation: mutation) {
            [weak self] result in
            switch result {
            case .success(let graphQLResult):debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    //self?.delegate?.didFail(errorMessage: errormessage)
                    print("Failure Error : \(errormessage)")
                }
                if (graphQLResult.data?.collectionCreate?.collection) != nil
                {
                    
                }
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
            }
        } }
    
    
    
    // Update Collection
    func updateCollection()
    {
        
        let imageInput = ImageInput(src: collectionImg)
        let ruleInput = CollectionRuleInput(column:.title, relation: .contains, condition: collectionTitle)
        let apolloNetworkHelper = ApolloNetworkHelper.shared
        
        apolloNetworkHelper.graphQlType = .products
        print(CollectionID!)
        let collectionInput = CollectionInput(descriptionHtml: "", handle: "", id: String("gid://shopify/Collection/\(CollectionID!)"), image: imageInput, ruleSet: CollectionRuleSetInput(appliedDisjunctively: true, rules: [ruleInput]), templateSuffix: "", sortOrder: .bestSelling, title: collectionTitle , redirectNewHandle: true)
        
        let mutation = CollectionUpdateMutation(input: collectionInput)
        apolloNetworkHelper.appolloClient.perform(mutation: mutation)
        {
            [weak self] result in
            switch result {
            case .success(let graphQLResult):debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    //self?.delegate?.didFail(errorMessage: errormessage)
                    print("Failure Error : \(errormessage)")
                    print(errors)
                }
                if (graphQLResult.data?.collectionUpdate?.collection) != nil
                {
                    self?.collectionTitle =  graphQLResult.data?.collectionUpdate?.collection?.title
                    self?.collectionImg = graphQLResult.data?.collectionUpdate?.collection?.image?.src
                    
                }
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
                print(error.localizedDescription)
            }
        }
        
    }
    
    
    
    
    //Delete Collection
    
    func deleteCollection(collectionId:GraphQLID )
    {
        
        let apolloNetworkHelper = ApolloNetworkHelper.shared
        apolloNetworkHelper.graphQlType = .products
        apolloNetworkHelper.appolloClient.perform(mutation: CollectionDeleteMutation(input: CollectionDeleteInput(id: collectionId)))
        {  [weak self] result in
            switch result {
            case .success(let graphQLResult):debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    print("Failure Error : \(errormessage)")
                }
                if (graphQLResult.data?.collectionDelete?.deletedCollectionId) != nil
                {
                    
                }
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
            }
        }
        
    }
    
    
    
}
