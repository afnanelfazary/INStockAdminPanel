//
//  ProductDetailsViewModel.swift
//  INStockAdminPanel
//
//  Created by Afnan on 08/03/2023.
//

import Foundation
import Apollo
import UIKit

class ProductDetailsViewModel
{
    var productDetails = ProductsQuery.Data.Product.self
    
    
    var bindResultToProductView : (() -> ()) = {}
    
    
    var productImg : String! {
        didSet{
            bindResultToProductView()
        }
    }
    
    var productPrice : String!{
        didSet{
            bindResultToProductView()
        }
    }
    var productTitleInput : String!  {
        didSet{
            bindResultToProductView()
        }
    }
    var productTypeInput: String!  {
        didSet{
            bindResultToProductView()
        }
    }
    var productDescriptionInput: String!  {
        didSet{
            bindResultToProductView()
        }
    }
    var productTitle : String!  {
        didSet{
            bindResultToProductView()
        }
    }
    var productType : String!  {
        didSet{
            bindResultToProductView()
        }
    }
    var productDescription : String!  {
        didSet{
            bindResultToProductView()
        }
    }
    var productBrand : String!  {
        didSet{
            bindResultToProductView()
        }
    }
    var productStatus : ProductStatus!  {
        didSet{
            bindResultToProductView()
        }
    }
    var productID : String!  {
        didSet{
            bindResultToProductView()
        }
    }
    //Read Product
    func getProductDetails ()
    {
        let apolloNetworkHelper = ApolloNetworkHelper.shared
        apolloNetworkHelper.graphQlType = .products
        
        apolloNetworkHelper.appolloClient.fetch(query: ProductsQuery()){
            [weak self] result in
            switch result {
            case .success(let graphQLResult):debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    //self?.delegate?.didFail(errorMessage: errormessage)
                    print(errormessage)
                }
                ///get details of product in product info View
                if (graphQLResult.data?.products) != nil
                {
                    self?.productID = graphQLResult.data?.products.edges.first?.node.id
                    self?.productTitle =  graphQLResult.data?.products.edges.first?.node.title
                    self?.productType =  graphQLResult.data?.products.edges.first?.node.productType
                    self?.productDescription = graphQLResult.data?.products.edges.first?.node
                        .bodyHtml
                    self?.productPrice = graphQLResult.data?.products.edges.first?.node.variants.edges.first?.node.price
                    self?.productBrand = graphQLResult.data?.products.edges.first?.node.vendor
                    self?.productStatus = graphQLResult.data?.products
                        .edges.first?.node.status
                    //   self?.productImg =   UIImage(named: "1") as! String
                    
                    
                    
                }
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
            }
        }}
    
    // Create Product
    func createProduct()
    {         let imageInput = ImageInput(src: productImg)
        
        //let imageInput = ImageInput(src: "    https://m.media-amazon.com/images/I/51F2eyEpomL._AC_SL1500_.jpg")
        let apolloNetworkHelper = ApolloNetworkHelper.shared
        apolloNetworkHelper.graphQlType = .products
        let ProductInput = ProductInput.init(descriptionHtml: productDescription, productType: productTypeInput, title:("\(productBrand!) | \(productTitleInput!)") , vendor: productBrand, images: [imageInput], variants: [ProductVariantInput(price: productPrice)], status: .active )
        let mutation = ProductCreateMutation(input: ProductInput)
        apolloNetworkHelper.appolloClient.perform(mutation: mutation) {
            [weak self] result in
            switch result {
            case .success(let graphQLResult):debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    //self?.delegate?.didFail(errorMessage: errormessage)
                    print("Failure Error : \(errormessage)")
                }
                if (graphQLResult.data?.productCreate?.product) != nil
                {
                    
                }
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
            }
        } }
    
    // Updatee Product
    func updateProduct()
    {
        let imageInput = ImageInput(src: productImg)
        let apolloNetworkHelper = ApolloNetworkHelper.shared
        apolloNetworkHelper.graphQlType = .products
        
        let ProductInput = ProductInput.init( productType: productType , title:("\(productBrand!) | \(productTitle!)"), vendor: productBrand, id: productID, images: [imageInput] , variants:[ProductVariantInput(price: productPrice)], status: .active)
        let mutation = ProductUpdateMutation(input: ProductInput)
        apolloNetworkHelper.appolloClient.perform(mutation: mutation) {
            [weak self] result in
            switch result {
            case .success(let graphQLResult):debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    //self?.delegate?.didFail(errorMessage: errormessage)
                    print("Failure Error : \(errormessage)")
                }
                if (graphQLResult.data?.productUpdate?.product) != nil
                {
                    self?.productTitle =  graphQLResult.data?.productUpdate?.product?.title
                    self?.productType = graphQLResult.data?.productUpdate?.product?.productType
                    self?.productDescription = graphQLResult.data?.productUpdate?.product?.bodyHtml
                    self?.productPrice = graphQLResult.data?.productUpdate?.product?.variants.edges[0].node.price
                    self?.productBrand = graphQLResult.data?.productUpdate?.product?.vendor
                    self?.productImg = graphQLResult.data?.productUpdate?.product?.images.edges[0].node.src ?? ""
                }
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
            }
        }
        
    }
    
    //Delete Product
    func deleteProduct(productId:GraphQLID)
    {
         let apolloNetworkHelper = ApolloNetworkHelper.shared
        apolloNetworkHelper.graphQlType = .products
         apolloNetworkHelper.appolloClient.perform(mutation: ProductDeleteMutation(input: ProductDeleteInput(id: productId)))
         {  [weak self] result in
            switch result {
            case .success(let graphQLResult):debugPrint("graphResult: \(graphQLResult)")
                if let errors = graphQLResult.errors{
                    let errormessage = errors.map{$0.localizedDescription}.joined(separator:"\n")
                    //self?.delegate?.didFail(errorMessage: errormessage)
                    print("Failure Error : \(errormessage)")
                }
                if (graphQLResult.data?.productDelete?.deletedProductId) != nil
                {
                    
                }
            case .failure(let error):
                debugPrint("Failure Error : \(error)")
            }
        }
        
    }
    
    
    
}
 
