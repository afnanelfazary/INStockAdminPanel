// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

/// Specifies the relationship between the `column` and the `condition`.
public enum CollectionRuleRelation: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// The attribute contains the condition.
  case contains
  /// The attribute ends with the condition.
  case endsWith
  /// The attribute is equal to the condition.
  case equals
  /// The attribute is greater than the condition.
  case greaterThan
  /// The attribute is not set (equal to `null`).
  case isNotSet
  /// The attribute is set (not equal to `null`).
  case isSet
  /// The attribute is less than the condition.
  case lessThan
  /// The attribute does not contain the condition.
  case notContains
  /// The attribute does not equal the condition.
  case notEquals
  /// The attribute starts with the condition.
  case startsWith
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "CONTAINS": self = .contains
      case "ENDS_WITH": self = .endsWith
      case "EQUALS": self = .equals
      case "GREATER_THAN": self = .greaterThan
      case "IS_NOT_SET": self = .isNotSet
      case "IS_SET": self = .isSet
      case "LESS_THAN": self = .lessThan
      case "NOT_CONTAINS": self = .notContains
      case "NOT_EQUALS": self = .notEquals
      case "STARTS_WITH": self = .startsWith
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .contains: return "CONTAINS"
      case .endsWith: return "ENDS_WITH"
      case .equals: return "EQUALS"
      case .greaterThan: return "GREATER_THAN"
      case .isNotSet: return "IS_NOT_SET"
      case .isSet: return "IS_SET"
      case .lessThan: return "LESS_THAN"
      case .notContains: return "NOT_CONTAINS"
      case .notEquals: return "NOT_EQUALS"
      case .startsWith: return "STARTS_WITH"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: CollectionRuleRelation, rhs: CollectionRuleRelation) -> Bool {
    switch (lhs, rhs) {
      case (.contains, .contains): return true
      case (.endsWith, .endsWith): return true
      case (.equals, .equals): return true
      case (.greaterThan, .greaterThan): return true
      case (.isNotSet, .isNotSet): return true
      case (.isSet, .isSet): return true
      case (.lessThan, .lessThan): return true
      case (.notContains, .notContains): return true
      case (.notEquals, .notEquals): return true
      case (.startsWith, .startsWith): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [CollectionRuleRelation] {
    return [
      .contains,
      .endsWith,
      .equals,
      .greaterThan,
      .isNotSet,
      .isSet,
      .lessThan,
      .notContains,
      .notEquals,
      .startsWith,
    ]
  }
}

/// Specifies the attribute of a product being used to populate the smart collection.
public enum CollectionRuleColumn: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// The [`tag`](https://shopify.dev/api/admin-graphql/latest/objects/Product#field-product-producttype) attribute.
  case tag
  /// The [`title`](https://shopify.dev/api/admin-graphql/latest/objects/Product#field-product-title) attribute.
  case title
  /// The [`type`](https://shopify.dev/api/admin-graphql/latest/objects/Product#field-product-producttype) attribute.
  case type
  /// The [`product_taxonomy_node_id`](https://shopify.dev/api/admin-graphql/latest/objects/Product#field-product-productcategory) attribute.
  case productTaxonomyNodeId
  /// The [`vendor`](https://shopify.dev/api/admin-graphql/latest/objects/Product#field-product-vendor) attribute.
  case vendor
  /// The [`variant_price`](https://shopify.dev/api/admin-graphql/latest/objects/ProductVariant#field-productvariant-price) attribute.
  case variantPrice
  /// An attribute evaluated based on the `compare_at_price` attribute of the product's variants.
  /// With `is_set` relation, the rule matches products with at least one variant with `compare_at_price` set.
  /// With `is_not_set` relation, the rule matches matches products with at least one variant with `compare_at_price` not set.
  case isPriceReduced
  /// The [`variant_compare_at_price`](https://shopify.dev/api/admin-graphql/latest/objects/ProductVariant#field-productvariant-compareatprice) attribute.
  case variantCompareAtPrice
  /// The [`variant_weight`](https://shopify.dev/api/admin-graphql/latest/objects/ProductVariant#field-productvariant-weight) attribute.
  case variantWeight
  /// The [`variant_inventory`](https://shopify.dev/api/admin-graphql/latest/objects/ProductVariant#field-productvariant-inventoryquantity) attribute.
  case variantInventory
  /// The [`variant_title`](https://shopify.dev/api/admin-graphql/latest/objects/ProductVariant#field-productvariant-title) attribute.
  case variantTitle
  /// This category includes metafield definitions that have the `useAsCollectionCondition` flag set to true.
  case productMetafieldDefinition
  /// This category includes metafield definitions that have the `useAsCollectionCondition` flag set to true.
  case variantMetafieldDefinition
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "TAG": self = .tag
      case "TITLE": self = .title
      case "TYPE": self = .type
      case "PRODUCT_TAXONOMY_NODE_ID": self = .productTaxonomyNodeId
      case "VENDOR": self = .vendor
      case "VARIANT_PRICE": self = .variantPrice
      case "IS_PRICE_REDUCED": self = .isPriceReduced
      case "VARIANT_COMPARE_AT_PRICE": self = .variantCompareAtPrice
      case "VARIANT_WEIGHT": self = .variantWeight
      case "VARIANT_INVENTORY": self = .variantInventory
      case "VARIANT_TITLE": self = .variantTitle
      case "PRODUCT_METAFIELD_DEFINITION": self = .productMetafieldDefinition
      case "VARIANT_METAFIELD_DEFINITION": self = .variantMetafieldDefinition
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .tag: return "TAG"
      case .title: return "TITLE"
      case .type: return "TYPE"
      case .productTaxonomyNodeId: return "PRODUCT_TAXONOMY_NODE_ID"
      case .vendor: return "VENDOR"
      case .variantPrice: return "VARIANT_PRICE"
      case .isPriceReduced: return "IS_PRICE_REDUCED"
      case .variantCompareAtPrice: return "VARIANT_COMPARE_AT_PRICE"
      case .variantWeight: return "VARIANT_WEIGHT"
      case .variantInventory: return "VARIANT_INVENTORY"
      case .variantTitle: return "VARIANT_TITLE"
      case .productMetafieldDefinition: return "PRODUCT_METAFIELD_DEFINITION"
      case .variantMetafieldDefinition: return "VARIANT_METAFIELD_DEFINITION"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: CollectionRuleColumn, rhs: CollectionRuleColumn) -> Bool {
    switch (lhs, rhs) {
      case (.tag, .tag): return true
      case (.title, .title): return true
      case (.type, .type): return true
      case (.productTaxonomyNodeId, .productTaxonomyNodeId): return true
      case (.vendor, .vendor): return true
      case (.variantPrice, .variantPrice): return true
      case (.isPriceReduced, .isPriceReduced): return true
      case (.variantCompareAtPrice, .variantCompareAtPrice): return true
      case (.variantWeight, .variantWeight): return true
      case (.variantInventory, .variantInventory): return true
      case (.variantTitle, .variantTitle): return true
      case (.productMetafieldDefinition, .productMetafieldDefinition): return true
      case (.variantMetafieldDefinition, .variantMetafieldDefinition): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [CollectionRuleColumn] {
    return [
      .tag,
      .title,
      .type,
      .productTaxonomyNodeId,
      .vendor,
      .variantPrice,
      .isPriceReduced,
      .variantCompareAtPrice,
      .variantWeight,
      .variantInventory,
      .variantTitle,
      .productMetafieldDefinition,
      .variantMetafieldDefinition,
    ]
  }
}

/// Specifies the input fields required to create a collection.
public struct CollectionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - descriptionHtml: The description of the collection, in HTML format.
  ///   - handle: A unique human-friendly string for the collection. Automatically generated from the collection's title.
  ///   - id: Specifies the collection to update or create a new collection if absent. Required for updating a collection.
  ///   - image: The image associated with the collection.
  ///   - products: Initial list of collection products. Only valid with `collectionCreate` and without rules.
  ///   - privateMetafields: The private metafields to associate with the collection.
  ///   - ruleSet: The rules used to assign products to the collection.
  ///   - templateSuffix: The theme template used when viewing the collection in a store.
  ///   - sortOrder: The order in which the collection's products are sorted.
  ///   - title: The title of the collection. Required for creating a new collection.
  ///   - metafields: The metafields to associate with the collection.
  ///   - seo: SEO information for the collection.
  ///   - redirectNewHandle: Indicates whether a redirect is required after a new handle has been provided.
  /// If true, then the old handle is redirected to the new one automatically.
  public init(descriptionHtml: Swift.Optional<String?> = nil, handle: Swift.Optional<String?> = nil, id: Swift.Optional<GraphQLID?> = nil, image: Swift.Optional<ImageInput?> = nil, products: Swift.Optional<[GraphQLID]?> = nil, privateMetafields: Swift.Optional<[PrivateMetafieldInput]?> = nil, ruleSet: Swift.Optional<CollectionRuleSetInput?> = nil, templateSuffix: Swift.Optional<String?> = nil, sortOrder: Swift.Optional<CollectionSortOrder?> = nil, title: Swift.Optional<String?> = nil, metafields: Swift.Optional<[MetafieldInput]?> = nil, seo: Swift.Optional<SEOInput?> = nil, redirectNewHandle: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["descriptionHtml": descriptionHtml, "handle": handle, "id": id, "image": image, "products": products, "privateMetafields": privateMetafields, "ruleSet": ruleSet, "templateSuffix": templateSuffix, "sortOrder": sortOrder, "title": title, "metafields": metafields, "seo": seo, "redirectNewHandle": redirectNewHandle]
  }

  /// The description of the collection, in HTML format.
  public var descriptionHtml: Swift.Optional<String?> {
    get {
      return graphQLMap["descriptionHtml"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "descriptionHtml")
    }
  }

  /// A unique human-friendly string for the collection. Automatically generated from the collection's title.
  public var handle: Swift.Optional<String?> {
    get {
      return graphQLMap["handle"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "handle")
    }
  }

  /// Specifies the collection to update or create a new collection if absent. Required for updating a collection.
  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The image associated with the collection.
  public var image: Swift.Optional<ImageInput?> {
    get {
      return graphQLMap["image"] as? Swift.Optional<ImageInput?> ?? Swift.Optional<ImageInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "image")
    }
  }

  /// Initial list of collection products. Only valid with `collectionCreate` and without rules.
  public var products: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["products"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "products")
    }
  }

  /// The private metafields to associate with the collection.
  public var privateMetafields: Swift.Optional<[PrivateMetafieldInput]?> {
    get {
      return graphQLMap["privateMetafields"] as? Swift.Optional<[PrivateMetafieldInput]?> ?? Swift.Optional<[PrivateMetafieldInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "privateMetafields")
    }
  }

  /// The rules used to assign products to the collection.
  public var ruleSet: Swift.Optional<CollectionRuleSetInput?> {
    get {
      return graphQLMap["ruleSet"] as? Swift.Optional<CollectionRuleSetInput?> ?? Swift.Optional<CollectionRuleSetInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "ruleSet")
    }
  }

  /// The theme template used when viewing the collection in a store.
  public var templateSuffix: Swift.Optional<String?> {
    get {
      return graphQLMap["templateSuffix"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "templateSuffix")
    }
  }

  /// The order in which the collection's products are sorted.
  public var sortOrder: Swift.Optional<CollectionSortOrder?> {
    get {
      return graphQLMap["sortOrder"] as? Swift.Optional<CollectionSortOrder?> ?? Swift.Optional<CollectionSortOrder?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sortOrder")
    }
  }

  /// The title of the collection. Required for creating a new collection.
  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  /// The metafields to associate with the collection.
  public var metafields: Swift.Optional<[MetafieldInput]?> {
    get {
      return graphQLMap["metafields"] as? Swift.Optional<[MetafieldInput]?> ?? Swift.Optional<[MetafieldInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "metafields")
    }
  }

  /// SEO information for the collection.
  public var seo: Swift.Optional<SEOInput?> {
    get {
      return graphQLMap["seo"] as? Swift.Optional<SEOInput?> ?? Swift.Optional<SEOInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "seo")
    }
  }

  /// Indicates whether a redirect is required after a new handle has been provided.
  /// If true, then the old handle is redirected to the new one automatically.
  public var redirectNewHandle: Swift.Optional<Bool?> {
    get {
      return graphQLMap["redirectNewHandle"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "redirectNewHandle")
    }
  }
}

/// Specifies the input fields for an image.
public struct ImageInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id: A globally-unique identifier.
  ///   - altText: A word or phrase to share the nature or contents of an image.
  ///   - src: The URL of the image. May be a staged upload URL.
  public init(id: Swift.Optional<GraphQLID?> = nil, altText: Swift.Optional<String?> = nil, src: Swift.Optional<String?> = nil) {
    graphQLMap = ["id": id, "altText": altText, "src": src]
  }

  /// A globally-unique identifier.
  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  /// A word or phrase to share the nature or contents of an image.
  public var altText: Swift.Optional<String?> {
    get {
      return graphQLMap["altText"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "altText")
    }
  }

  /// The URL of the image. May be a staged upload URL.
  public var src: Swift.Optional<String?> {
    get {
      return graphQLMap["src"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "src")
    }
  }
}

/// The input fields for a private metafield.
public struct PrivateMetafieldInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - owner: The resource that owns the metafield. If the field is blank, then the `Shop` resource owns the metafield.
  ///   - namespace: The namespace of the private metafield.
  ///   - key: The key of the private metafield.
  ///   - valueInput: The `value` and `valueType` of the private metafield, wrapped in a `ValueInput` object.
  public init(owner: Swift.Optional<GraphQLID?> = nil, namespace: String, key: String, valueInput: PrivateMetafieldValueInput) {
    graphQLMap = ["owner": owner, "namespace": namespace, "key": key, "valueInput": valueInput]
  }

  /// The resource that owns the metafield. If the field is blank, then the `Shop` resource owns the metafield.
  public var owner: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["owner"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "owner")
    }
  }

  /// The namespace of the private metafield.
  public var namespace: String {
    get {
      return graphQLMap["namespace"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "namespace")
    }
  }

  /// The key of the private metafield.
  public var key: String {
    get {
      return graphQLMap["key"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "key")
    }
  }

  /// The `value` and `valueType` of the private metafield, wrapped in a `ValueInput` object.
  public var valueInput: PrivateMetafieldValueInput {
    get {
      return graphQLMap["valueInput"] as! PrivateMetafieldValueInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "valueInput")
    }
  }
}

/// The value input contains the value and value type of the private metafield.
public struct PrivateMetafieldValueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - value: The value of a private metafield.
  ///   - valueType: Represents the private metafield value type.
  public init(value: String, valueType: PrivateMetafieldValueType) {
    graphQLMap = ["value": value, "valueType": valueType]
  }

  /// The value of a private metafield.
  public var value: String {
    get {
      return graphQLMap["value"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "value")
    }
  }

  /// Represents the private metafield value type.
  public var valueType: PrivateMetafieldValueType {
    get {
      return graphQLMap["valueType"] as! PrivateMetafieldValueType
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "valueType")
    }
  }
}

/// Supported private metafield value types.
public enum PrivateMetafieldValueType: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// A string metafield.
  case string
  /// An integer metafield.
  case integer
  /// A JSON string metafield.
  case jsonString
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "STRING": self = .string
      case "INTEGER": self = .integer
      case "JSON_STRING": self = .jsonString
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .string: return "STRING"
      case .integer: return "INTEGER"
      case .jsonString: return "JSON_STRING"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: PrivateMetafieldValueType, rhs: PrivateMetafieldValueType) -> Bool {
    switch (lhs, rhs) {
      case (.string, .string): return true
      case (.integer, .integer): return true
      case (.jsonString, .jsonString): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [PrivateMetafieldValueType] {
    return [
      .string,
      .integer,
      .jsonString,
    ]
  }
}

/// Specifies a rule set for the collection.
public struct CollectionRuleSetInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - appliedDisjunctively: Whether products must match any or all of the rules to be included in the collection.
  /// If true, then products must match at least one of the rules to be included in the collection.
  /// If false, then products must match all of the rules to be included in the collection.
  ///   - rules: The rules used to assign products to the collection.
  public init(appliedDisjunctively: Bool, rules: Swift.Optional<[CollectionRuleInput]?> = nil) {
    graphQLMap = ["appliedDisjunctively": appliedDisjunctively, "rules": rules]
  }

  /// Whether products must match any or all of the rules to be included in the collection.
  /// If true, then products must match at least one of the rules to be included in the collection.
  /// If false, then products must match all of the rules to be included in the collection.
  public var appliedDisjunctively: Bool {
    get {
      return graphQLMap["appliedDisjunctively"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appliedDisjunctively")
    }
  }

  /// The rules used to assign products to the collection.
  public var rules: Swift.Optional<[CollectionRuleInput]?> {
    get {
      return graphQLMap["rules"] as? Swift.Optional<[CollectionRuleInput]?> ?? Swift.Optional<[CollectionRuleInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "rules")
    }
  }
}

/// Specifies a rule to associate with a collection.
public struct CollectionRuleInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - column: The attribute that the rule focuses on. For example, `title` or `product_type`.
  ///   - relation: The type of operator that the rule is based on. For example, `equals`, `contains`, or `not_equals`.
  ///   - condition: The value that the operator is applied to. For example, `Hats`.
  ///   - conditionObjectId: The object ID that points to additional attributes for the collection rule.
  /// This is only required when using metafield definition rules.
  public init(column: CollectionRuleColumn, relation: CollectionRuleRelation, condition: String, conditionObjectId: Swift.Optional<GraphQLID?> = nil) {
    graphQLMap = ["column": column, "relation": relation, "condition": condition, "conditionObjectId": conditionObjectId]
  }

  /// The attribute that the rule focuses on. For example, `title` or `product_type`.
  public var column: CollectionRuleColumn {
    get {
      return graphQLMap["column"] as! CollectionRuleColumn
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "column")
    }
  }

  /// The type of operator that the rule is based on. For example, `equals`, `contains`, or `not_equals`.
  public var relation: CollectionRuleRelation {
    get {
      return graphQLMap["relation"] as! CollectionRuleRelation
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "relation")
    }
  }

  /// The value that the operator is applied to. For example, `Hats`.
  public var condition: String {
    get {
      return graphQLMap["condition"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "condition")
    }
  }

  /// The object ID that points to additional attributes for the collection rule.
  /// This is only required when using metafield definition rules.
  public var conditionObjectId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["conditionObjectId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "conditionObjectId")
    }
  }
}

/// Specifies the sort order for the products in the collection.
public enum CollectionSortOrder: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Alphabetically, in ascending order (A - Z).
  case alphaAsc
  /// Alphabetically, in descending order (Z - A).
  case alphaDesc
  /// By best-selling products.
  case bestSelling
  /// By date created, in ascending order (oldest - newest).
  case created
  /// By date created, in descending order (newest - oldest).
  case createdDesc
  /// In the order set manually by the merchant.
  case manual
  /// By price, in ascending order (lowest - highest).
  case priceAsc
  /// By price, in descending order (highest - lowest).
  case priceDesc
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ALPHA_ASC": self = .alphaAsc
      case "ALPHA_DESC": self = .alphaDesc
      case "BEST_SELLING": self = .bestSelling
      case "CREATED": self = .created
      case "CREATED_DESC": self = .createdDesc
      case "MANUAL": self = .manual
      case "PRICE_ASC": self = .priceAsc
      case "PRICE_DESC": self = .priceDesc
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .alphaAsc: return "ALPHA_ASC"
      case .alphaDesc: return "ALPHA_DESC"
      case .bestSelling: return "BEST_SELLING"
      case .created: return "CREATED"
      case .createdDesc: return "CREATED_DESC"
      case .manual: return "MANUAL"
      case .priceAsc: return "PRICE_ASC"
      case .priceDesc: return "PRICE_DESC"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: CollectionSortOrder, rhs: CollectionSortOrder) -> Bool {
    switch (lhs, rhs) {
      case (.alphaAsc, .alphaAsc): return true
      case (.alphaDesc, .alphaDesc): return true
      case (.bestSelling, .bestSelling): return true
      case (.created, .created): return true
      case (.createdDesc, .createdDesc): return true
      case (.manual, .manual): return true
      case (.priceAsc, .priceAsc): return true
      case (.priceDesc, .priceDesc): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [CollectionSortOrder] {
    return [
      .alphaAsc,
      .alphaDesc,
      .bestSelling,
      .created,
      .createdDesc,
      .manual,
      .priceAsc,
      .priceDesc,
    ]
  }
}

/// The input fields to use to create or update a metafield through a mutation on the owning resource.
/// An alternative way to create or update a metafield is by using the
/// [metafieldsSet](https://shopify.dev/api/admin-graphql/latest/mutations/metafieldsSet) mutation.
public struct MetafieldInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - description: The description of the metafield.
  ///   - id: The unique ID of the metafield. You don't include an ID when you create a metafield because the metafield ID
  /// is created automatically. The ID is required when you update a metafield.
  ///   - namespace: The namespace for a metafield. The namespace is required when you create a metafield and is optional when you
  /// update a metafield.
  ///   - key: The key name of the metafield. Required when creating but optional when updating.
  ///   - value: The value of a metafield.
  ///   - type: The metafield's [type](https://shopify.dev/apps/metafields/types). The metafield type is required
  /// when you create a metafield and is optional when you update a metafield.
  public init(description: Swift.Optional<String?> = nil, id: Swift.Optional<GraphQLID?> = nil, namespace: Swift.Optional<String?> = nil, key: Swift.Optional<String?> = nil, value: Swift.Optional<String?> = nil, type: Swift.Optional<String?> = nil) {
    graphQLMap = ["description": description, "id": id, "namespace": namespace, "key": key, "value": value, "type": type]
  }

  /// The description of the metafield.
  public var description: Swift.Optional<String?> {
    get {
      return graphQLMap["description"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  /// The unique ID of the metafield. You don't include an ID when you create a metafield because the metafield ID
  /// is created automatically. The ID is required when you update a metafield.
  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The namespace for a metafield. The namespace is required when you create a metafield and is optional when you
  /// update a metafield.
  public var namespace: Swift.Optional<String?> {
    get {
      return graphQLMap["namespace"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "namespace")
    }
  }

  /// The key name of the metafield. Required when creating but optional when updating.
  public var key: Swift.Optional<String?> {
    get {
      return graphQLMap["key"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "key")
    }
  }

  /// The value of a metafield.
  public var value: Swift.Optional<String?> {
    get {
      return graphQLMap["value"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "value")
    }
  }

  /// The metafield's [type](https://shopify.dev/apps/metafields/types). The metafield type is required
  /// when you create a metafield and is optional when you update a metafield.
  public var type: Swift.Optional<String?> {
    get {
      return graphQLMap["type"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }
}

/// SEO information.
public struct SEOInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - title: SEO title of the product.
  ///   - description: SEO description of the product.
  public init(title: Swift.Optional<String?> = nil, description: Swift.Optional<String?> = nil) {
    graphQLMap = ["title": title, "description": description]
  }

  /// SEO title of the product.
  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  /// SEO description of the product.
  public var description: Swift.Optional<String?> {
    get {
      return graphQLMap["description"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }
}

/// Specifies the collection to delete.
public struct CollectionDeleteInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id: The ID of the collection to be deleted.
  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  /// The ID of the collection to be deleted.
  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

/// The input field to create or update a basic code discount.
public struct DiscountCodeBasicInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - combinesWith: Determines which discount classes the discount can combine with.
  ///   - title: The title of the discount.
  ///   - startsAt: The date and time when the discount starts.
  ///   - endsAt: The date and time when the discount ends. For open-ended discounts, use `null`.
  ///   - usageLimit: The maximum number of times that the discount can be used. For open-ended discounts, use `null`.
  ///   - appliesOncePerCustomer: Whether the discount can be applied only once per customer.
  ///   - minimumRequirement: The minimum subtotal or quantity that's required for the discount to be applied.
  ///   - customerGets: The qualifying items in an order, the quantity of each one, and the total value of the discount.
  ///   - customerSelection: The customers that can use the discount.
  ///   - code: The code to use the discount.
  ///   - recurringCycleLimit: The number of times a discount applies on recurring purchases (subscriptions).
  public init(combinesWith: Swift.Optional<DiscountCombinesWithInput?> = nil, title: Swift.Optional<String?> = nil, startsAt: Swift.Optional<String?> = nil, endsAt: Swift.Optional<String?> = nil, usageLimit: Swift.Optional<Int?> = nil, appliesOncePerCustomer: Swift.Optional<Bool?> = nil, minimumRequirement: Swift.Optional<DiscountMinimumRequirementInput?> = nil, customerGets: Swift.Optional<DiscountCustomerGetsInput?> = nil, customerSelection: Swift.Optional<DiscountCustomerSelectionInput?> = nil, code: Swift.Optional<String?> = nil, recurringCycleLimit: Swift.Optional<Int?> = nil) {
    graphQLMap = ["combinesWith": combinesWith, "title": title, "startsAt": startsAt, "endsAt": endsAt, "usageLimit": usageLimit, "appliesOncePerCustomer": appliesOncePerCustomer, "minimumRequirement": minimumRequirement, "customerGets": customerGets, "customerSelection": customerSelection, "code": code, "recurringCycleLimit": recurringCycleLimit]
  }

  /// Determines which discount classes the discount can combine with.
  public var combinesWith: Swift.Optional<DiscountCombinesWithInput?> {
    get {
      return graphQLMap["combinesWith"] as? Swift.Optional<DiscountCombinesWithInput?> ?? Swift.Optional<DiscountCombinesWithInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "combinesWith")
    }
  }

  /// The title of the discount.
  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  /// The date and time when the discount starts.
  public var startsAt: Swift.Optional<String?> {
    get {
      return graphQLMap["startsAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "startsAt")
    }
  }

  /// The date and time when the discount ends. For open-ended discounts, use `null`.
  public var endsAt: Swift.Optional<String?> {
    get {
      return graphQLMap["endsAt"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "endsAt")
    }
  }

  /// The maximum number of times that the discount can be used. For open-ended discounts, use `null`.
  public var usageLimit: Swift.Optional<Int?> {
    get {
      return graphQLMap["usageLimit"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "usageLimit")
    }
  }

  /// Whether the discount can be applied only once per customer.
  public var appliesOncePerCustomer: Swift.Optional<Bool?> {
    get {
      return graphQLMap["appliesOncePerCustomer"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appliesOncePerCustomer")
    }
  }

  /// The minimum subtotal or quantity that's required for the discount to be applied.
  public var minimumRequirement: Swift.Optional<DiscountMinimumRequirementInput?> {
    get {
      return graphQLMap["minimumRequirement"] as? Swift.Optional<DiscountMinimumRequirementInput?> ?? Swift.Optional<DiscountMinimumRequirementInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "minimumRequirement")
    }
  }

  /// The qualifying items in an order, the quantity of each one, and the total value of the discount.
  public var customerGets: Swift.Optional<DiscountCustomerGetsInput?> {
    get {
      return graphQLMap["customerGets"] as? Swift.Optional<DiscountCustomerGetsInput?> ?? Swift.Optional<DiscountCustomerGetsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customerGets")
    }
  }

  /// The customers that can use the discount.
  public var customerSelection: Swift.Optional<DiscountCustomerSelectionInput?> {
    get {
      return graphQLMap["customerSelection"] as? Swift.Optional<DiscountCustomerSelectionInput?> ?? Swift.Optional<DiscountCustomerSelectionInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customerSelection")
    }
  }

  /// The code to use the discount.
  public var code: Swift.Optional<String?> {
    get {
      return graphQLMap["code"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "code")
    }
  }

  /// The number of times a discount applies on recurring purchases (subscriptions).
  public var recurringCycleLimit: Swift.Optional<Int?> {
    get {
      return graphQLMap["recurringCycleLimit"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "recurringCycleLimit")
    }
  }
}

/// Determines which discount classes the discount can combine with.
public struct DiscountCombinesWithInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - productDiscounts: Combines with product discounts.
  ///   - orderDiscounts: Combines with order discounts.
  ///   - shippingDiscounts: Combines with shipping discounts.
  public init(productDiscounts: Swift.Optional<Bool?> = nil, orderDiscounts: Swift.Optional<Bool?> = nil, shippingDiscounts: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["productDiscounts": productDiscounts, "orderDiscounts": orderDiscounts, "shippingDiscounts": shippingDiscounts]
  }

  /// Combines with product discounts.
  public var productDiscounts: Swift.Optional<Bool?> {
    get {
      return graphQLMap["productDiscounts"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productDiscounts")
    }
  }

  /// Combines with order discounts.
  public var orderDiscounts: Swift.Optional<Bool?> {
    get {
      return graphQLMap["orderDiscounts"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderDiscounts")
    }
  }

  /// Combines with shipping discounts.
  public var shippingDiscounts: Swift.Optional<Bool?> {
    get {
      return graphQLMap["shippingDiscounts"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "shippingDiscounts")
    }
  }
}

/// The minimum quantity or subtotal required for a discount.
public struct DiscountMinimumRequirementInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - quantity: The minimum required quantity.
  ///   - subtotal: The minimum required subtotal.
  public init(quantity: Swift.Optional<DiscountMinimumQuantityInput?> = nil, subtotal: Swift.Optional<DiscountMinimumSubtotalInput?> = nil) {
    graphQLMap = ["quantity": quantity, "subtotal": subtotal]
  }

  /// The minimum required quantity.
  public var quantity: Swift.Optional<DiscountMinimumQuantityInput?> {
    get {
      return graphQLMap["quantity"] as? Swift.Optional<DiscountMinimumQuantityInput?> ?? Swift.Optional<DiscountMinimumQuantityInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "quantity")
    }
  }

  /// The minimum required subtotal.
  public var subtotal: Swift.Optional<DiscountMinimumSubtotalInput?> {
    get {
      return graphQLMap["subtotal"] as? Swift.Optional<DiscountMinimumSubtotalInput?> ?? Swift.Optional<DiscountMinimumSubtotalInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "subtotal")
    }
  }
}

/// The minimum quantity required for the discount.
public struct DiscountMinimumQuantityInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - greaterThanOrEqualToQuantity: The minimum quantity of items that's required for the discount to be applied.
  public init(greaterThanOrEqualToQuantity: Swift.Optional<String?> = nil) {
    graphQLMap = ["greaterThanOrEqualToQuantity": greaterThanOrEqualToQuantity]
  }

  /// The minimum quantity of items that's required for the discount to be applied.
  public var greaterThanOrEqualToQuantity: Swift.Optional<String?> {
    get {
      return graphQLMap["greaterThanOrEqualToQuantity"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "greaterThanOrEqualToQuantity")
    }
  }
}

/// The minimum subtotal required for a discount.
public struct DiscountMinimumSubtotalInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - greaterThanOrEqualToSubtotal: The minimum subtotal that's required for the discount to be applied.
  public init(greaterThanOrEqualToSubtotal: Swift.Optional<String?> = nil) {
    graphQLMap = ["greaterThanOrEqualToSubtotal": greaterThanOrEqualToSubtotal]
  }

  /// The minimum subtotal that's required for the discount to be applied.
  public var greaterThanOrEqualToSubtotal: Swift.Optional<String?> {
    get {
      return graphQLMap["greaterThanOrEqualToSubtotal"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "greaterThanOrEqualToSubtotal")
    }
  }
}

/// Specifies the items that will be discounted, the quantity of items that will be discounted, and the value of discount.
public struct DiscountCustomerGetsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - value: The quantity of items discounted and the discount value.
  ///   - items: The IDs of the items that the customer gets. The items can be either collections or products.
  ///   - appliesOnOneTimePurchase: Whether the discount applies on regular one-time-purchase items.
  ///   - appliesOnSubscription: Whether the discount applies on subscription items.
  public init(value: Swift.Optional<DiscountCustomerGetsValueInput?> = nil, items: Swift.Optional<DiscountItemsInput?> = nil, appliesOnOneTimePurchase: Swift.Optional<Bool?> = nil, appliesOnSubscription: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["value": value, "items": items, "appliesOnOneTimePurchase": appliesOnOneTimePurchase, "appliesOnSubscription": appliesOnSubscription]
  }

  /// The quantity of items discounted and the discount value.
  public var value: Swift.Optional<DiscountCustomerGetsValueInput?> {
    get {
      return graphQLMap["value"] as? Swift.Optional<DiscountCustomerGetsValueInput?> ?? Swift.Optional<DiscountCustomerGetsValueInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "value")
    }
  }

  /// The IDs of the items that the customer gets. The items can be either collections or products.
  public var items: Swift.Optional<DiscountItemsInput?> {
    get {
      return graphQLMap["items"] as? Swift.Optional<DiscountItemsInput?> ?? Swift.Optional<DiscountItemsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "items")
    }
  }

  /// Whether the discount applies on regular one-time-purchase items.
  public var appliesOnOneTimePurchase: Swift.Optional<Bool?> {
    get {
      return graphQLMap["appliesOnOneTimePurchase"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appliesOnOneTimePurchase")
    }
  }

  /// Whether the discount applies on subscription items.
  public var appliesOnSubscription: Swift.Optional<Bool?> {
    get {
      return graphQLMap["appliesOnSubscription"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appliesOnSubscription")
    }
  }
}

/// Specifies the quantity of items discounted and the discount value.
public struct DiscountCustomerGetsValueInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - discountOnQuantity: The quantity of the items that are discounted and the discount value.
  ///   - percentage: The percentage value of the discount. Value must be between 0.00 - 1.00.
  ///   - discountAmount: The value of the discount.
  public init(discountOnQuantity: Swift.Optional<DiscountOnQuantityInput?> = nil, percentage: Swift.Optional<Double?> = nil, discountAmount: Swift.Optional<DiscountAmountInput?> = nil) {
    graphQLMap = ["discountOnQuantity": discountOnQuantity, "percentage": percentage, "discountAmount": discountAmount]
  }

  /// The quantity of the items that are discounted and the discount value.
  public var discountOnQuantity: Swift.Optional<DiscountOnQuantityInput?> {
    get {
      return graphQLMap["discountOnQuantity"] as? Swift.Optional<DiscountOnQuantityInput?> ?? Swift.Optional<DiscountOnQuantityInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "discountOnQuantity")
    }
  }

  /// The percentage value of the discount. Value must be between 0.00 - 1.00.
  public var percentage: Swift.Optional<Double?> {
    get {
      return graphQLMap["percentage"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "percentage")
    }
  }

  /// The value of the discount.
  public var discountAmount: Swift.Optional<DiscountAmountInput?> {
    get {
      return graphQLMap["discountAmount"] as? Swift.Optional<DiscountAmountInput?> ?? Swift.Optional<DiscountAmountInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "discountAmount")
    }
  }
}

/// Specifies the quantity of items discounted and the discount value.
public struct DiscountOnQuantityInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - quantity: The quantity of items that are discounted.
  ///   - effect: The percentage value of the discount.
  public init(quantity: Swift.Optional<String?> = nil, effect: Swift.Optional<DiscountEffectInput?> = nil) {
    graphQLMap = ["quantity": quantity, "effect": effect]
  }

  /// The quantity of items that are discounted.
  public var quantity: Swift.Optional<String?> {
    get {
      return graphQLMap["quantity"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "quantity")
    }
  }

  /// The percentage value of the discount.
  public var effect: Swift.Optional<DiscountEffectInput?> {
    get {
      return graphQLMap["effect"] as? Swift.Optional<DiscountEffectInput?> ?? Swift.Optional<DiscountEffectInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "effect")
    }
  }
}

/// Specifies how the discount will be applied. Currently, only percentage off is supported.
public struct DiscountEffectInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - percentage: The percentage value of the discount. Value must be between 0.00 - 1.00.
  public init(percentage: Swift.Optional<Double?> = nil) {
    graphQLMap = ["percentage": percentage]
  }

  /// The percentage value of the discount. Value must be between 0.00 - 1.00.
  public var percentage: Swift.Optional<Double?> {
    get {
      return graphQLMap["percentage"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "percentage")
    }
  }
}

/// Specifies the value of the discount and how it is applied.
public struct DiscountAmountInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - amount: The value of the discount.
  ///   - appliesOnEachItem: If true, then the discount is applied to each of the entitled items. If false, then the amount is split across all of the entitled items.
  public init(amount: Swift.Optional<String?> = nil, appliesOnEachItem: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["amount": amount, "appliesOnEachItem": appliesOnEachItem]
  }

  /// The value of the discount.
  public var amount: Swift.Optional<String?> {
    get {
      return graphQLMap["amount"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "amount")
    }
  }

  /// If true, then the discount is applied to each of the entitled items. If false, then the amount is split across all of the entitled items.
  public var appliesOnEachItem: Swift.Optional<Bool?> {
    get {
      return graphQLMap["appliesOnEachItem"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "appliesOnEachItem")
    }
  }
}

/// The items attached to a discount. You can specify the discount items by product ID or collection ID.
public struct DiscountItemsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - products: The products and product variants that are attached to a discount.
  ///   - collections: The collections that are attached to a discount.
  ///   - all: Whether all items should be selected.
  public init(products: Swift.Optional<DiscountProductsInput?> = nil, collections: Swift.Optional<DiscountCollectionsInput?> = nil, all: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["products": products, "collections": collections, "all": all]
  }

  /// The products and product variants that are attached to a discount.
  public var products: Swift.Optional<DiscountProductsInput?> {
    get {
      return graphQLMap["products"] as? Swift.Optional<DiscountProductsInput?> ?? Swift.Optional<DiscountProductsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "products")
    }
  }

  /// The collections that are attached to a discount.
  public var collections: Swift.Optional<DiscountCollectionsInput?> {
    get {
      return graphQLMap["collections"] as? Swift.Optional<DiscountCollectionsInput?> ?? Swift.Optional<DiscountCollectionsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "collections")
    }
  }

  /// Whether all items should be selected.
  public var all: Swift.Optional<Bool?> {
    get {
      return graphQLMap["all"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "all")
    }
  }
}

/// Specifies the products and product variants attached to a discount.
public struct DiscountProductsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - productsToAdd: Specifies list of product ids to add.
  ///   - productsToRemove: Specifies list of product ids to remove.
  ///   - productVariantsToAdd: Specifies list of product variant ids to add.
  ///   - productVariantsToRemove: Specifies list of product variant ids to remove.
  public init(productsToAdd: Swift.Optional<[GraphQLID]?> = nil, productsToRemove: Swift.Optional<[GraphQLID]?> = nil, productVariantsToAdd: Swift.Optional<[GraphQLID]?> = nil, productVariantsToRemove: Swift.Optional<[GraphQLID]?> = nil) {
    graphQLMap = ["productsToAdd": productsToAdd, "productsToRemove": productsToRemove, "productVariantsToAdd": productVariantsToAdd, "productVariantsToRemove": productVariantsToRemove]
  }

  /// Specifies list of product ids to add.
  public var productsToAdd: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["productsToAdd"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productsToAdd")
    }
  }

  /// Specifies list of product ids to remove.
  public var productsToRemove: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["productsToRemove"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productsToRemove")
    }
  }

  /// Specifies list of product variant ids to add.
  public var productVariantsToAdd: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["productVariantsToAdd"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productVariantsToAdd")
    }
  }

  /// Specifies list of product variant ids to remove.
  public var productVariantsToRemove: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["productVariantsToRemove"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productVariantsToRemove")
    }
  }
}

/// Specifies the collections attached to a discount.
public struct DiscountCollectionsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - add: Specifies list of collection ids to add.
  ///   - remove: Specifies list of collection ids to remove.
  public init(add: Swift.Optional<[GraphQLID]?> = nil, remove: Swift.Optional<[GraphQLID]?> = nil) {
    graphQLMap = ["add": add, "remove": remove]
  }

  /// Specifies list of collection ids to add.
  public var add: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["add"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "add")
    }
  }

  /// Specifies list of collection ids to remove.
  public var remove: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["remove"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "remove")
    }
  }
}

/// Specifies the customers who can use this discount.
public struct DiscountCustomerSelectionInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - all: Whether all customers can use this discount.
  ///   - customers: The list of customer IDs to add or remove from the list of customers.
  ///   - customerSegments: The list of customer segment IDs to add or remove from the list of customer segments.
  public init(all: Swift.Optional<Bool?> = nil, customers: Swift.Optional<DiscountCustomersInput?> = nil, customerSegments: Swift.Optional<DiscountCustomerSegmentsInput?> = nil) {
    graphQLMap = ["all": all, "customers": customers, "customerSegments": customerSegments]
  }

  /// Whether all customers can use this discount.
  public var all: Swift.Optional<Bool?> {
    get {
      return graphQLMap["all"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "all")
    }
  }

  /// The list of customer IDs to add or remove from the list of customers.
  public var customers: Swift.Optional<DiscountCustomersInput?> {
    get {
      return graphQLMap["customers"] as? Swift.Optional<DiscountCustomersInput?> ?? Swift.Optional<DiscountCustomersInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customers")
    }
  }

  /// The list of customer segment IDs to add or remove from the list of customer segments.
  public var customerSegments: Swift.Optional<DiscountCustomerSegmentsInput?> {
    get {
      return graphQLMap["customerSegments"] as? Swift.Optional<DiscountCustomerSegmentsInput?> ?? Swift.Optional<DiscountCustomerSegmentsInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customerSegments")
    }
  }
}

/// Specifies which customers to add to or remove from the discount.
public struct DiscountCustomersInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - add: A list of customers to add to the current list of customers who can use the discount.
  ///   - remove: A list of customers to remove from the current list of customers who can use the discount.
  public init(add: Swift.Optional<[GraphQLID]?> = nil, remove: Swift.Optional<[GraphQLID]?> = nil) {
    graphQLMap = ["add": add, "remove": remove]
  }

  /// A list of customers to add to the current list of customers who can use the discount.
  public var add: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["add"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "add")
    }
  }

  /// A list of customers to remove from the current list of customers who can use the discount.
  public var remove: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["remove"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "remove")
    }
  }
}

/// Specifies which customer segments to add to or remove from the discount.
public struct DiscountCustomerSegmentsInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - add: A list of customer segments to add to the current list of customer segments.
  ///   - remove: A list of customer segments to remove from the current list of customer segments.
  public init(add: Swift.Optional<[GraphQLID]?> = nil, remove: Swift.Optional<[GraphQLID]?> = nil) {
    graphQLMap = ["add": add, "remove": remove]
  }

  /// A list of customer segments to add to the current list of customer segments.
  public var add: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["add"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "add")
    }
  }

  /// A list of customer segments to remove from the current list of customer segments.
  public var remove: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["remove"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "remove")
    }
  }
}

/// Possible error codes that can be returned by `DiscountUserError`.
public enum DiscountErrorCode: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// The input value is blank.
  case blank
  /// The input value needs to be blank.
  case present
  /// The input value should be equal to the value allowed.
  case equalTo
  /// The input value should be greater than the minimum allowed value.
  case greaterThan
  /// The input value should be greater than or equal to the minimum value allowed.
  case greaterThanOrEqualTo
  /// The input value is invalid.
  case invalid
  /// The input value should be less than or equal to the maximum value allowed.
  case lessThanOrEqualTo
  /// The input value should be less than the maximum value allowed.
  case lessThan
  /// The input value is already taken.
  case taken
  /// The input value is too long.
  case tooLong
  /// The input value is too short.
  case tooShort
  /// Unexpected internal error happened.
  case internalError
  /// Too many arguments provided.
  case tooManyArguments
  /// Missing a required argument.
  case missingArgument
  /// Specify a minimum subtotal or a quantity, but not both.
  case minimumSubtotalAndQuantityRangeBothPresent
  /// The value exceeded the maximum allowed value.
  case exceededMax
  /// The active period overlaps with other automatic discounts. At any given time, only one automatic discount can be active.
  case activePeriodOverlap
  /// The value is outside of the allowed range.
  case valueOutsideRange
  /// The attribute selection contains conflicting settings.
  case conflict
  /// The value is already present through another selection.
  case implicitDuplicate
  /// The input value is already present.
  case duplicate
  /// The input value isn't included in the list.
  case inclusion
  /// The `combinesWith` settings are invalid for the discount class.
  case invalidCombinesWithForDiscountClass
  /// The discountClass is invalid for the price rule.
  case invalidDiscountClassForPriceRule
  /// The active period overlaps with too many other app-provided discounts. There's a limit on the number of app discounts that can be active at any given time.
  case maxAppDiscounts
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "BLANK": self = .blank
      case "PRESENT": self = .present
      case "EQUAL_TO": self = .equalTo
      case "GREATER_THAN": self = .greaterThan
      case "GREATER_THAN_OR_EQUAL_TO": self = .greaterThanOrEqualTo
      case "INVALID": self = .invalid
      case "LESS_THAN_OR_EQUAL_TO": self = .lessThanOrEqualTo
      case "LESS_THAN": self = .lessThan
      case "TAKEN": self = .taken
      case "TOO_LONG": self = .tooLong
      case "TOO_SHORT": self = .tooShort
      case "INTERNAL_ERROR": self = .internalError
      case "TOO_MANY_ARGUMENTS": self = .tooManyArguments
      case "MISSING_ARGUMENT": self = .missingArgument
      case "MINIMUM_SUBTOTAL_AND_QUANTITY_RANGE_BOTH_PRESENT": self = .minimumSubtotalAndQuantityRangeBothPresent
      case "EXCEEDED_MAX": self = .exceededMax
      case "ACTIVE_PERIOD_OVERLAP": self = .activePeriodOverlap
      case "VALUE_OUTSIDE_RANGE": self = .valueOutsideRange
      case "CONFLICT": self = .conflict
      case "IMPLICIT_DUPLICATE": self = .implicitDuplicate
      case "DUPLICATE": self = .duplicate
      case "INCLUSION": self = .inclusion
      case "INVALID_COMBINES_WITH_FOR_DISCOUNT_CLASS": self = .invalidCombinesWithForDiscountClass
      case "INVALID_DISCOUNT_CLASS_FOR_PRICE_RULE": self = .invalidDiscountClassForPriceRule
      case "MAX_APP_DISCOUNTS": self = .maxAppDiscounts
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .blank: return "BLANK"
      case .present: return "PRESENT"
      case .equalTo: return "EQUAL_TO"
      case .greaterThan: return "GREATER_THAN"
      case .greaterThanOrEqualTo: return "GREATER_THAN_OR_EQUAL_TO"
      case .invalid: return "INVALID"
      case .lessThanOrEqualTo: return "LESS_THAN_OR_EQUAL_TO"
      case .lessThan: return "LESS_THAN"
      case .taken: return "TAKEN"
      case .tooLong: return "TOO_LONG"
      case .tooShort: return "TOO_SHORT"
      case .internalError: return "INTERNAL_ERROR"
      case .tooManyArguments: return "TOO_MANY_ARGUMENTS"
      case .missingArgument: return "MISSING_ARGUMENT"
      case .minimumSubtotalAndQuantityRangeBothPresent: return "MINIMUM_SUBTOTAL_AND_QUANTITY_RANGE_BOTH_PRESENT"
      case .exceededMax: return "EXCEEDED_MAX"
      case .activePeriodOverlap: return "ACTIVE_PERIOD_OVERLAP"
      case .valueOutsideRange: return "VALUE_OUTSIDE_RANGE"
      case .conflict: return "CONFLICT"
      case .implicitDuplicate: return "IMPLICIT_DUPLICATE"
      case .duplicate: return "DUPLICATE"
      case .inclusion: return "INCLUSION"
      case .invalidCombinesWithForDiscountClass: return "INVALID_COMBINES_WITH_FOR_DISCOUNT_CLASS"
      case .invalidDiscountClassForPriceRule: return "INVALID_DISCOUNT_CLASS_FOR_PRICE_RULE"
      case .maxAppDiscounts: return "MAX_APP_DISCOUNTS"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: DiscountErrorCode, rhs: DiscountErrorCode) -> Bool {
    switch (lhs, rhs) {
      case (.blank, .blank): return true
      case (.present, .present): return true
      case (.equalTo, .equalTo): return true
      case (.greaterThan, .greaterThan): return true
      case (.greaterThanOrEqualTo, .greaterThanOrEqualTo): return true
      case (.invalid, .invalid): return true
      case (.lessThanOrEqualTo, .lessThanOrEqualTo): return true
      case (.lessThan, .lessThan): return true
      case (.taken, .taken): return true
      case (.tooLong, .tooLong): return true
      case (.tooShort, .tooShort): return true
      case (.internalError, .internalError): return true
      case (.tooManyArguments, .tooManyArguments): return true
      case (.missingArgument, .missingArgument): return true
      case (.minimumSubtotalAndQuantityRangeBothPresent, .minimumSubtotalAndQuantityRangeBothPresent): return true
      case (.exceededMax, .exceededMax): return true
      case (.activePeriodOverlap, .activePeriodOverlap): return true
      case (.valueOutsideRange, .valueOutsideRange): return true
      case (.conflict, .conflict): return true
      case (.implicitDuplicate, .implicitDuplicate): return true
      case (.duplicate, .duplicate): return true
      case (.inclusion, .inclusion): return true
      case (.invalidCombinesWithForDiscountClass, .invalidCombinesWithForDiscountClass): return true
      case (.invalidDiscountClassForPriceRule, .invalidDiscountClassForPriceRule): return true
      case (.maxAppDiscounts, .maxAppDiscounts): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [DiscountErrorCode] {
    return [
      .blank,
      .present,
      .equalTo,
      .greaterThan,
      .greaterThanOrEqualTo,
      .invalid,
      .lessThanOrEqualTo,
      .lessThan,
      .taken,
      .tooLong,
      .tooShort,
      .internalError,
      .tooManyArguments,
      .missingArgument,
      .minimumSubtotalAndQuantityRangeBothPresent,
      .exceededMax,
      .activePeriodOverlap,
      .valueOutsideRange,
      .conflict,
      .implicitDuplicate,
      .duplicate,
      .inclusion,
      .invalidCombinesWithForDiscountClass,
      .invalidDiscountClassForPriceRule,
      .maxAppDiscounts,
    ]
  }
}

/// The possible product statuses.
public enum ProductStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// The product is ready to sell and can be published to sales channels and apps. Products with an active status aren't automatically published to sales channels, such as the online store, or apps. By default, existing products are set to active.
  case active
  /// The product is no longer being sold and isn't available to customers on sales channels and apps.
  case archived
  /// The product isn't ready to sell and is unavailable to customers on sales channels and apps. By default, duplicated and unarchived products are set to draft.
  case draft
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTIVE": self = .active
      case "ARCHIVED": self = .archived
      case "DRAFT": self = .draft
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .active: return "ACTIVE"
      case .archived: return "ARCHIVED"
      case .draft: return "DRAFT"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ProductStatus, rhs: ProductStatus) -> Bool {
    switch (lhs, rhs) {
      case (.active, .active): return true
      case (.archived, .archived): return true
      case (.draft, .draft): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ProductStatus] {
    return [
      .active,
      .archived,
      .draft,
    ]
  }
}

/// Specifies the input fields required to create a product.
public struct ProductInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - descriptionHtml: The description of the product, complete with HTML formatting.
  ///   - handle: A unique, human-friendly string for the product.
  /// Automatically generated from the product's title unless otherwise specified.
  ///   - redirectNewHandle: Whether a redirect is required after a new handle has been provided.
  /// If true, then the old handle is redirected to the new one automatically.
  ///   - seo: The SEO information associated with the product.
  ///   - productType: The product type specified by the merchant.
  ///   - standardizedProductType: The standardized product type in the Shopify product taxonomy.
  ///   - productCategory: The product category in the Shopify product taxonomy.
  ///   - customProductType: The custom product type specified by the merchant.
  ///   - tags: A comma separated list of tags that have been added to the product.
  ///   - templateSuffix: The theme template used when viewing the product in a store.
  ///   - giftCard: Whether the product is a gift card.
  ///   - giftCardTemplateSuffix: The theme template used when viewing the gift card in a store.
  ///   - title: The title of the product.
  ///   - vendor: The name of the product's vendor.
  ///   - collectionsToJoin: The IDs of the collections that this product will be added to.
  ///   - collectionsToLeave: The IDs of collections that will no longer include the existing product.
  ///   - id: Specifies the product to update in productUpdate or creates a new product if absent in productCreate.
  ///   - images: The images to associate with the product.
  ///   - metafields: The metafields to associate with this product.
  ///   - privateMetafields: The private metafields to associate with this product.
  ///   - options: List of custom product options (maximum of 3 per product).
  ///   - variants: A list of variants associated with the product.
  ///   - status: The status of the product.
  ///   - requiresSellingPlan: Whether the product can only be purchased with a selling plan (subscription). Products that are sold exclusively on subscription can only be created on online stores. If set to `true` on an already existing product, then the product will be marked unavailable on channels that don't support subscriptions.
  public init(descriptionHtml: Swift.Optional<String?> = nil, handle: Swift.Optional<String?> = nil, redirectNewHandle: Swift.Optional<Bool?> = nil, seo: Swift.Optional<SEOInput?> = nil, productType: Swift.Optional<String?> = nil, standardizedProductType: Swift.Optional<StandardizedProductTypeInput?> = nil, productCategory: Swift.Optional<ProductCategoryInput?> = nil, customProductType: Swift.Optional<String?> = nil, tags: Swift.Optional<[String]?> = nil, templateSuffix: Swift.Optional<String?> = nil, giftCard: Swift.Optional<Bool?> = nil, giftCardTemplateSuffix: Swift.Optional<String?> = nil, title: Swift.Optional<String?> = nil, vendor: Swift.Optional<String?> = nil, collectionsToJoin: Swift.Optional<[GraphQLID]?> = nil, collectionsToLeave: Swift.Optional<[GraphQLID]?> = nil, id: Swift.Optional<GraphQLID?> = nil, images: Swift.Optional<[ImageInput]?> = nil, metafields: Swift.Optional<[MetafieldInput]?> = nil, privateMetafields: Swift.Optional<[PrivateMetafieldInput]?> = nil, options: Swift.Optional<[String]?> = nil, variants: Swift.Optional<[ProductVariantInput]?> = nil, status: Swift.Optional<ProductStatus?> = nil, requiresSellingPlan: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["descriptionHtml": descriptionHtml, "handle": handle, "redirectNewHandle": redirectNewHandle, "seo": seo, "productType": productType, "standardizedProductType": standardizedProductType, "productCategory": productCategory, "customProductType": customProductType, "tags": tags, "templateSuffix": templateSuffix, "giftCard": giftCard, "giftCardTemplateSuffix": giftCardTemplateSuffix, "title": title, "vendor": vendor, "collectionsToJoin": collectionsToJoin, "collectionsToLeave": collectionsToLeave, "id": id, "images": images, "metafields": metafields, "privateMetafields": privateMetafields, "options": options, "variants": variants, "status": status, "requiresSellingPlan": requiresSellingPlan]
  }

  /// The description of the product, complete with HTML formatting.
  public var descriptionHtml: Swift.Optional<String?> {
    get {
      return graphQLMap["descriptionHtml"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "descriptionHtml")
    }
  }

  /// A unique, human-friendly string for the product.
  /// Automatically generated from the product's title unless otherwise specified.
  public var handle: Swift.Optional<String?> {
    get {
      return graphQLMap["handle"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "handle")
    }
  }

  /// Whether a redirect is required after a new handle has been provided.
  /// If true, then the old handle is redirected to the new one automatically.
  public var redirectNewHandle: Swift.Optional<Bool?> {
    get {
      return graphQLMap["redirectNewHandle"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "redirectNewHandle")
    }
  }

  /// The SEO information associated with the product.
  public var seo: Swift.Optional<SEOInput?> {
    get {
      return graphQLMap["seo"] as? Swift.Optional<SEOInput?> ?? Swift.Optional<SEOInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "seo")
    }
  }

  /// The product type specified by the merchant.
  public var productType: Swift.Optional<String?> {
    get {
      return graphQLMap["productType"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productType")
    }
  }

  /// The standardized product type in the Shopify product taxonomy.
  public var standardizedProductType: Swift.Optional<StandardizedProductTypeInput?> {
    get {
      return graphQLMap["standardizedProductType"] as? Swift.Optional<StandardizedProductTypeInput?> ?? Swift.Optional<StandardizedProductTypeInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "standardizedProductType")
    }
  }

  /// The product category in the Shopify product taxonomy.
  public var productCategory: Swift.Optional<ProductCategoryInput?> {
    get {
      return graphQLMap["productCategory"] as? Swift.Optional<ProductCategoryInput?> ?? Swift.Optional<ProductCategoryInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productCategory")
    }
  }

  /// The custom product type specified by the merchant.
  public var customProductType: Swift.Optional<String?> {
    get {
      return graphQLMap["customProductType"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customProductType")
    }
  }

  /// A comma separated list of tags that have been added to the product.
  public var tags: Swift.Optional<[String]?> {
    get {
      return graphQLMap["tags"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tags")
    }
  }

  /// The theme template used when viewing the product in a store.
  public var templateSuffix: Swift.Optional<String?> {
    get {
      return graphQLMap["templateSuffix"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "templateSuffix")
    }
  }

  /// Whether the product is a gift card.
  public var giftCard: Swift.Optional<Bool?> {
    get {
      return graphQLMap["giftCard"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "giftCard")
    }
  }

  /// The theme template used when viewing the gift card in a store.
  public var giftCardTemplateSuffix: Swift.Optional<String?> {
    get {
      return graphQLMap["giftCardTemplateSuffix"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "giftCardTemplateSuffix")
    }
  }

  /// The title of the product.
  public var title: Swift.Optional<String?> {
    get {
      return graphQLMap["title"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "title")
    }
  }

  /// The name of the product's vendor.
  public var vendor: Swift.Optional<String?> {
    get {
      return graphQLMap["vendor"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "vendor")
    }
  }

  /// The IDs of the collections that this product will be added to.
  public var collectionsToJoin: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["collectionsToJoin"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "collectionsToJoin")
    }
  }

  /// The IDs of collections that will no longer include the existing product.
  public var collectionsToLeave: Swift.Optional<[GraphQLID]?> {
    get {
      return graphQLMap["collectionsToLeave"] as? Swift.Optional<[GraphQLID]?> ?? Swift.Optional<[GraphQLID]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "collectionsToLeave")
    }
  }

  /// Specifies the product to update in productUpdate or creates a new product if absent in productCreate.
  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The images to associate with the product.
  public var images: Swift.Optional<[ImageInput]?> {
    get {
      return graphQLMap["images"] as? Swift.Optional<[ImageInput]?> ?? Swift.Optional<[ImageInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "images")
    }
  }

  /// The metafields to associate with this product.
  public var metafields: Swift.Optional<[MetafieldInput]?> {
    get {
      return graphQLMap["metafields"] as? Swift.Optional<[MetafieldInput]?> ?? Swift.Optional<[MetafieldInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "metafields")
    }
  }

  /// The private metafields to associate with this product.
  public var privateMetafields: Swift.Optional<[PrivateMetafieldInput]?> {
    get {
      return graphQLMap["privateMetafields"] as? Swift.Optional<[PrivateMetafieldInput]?> ?? Swift.Optional<[PrivateMetafieldInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "privateMetafields")
    }
  }

  /// List of custom product options (maximum of 3 per product).
  public var options: Swift.Optional<[String]?> {
    get {
      return graphQLMap["options"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "options")
    }
  }

  /// A list of variants associated with the product.
  public var variants: Swift.Optional<[ProductVariantInput]?> {
    get {
      return graphQLMap["variants"] as? Swift.Optional<[ProductVariantInput]?> ?? Swift.Optional<[ProductVariantInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "variants")
    }
  }

  /// The status of the product.
  public var status: Swift.Optional<ProductStatus?> {
    get {
      return graphQLMap["status"] as? Swift.Optional<ProductStatus?> ?? Swift.Optional<ProductStatus?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "status")
    }
  }

  /// Whether the product can only be purchased with a selling plan (subscription). Products that are sold exclusively on subscription can only be created on online stores. If set to `true` on an already existing product, then the product will be marked unavailable on channels that don't support subscriptions.
  public var requiresSellingPlan: Swift.Optional<Bool?> {
    get {
      return graphQLMap["requiresSellingPlan"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "requiresSellingPlan")
    }
  }
}

/// Provides the fields and values to use when adding a standard product type to a product. The [Shopify product taxonomy](https://help.shopify.com/txt/product_taxonomy/en.txt) contains the full list of available values.
public struct StandardizedProductTypeInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - productTaxonomyNodeId: The id of the node in the Shopify taxonomy that represents the product type.
  public init(productTaxonomyNodeId: GraphQLID) {
    graphQLMap = ["productTaxonomyNodeId": productTaxonomyNodeId]
  }

  /// The id of the node in the Shopify taxonomy that represents the product type.
  public var productTaxonomyNodeId: GraphQLID {
    get {
      return graphQLMap["productTaxonomyNodeId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productTaxonomyNodeId")
    }
  }
}

/// The input fields to use when adding a product category to a product. The [Shopify product taxonomy](https://help.shopify.com/txt/product_taxonomy/en.txt) contains the full list of available values.
public struct ProductCategoryInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - productTaxonomyNodeId: The ID of the node in the Shopify taxonomy that represents the product category.
  public init(productTaxonomyNodeId: GraphQLID) {
    graphQLMap = ["productTaxonomyNodeId": productTaxonomyNodeId]
  }

  /// The ID of the node in the Shopify taxonomy that represents the product category.
  public var productTaxonomyNodeId: GraphQLID {
    get {
      return graphQLMap["productTaxonomyNodeId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productTaxonomyNodeId")
    }
  }
}

/// Specifies a product variant to create or update.
public struct ProductVariantInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - barcode: The value of the barcode associated with the product.
  ///   - compareAtPrice: The compare-at price of the variant.
  ///   - harmonizedSystemCode: The Harmonized System code (or HS Tariff code) for the variant.
  ///   - id: Specifies the product variant to update or create a new variant if absent.
  ///   - imageId: The ID of the image that's associated with the variant.
  ///   - imageSrc: The URL of an image to associate with the variant.  This field can only be used through mutations that create product images and must match one of the URLs being created on the product.
  ///   - mediaSrc: The URL of the media to associate with the variant. This field can only be used in mutations that create media images and must match one of the URLs being created on the product. This field only accepts one value.
  ///   - inventoryPolicy: Whether customers are allowed to place an order for the product variant when it's out of stock.
  ///   - inventoryQuantities: The inventory quantities at each location where the variant is stocked. Used as input only to the `productVariantCreate` mutation.
  ///   - inventoryItem: The inventory item associated with the variant. Used for unit cost.
  ///   - metafields: Additional customizable information about the product variant.
  ///   - privateMetafields: The private metafields associated with the product.
  ///   - options: The custom properties that a shop owner uses to define product variants.
  ///   - position: The order of the product variant in the list of product variants. The first position in the list is 1.
  ///   - price: The price of the variant.
  ///   - productId: The product to create the variant for. Used as input only to the `productVariantCreate` mutation.
  ///   - requiresShipping: Whether the variant requires shipping.
  ///   - sku: The SKU for the variant.
  ///   - taxable: Whether the variant is taxable.
  ///   - taxCode: The tax code associated with the variant.
  ///   - weight: The weight of the variant.
  ///   - weightUnit: The unit of weight that's used to measure the variant.
  public init(barcode: Swift.Optional<String?> = nil, compareAtPrice: Swift.Optional<String?> = nil, harmonizedSystemCode: Swift.Optional<String?> = nil, id: Swift.Optional<GraphQLID?> = nil, imageId: Swift.Optional<GraphQLID?> = nil, imageSrc: Swift.Optional<String?> = nil, mediaSrc: Swift.Optional<[String]?> = nil, inventoryPolicy: Swift.Optional<ProductVariantInventoryPolicy?> = nil, inventoryQuantities: Swift.Optional<[InventoryLevelInput]?> = nil, inventoryItem: Swift.Optional<InventoryItemInput?> = nil, metafields: Swift.Optional<[MetafieldInput]?> = nil, privateMetafields: Swift.Optional<[PrivateMetafieldInput]?> = nil, options: Swift.Optional<[String]?> = nil, position: Swift.Optional<Int?> = nil, price: Swift.Optional<String?> = nil, productId: Swift.Optional<GraphQLID?> = nil, requiresShipping: Swift.Optional<Bool?> = nil, sku: Swift.Optional<String?> = nil, taxable: Swift.Optional<Bool?> = nil, taxCode: Swift.Optional<String?> = nil, weight: Swift.Optional<Double?> = nil, weightUnit: Swift.Optional<WeightUnit?> = nil) {
    graphQLMap = ["barcode": barcode, "compareAtPrice": compareAtPrice, "harmonizedSystemCode": harmonizedSystemCode, "id": id, "imageId": imageId, "imageSrc": imageSrc, "mediaSrc": mediaSrc, "inventoryPolicy": inventoryPolicy, "inventoryQuantities": inventoryQuantities, "inventoryItem": inventoryItem, "metafields": metafields, "privateMetafields": privateMetafields, "options": options, "position": position, "price": price, "productId": productId, "requiresShipping": requiresShipping, "sku": sku, "taxable": taxable, "taxCode": taxCode, "weight": weight, "weightUnit": weightUnit]
  }

  /// The value of the barcode associated with the product.
  public var barcode: Swift.Optional<String?> {
    get {
      return graphQLMap["barcode"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "barcode")
    }
  }

  /// The compare-at price of the variant.
  public var compareAtPrice: Swift.Optional<String?> {
    get {
      return graphQLMap["compareAtPrice"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "compareAtPrice")
    }
  }

  /// The Harmonized System code (or HS Tariff code) for the variant.
  public var harmonizedSystemCode: Swift.Optional<String?> {
    get {
      return graphQLMap["harmonizedSystemCode"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "harmonizedSystemCode")
    }
  }

  /// Specifies the product variant to update or create a new variant if absent.
  public var id: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  /// The ID of the image that's associated with the variant.
  public var imageId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["imageId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageId")
    }
  }

  /// The URL of an image to associate with the variant.  This field can only be used through mutations that create product images and must match one of the URLs being created on the product.
  public var imageSrc: Swift.Optional<String?> {
    get {
      return graphQLMap["imageSrc"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "imageSrc")
    }
  }

  /// The URL of the media to associate with the variant. This field can only be used in mutations that create media images and must match one of the URLs being created on the product. This field only accepts one value.
  public var mediaSrc: Swift.Optional<[String]?> {
    get {
      return graphQLMap["mediaSrc"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mediaSrc")
    }
  }

  /// Whether customers are allowed to place an order for the product variant when it's out of stock.
  public var inventoryPolicy: Swift.Optional<ProductVariantInventoryPolicy?> {
    get {
      return graphQLMap["inventoryPolicy"] as? Swift.Optional<ProductVariantInventoryPolicy?> ?? Swift.Optional<ProductVariantInventoryPolicy?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "inventoryPolicy")
    }
  }

  /// The inventory quantities at each location where the variant is stocked. Used as input only to the `productVariantCreate` mutation.
  public var inventoryQuantities: Swift.Optional<[InventoryLevelInput]?> {
    get {
      return graphQLMap["inventoryQuantities"] as? Swift.Optional<[InventoryLevelInput]?> ?? Swift.Optional<[InventoryLevelInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "inventoryQuantities")
    }
  }

  /// The inventory item associated with the variant. Used for unit cost.
  public var inventoryItem: Swift.Optional<InventoryItemInput?> {
    get {
      return graphQLMap["inventoryItem"] as? Swift.Optional<InventoryItemInput?> ?? Swift.Optional<InventoryItemInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "inventoryItem")
    }
  }

  /// Additional customizable information about the product variant.
  public var metafields: Swift.Optional<[MetafieldInput]?> {
    get {
      return graphQLMap["metafields"] as? Swift.Optional<[MetafieldInput]?> ?? Swift.Optional<[MetafieldInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "metafields")
    }
  }

  /// The private metafields associated with the product.
  public var privateMetafields: Swift.Optional<[PrivateMetafieldInput]?> {
    get {
      return graphQLMap["privateMetafields"] as? Swift.Optional<[PrivateMetafieldInput]?> ?? Swift.Optional<[PrivateMetafieldInput]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "privateMetafields")
    }
  }

  /// The custom properties that a shop owner uses to define product variants.
  public var options: Swift.Optional<[String]?> {
    get {
      return graphQLMap["options"] as? Swift.Optional<[String]?> ?? Swift.Optional<[String]?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "options")
    }
  }

  /// The order of the product variant in the list of product variants. The first position in the list is 1.
  public var position: Swift.Optional<Int?> {
    get {
      return graphQLMap["position"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "position")
    }
  }

  /// The price of the variant.
  public var price: Swift.Optional<String?> {
    get {
      return graphQLMap["price"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "price")
    }
  }

  /// The product to create the variant for. Used as input only to the `productVariantCreate` mutation.
  public var productId: Swift.Optional<GraphQLID?> {
    get {
      return graphQLMap["productId"] as? Swift.Optional<GraphQLID?> ?? Swift.Optional<GraphQLID?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "productId")
    }
  }

  /// Whether the variant requires shipping.
  public var requiresShipping: Swift.Optional<Bool?> {
    get {
      return graphQLMap["requiresShipping"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "requiresShipping")
    }
  }

  /// The SKU for the variant.
  public var sku: Swift.Optional<String?> {
    get {
      return graphQLMap["sku"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "sku")
    }
  }

  /// Whether the variant is taxable.
  public var taxable: Swift.Optional<Bool?> {
    get {
      return graphQLMap["taxable"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taxable")
    }
  }

  /// The tax code associated with the variant.
  public var taxCode: Swift.Optional<String?> {
    get {
      return graphQLMap["taxCode"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "taxCode")
    }
  }

  /// The weight of the variant.
  public var weight: Swift.Optional<Double?> {
    get {
      return graphQLMap["weight"] as? Swift.Optional<Double?> ?? Swift.Optional<Double?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weight")
    }
  }

  /// The unit of weight that's used to measure the variant.
  public var weightUnit: Swift.Optional<WeightUnit?> {
    get {
      return graphQLMap["weightUnit"] as? Swift.Optional<WeightUnit?> ?? Swift.Optional<WeightUnit?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "weightUnit")
    }
  }
}

/// The valid values for the inventory policy of a product variant once it is out of stock.
public enum ProductVariantInventoryPolicy: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// Customers can't buy this product variant after it's out of stock.
  case deny
  /// Customers can buy this product variant after it's out of stock.
  case `continue`
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "DENY": self = .deny
      case "CONTINUE": self = .continue
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .deny: return "DENY"
      case .continue: return "CONTINUE"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: ProductVariantInventoryPolicy, rhs: ProductVariantInventoryPolicy) -> Bool {
    switch (lhs, rhs) {
      case (.deny, .deny): return true
      case (.continue, .continue): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [ProductVariantInventoryPolicy] {
    return [
      .deny,
      .continue,
    ]
  }
}

/// Specifies the input fields for an inventory level.
public struct InventoryLevelInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - availableQuantity: The available quantity of an inventory item at a location.
  ///   - locationId: The ID of a location.
  public init(availableQuantity: Int, locationId: GraphQLID) {
    graphQLMap = ["availableQuantity": availableQuantity, "locationId": locationId]
  }

  /// The available quantity of an inventory item at a location.
  public var availableQuantity: Int {
    get {
      return graphQLMap["availableQuantity"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "availableQuantity")
    }
  }

  /// The ID of a location.
  public var locationId: GraphQLID {
    get {
      return graphQLMap["locationId"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "locationId")
    }
  }
}

/// Specifies the input fields for an inventory item.
public struct InventoryItemInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - cost: Unit cost associated with the inventory item, the currency is the shop's default currency.
  ///   - tracked: Whether the inventory item is tracked.
  public init(cost: Swift.Optional<String?> = nil, tracked: Swift.Optional<Bool?> = nil) {
    graphQLMap = ["cost": cost, "tracked": tracked]
  }

  /// Unit cost associated with the inventory item, the currency is the shop's default currency.
  public var cost: Swift.Optional<String?> {
    get {
      return graphQLMap["cost"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cost")
    }
  }

  /// Whether the inventory item is tracked.
  public var tracked: Swift.Optional<Bool?> {
    get {
      return graphQLMap["tracked"] as? Swift.Optional<Bool?> ?? Swift.Optional<Bool?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "tracked")
    }
  }
}

/// Units of measurement for weight.
public enum WeightUnit: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  /// 1 kilogram equals 1000 grams.
  case kilograms
  /// Metric system unit of mass.
  case grams
  /// 1 pound equals 16 ounces.
  case pounds
  /// Imperial system unit of mass.
  case ounces
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "KILOGRAMS": self = .kilograms
      case "GRAMS": self = .grams
      case "POUNDS": self = .pounds
      case "OUNCES": self = .ounces
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .kilograms: return "KILOGRAMS"
      case .grams: return "GRAMS"
      case .pounds: return "POUNDS"
      case .ounces: return "OUNCES"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: WeightUnit, rhs: WeightUnit) -> Bool {
    switch (lhs, rhs) {
      case (.kilograms, .kilograms): return true
      case (.grams, .grams): return true
      case (.pounds, .pounds): return true
      case (.ounces, .ounces): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [WeightUnit] {
    return [
      .kilograms,
      .grams,
      .pounds,
      .ounces,
    ]
  }
}

/// Specifies the product to delete.
public struct ProductDeleteInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id: The ID of the product.
  public init(id: GraphQLID) {
    graphQLMap = ["id": id]
  }

  /// The ID of the product.
  public var id: GraphQLID {
    get {
      return graphQLMap["id"] as! GraphQLID
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }
}

public final class SmartCollectionQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query smartCollection {
      collections(query: "collection_type:smart_collections", first: 10) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            title
            updatedAt
            handle
            ruleSet {
              __typename
              rules {
                __typename
                relation
                column
                condition
              }
            }
            image {
              __typename
              id
              src
            }
          }
        }
      }
    }
    """

  public let operationName: String = "smartCollection"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["QueryRoot"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("collections", arguments: ["query": "collection_type:smart_collections", "first": 10], type: .nonNull(.object(Collection.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(collections: Collection) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "collections": collections.resultMap])
    }

    /// Returns a list of collections.
    public var collections: Collection {
      get {
        return Collection(unsafeResultMap: resultMap["collections"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "collections")
      }
    }

    public struct Collection: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CollectionConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "CollectionConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of edges.
      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["CollectionEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .nonNull(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node) {
          self.init(unsafeResultMap: ["__typename": "CollectionEdge", "node": node.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of CollectionEdge.
        public var node: Node {
          get {
            return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Collection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("title", type: .nonNull(.scalar(String.self))),
              GraphQLField("updatedAt", type: .nonNull(.scalar(String.self))),
              GraphQLField("handle", type: .nonNull(.scalar(String.self))),
              GraphQLField("ruleSet", type: .object(RuleSet.selections)),
              GraphQLField("image", type: .object(Image.selections)),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, title: String, updatedAt: String, handle: String, ruleSet: RuleSet? = nil, image: Image? = nil) {
            self.init(unsafeResultMap: ["__typename": "Collection", "id": id, "title": title, "updatedAt": updatedAt, "handle": handle, "ruleSet": ruleSet.flatMap { (value: RuleSet) -> ResultMap in value.resultMap }, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A globally-unique identifier.
          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The name of the collection. It's displayed in the Shopify admin and is typically displayed in sales channels, such as an online store.
          public var title: String {
            get {
              return resultMap["title"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "title")
            }
          }

          /// The date and time ([ISO 8601 format](http://en.wikipedia.org/wiki/ISO_8601)) when the collection was last modified.
          public var updatedAt: String {
            get {
              return resultMap["updatedAt"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "updatedAt")
            }
          }

          /// A unique string that identifies the collection. If a handle isn't specified when a collection is created, it's automatically generated from the collection's original title, and typically includes words from the title separated by hyphens. For example, a collection that was created with the title `Summer Catalog 2022` might have the handle `summer-catalog-2022`.
          /// 
          /// If the title is changed, the handle doesn't automatically change.
          /// 
          /// The handle can be used in themes by the Liquid templating language to refer to the collection, but using the ID is preferred because it never changes.
          public var handle: String {
            get {
              return resultMap["handle"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "handle")
            }
          }

          /// For a smart (automated) collection, specifies the rules that determine whether a product is included.
          public var ruleSet: RuleSet? {
            get {
              return (resultMap["ruleSet"] as? ResultMap).flatMap { RuleSet(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "ruleSet")
            }
          }

          /// The image associated with the collection.
          public var image: Image? {
            get {
              return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "image")
            }
          }

          public struct RuleSet: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CollectionRuleSet"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("rules", type: .nonNull(.list(.nonNull(.object(Rule.selections))))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(rules: [Rule]) {
              self.init(unsafeResultMap: ["__typename": "CollectionRuleSet", "rules": rules.map { (value: Rule) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The rules used to assign products to the collection.
            public var rules: [Rule] {
              get {
                return (resultMap["rules"] as! [ResultMap]).map { (value: ResultMap) -> Rule in Rule(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Rule) -> ResultMap in value.resultMap }, forKey: "rules")
              }
            }

            public struct Rule: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["CollectionRule"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("relation", type: .nonNull(.scalar(CollectionRuleRelation.self))),
                  GraphQLField("column", type: .nonNull(.scalar(CollectionRuleColumn.self))),
                  GraphQLField("condition", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(relation: CollectionRuleRelation, column: CollectionRuleColumn, condition: String) {
                self.init(unsafeResultMap: ["__typename": "CollectionRule", "relation": relation, "column": column, "condition": condition])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The type of operator that the rule is based on. For example, `equals`, `contains`, or `not_equals`.
              public var relation: CollectionRuleRelation {
                get {
                  return resultMap["relation"]! as! CollectionRuleRelation
                }
                set {
                  resultMap.updateValue(newValue, forKey: "relation")
                }
              }

              /// The attribute that the rule focuses on. For example, `title` or `product_type`.
              public var column: CollectionRuleColumn {
                get {
                  return resultMap["column"]! as! CollectionRuleColumn
                }
                set {
                  resultMap.updateValue(newValue, forKey: "column")
                }
              }

              /// The value that the operator is applied to. For example, `Hats`.
              public var condition: String {
                get {
                  return resultMap["condition"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "condition")
                }
              }
            }
          }

          public struct Image: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["Image"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("id", type: .scalar(GraphQLID.self)),
                GraphQLField("src", type: .nonNull(.scalar(String.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(id: GraphQLID? = nil, src: String) {
              self.init(unsafeResultMap: ["__typename": "Image", "id": id, "src": src])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// A unique identifier for the image.
            public var id: GraphQLID? {
              get {
                return resultMap["id"] as? GraphQLID
              }
              set {
                resultMap.updateValue(newValue, forKey: "id")
              }
            }

            /// The location of the image as a URL.
            @available(*, deprecated, message: "Use `url` instead.")
            public var src: String {
              get {
                return resultMap["src"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "src")
              }
            }
          }
        }
      }
    }
  }
}

public final class CollectionCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation CollectionCreate($input: CollectionInput!) {
      collectionCreate(input: $input) {
        __typename
        collection {
          __typename
          image {
            __typename
            src
          }
          id
          handle
          ruleSet {
            __typename
            rules {
              __typename
              condition
              relation
            }
          }
          title
        }
      }
    }
    """

  public let operationName: String = "CollectionCreate"

  public var input: CollectionInput

  public init(input: CollectionInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("collectionCreate", arguments: ["input": GraphQLVariable("input")], type: .object(CollectionCreate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(collectionCreate: CollectionCreate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "collectionCreate": collectionCreate.flatMap { (value: CollectionCreate) -> ResultMap in value.resultMap }])
    }

    /// Creates a collection.
    public var collectionCreate: CollectionCreate? {
      get {
        return (resultMap["collectionCreate"] as? ResultMap).flatMap { CollectionCreate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "collectionCreate")
      }
    }

    public struct CollectionCreate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CollectionCreatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("collection", type: .object(Collection.selections)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(collection: Collection? = nil) {
        self.init(unsafeResultMap: ["__typename": "CollectionCreatePayload", "collection": collection.flatMap { (value: Collection) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The collection that has been created.
      public var collection: Collection? {
        get {
          return (resultMap["collection"] as? ResultMap).flatMap { Collection(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "collection")
        }
      }

      public struct Collection: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Collection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("image", type: .object(Image.selections)),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("handle", type: .nonNull(.scalar(String.self))),
            GraphQLField("ruleSet", type: .object(RuleSet.selections)),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(image: Image? = nil, id: GraphQLID, handle: String, ruleSet: RuleSet? = nil, title: String) {
          self.init(unsafeResultMap: ["__typename": "Collection", "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }, "id": id, "handle": handle, "ruleSet": ruleSet.flatMap { (value: RuleSet) -> ResultMap in value.resultMap }, "title": title])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The image associated with the collection.
        public var image: Image? {
          get {
            return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "image")
          }
        }

        /// A globally-unique identifier.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// A unique string that identifies the collection. If a handle isn't specified when a collection is created, it's automatically generated from the collection's original title, and typically includes words from the title separated by hyphens. For example, a collection that was created with the title `Summer Catalog 2022` might have the handle `summer-catalog-2022`.
        /// 
        /// If the title is changed, the handle doesn't automatically change.
        /// 
        /// The handle can be used in themes by the Liquid templating language to refer to the collection, but using the ID is preferred because it never changes.
        public var handle: String {
          get {
            return resultMap["handle"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "handle")
          }
        }

        /// For a smart (automated) collection, specifies the rules that determine whether a product is included.
        public var ruleSet: RuleSet? {
          get {
            return (resultMap["ruleSet"] as? ResultMap).flatMap { RuleSet(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "ruleSet")
          }
        }

        /// The name of the collection. It's displayed in the Shopify admin and is typically displayed in sales channels, such as an online store.
        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public struct Image: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Image"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("src", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(src: String) {
            self.init(unsafeResultMap: ["__typename": "Image", "src": src])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The location of the image as a URL.
          @available(*, deprecated, message: "Use `url` instead.")
          public var src: String {
            get {
              return resultMap["src"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "src")
            }
          }
        }

        public struct RuleSet: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CollectionRuleSet"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("rules", type: .nonNull(.list(.nonNull(.object(Rule.selections))))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(rules: [Rule]) {
            self.init(unsafeResultMap: ["__typename": "CollectionRuleSet", "rules": rules.map { (value: Rule) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The rules used to assign products to the collection.
          public var rules: [Rule] {
            get {
              return (resultMap["rules"] as! [ResultMap]).map { (value: ResultMap) -> Rule in Rule(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Rule) -> ResultMap in value.resultMap }, forKey: "rules")
            }
          }

          public struct Rule: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CollectionRule"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("condition", type: .nonNull(.scalar(String.self))),
                GraphQLField("relation", type: .nonNull(.scalar(CollectionRuleRelation.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(condition: String, relation: CollectionRuleRelation) {
              self.init(unsafeResultMap: ["__typename": "CollectionRule", "condition": condition, "relation": relation])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The value that the operator is applied to. For example, `Hats`.
            public var condition: String {
              get {
                return resultMap["condition"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "condition")
              }
            }

            /// The type of operator that the rule is based on. For example, `equals`, `contains`, or `not_equals`.
            public var relation: CollectionRuleRelation {
              get {
                return resultMap["relation"]! as! CollectionRuleRelation
              }
              set {
                resultMap.updateValue(newValue, forKey: "relation")
              }
            }
          }
        }
      }
    }
  }
}

public final class CollectionUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation collectionUpdate($input: CollectionInput!) {
      collectionUpdate(input: $input) {
        __typename
        collection {
          __typename
          id
          image {
            __typename
            src
          }
          handle
          ruleSet {
            __typename
            rules {
              __typename
              condition
              relation
            }
          }
          title
        }
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "collectionUpdate"

  public var input: CollectionInput

  public init(input: CollectionInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("collectionUpdate", arguments: ["input": GraphQLVariable("input")], type: .object(CollectionUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(collectionUpdate: CollectionUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "collectionUpdate": collectionUpdate.flatMap { (value: CollectionUpdate) -> ResultMap in value.resultMap }])
    }

    /// Updates a collection.
    public var collectionUpdate: CollectionUpdate? {
      get {
        return (resultMap["collectionUpdate"] as? ResultMap).flatMap { CollectionUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "collectionUpdate")
      }
    }

    public struct CollectionUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CollectionUpdatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("collection", type: .object(Collection.selections)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(collection: Collection? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "CollectionUpdatePayload", "collection": collection.flatMap { (value: Collection) -> ResultMap in value.resultMap }, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The updated collection.
      public var collection: Collection? {
        get {
          return (resultMap["collection"] as? ResultMap).flatMap { Collection(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "collection")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct Collection: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Collection"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("image", type: .object(Image.selections)),
            GraphQLField("handle", type: .nonNull(.scalar(String.self))),
            GraphQLField("ruleSet", type: .object(RuleSet.selections)),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, image: Image? = nil, handle: String, ruleSet: RuleSet? = nil, title: String) {
          self.init(unsafeResultMap: ["__typename": "Collection", "id": id, "image": image.flatMap { (value: Image) -> ResultMap in value.resultMap }, "handle": handle, "ruleSet": ruleSet.flatMap { (value: RuleSet) -> ResultMap in value.resultMap }, "title": title])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A globally-unique identifier.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The image associated with the collection.
        public var image: Image? {
          get {
            return (resultMap["image"] as? ResultMap).flatMap { Image(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "image")
          }
        }

        /// A unique string that identifies the collection. If a handle isn't specified when a collection is created, it's automatically generated from the collection's original title, and typically includes words from the title separated by hyphens. For example, a collection that was created with the title `Summer Catalog 2022` might have the handle `summer-catalog-2022`.
        /// 
        /// If the title is changed, the handle doesn't automatically change.
        /// 
        /// The handle can be used in themes by the Liquid templating language to refer to the collection, but using the ID is preferred because it never changes.
        public var handle: String {
          get {
            return resultMap["handle"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "handle")
          }
        }

        /// For a smart (automated) collection, specifies the rules that determine whether a product is included.
        public var ruleSet: RuleSet? {
          get {
            return (resultMap["ruleSet"] as? ResultMap).flatMap { RuleSet(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "ruleSet")
          }
        }

        /// The name of the collection. It's displayed in the Shopify admin and is typically displayed in sales channels, such as an online store.
        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public struct Image: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Image"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("src", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(src: String) {
            self.init(unsafeResultMap: ["__typename": "Image", "src": src])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The location of the image as a URL.
          @available(*, deprecated, message: "Use `url` instead.")
          public var src: String {
            get {
              return resultMap["src"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "src")
            }
          }
        }

        public struct RuleSet: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["CollectionRuleSet"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("rules", type: .nonNull(.list(.nonNull(.object(Rule.selections))))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(rules: [Rule]) {
            self.init(unsafeResultMap: ["__typename": "CollectionRuleSet", "rules": rules.map { (value: Rule) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The rules used to assign products to the collection.
          public var rules: [Rule] {
            get {
              return (resultMap["rules"] as! [ResultMap]).map { (value: ResultMap) -> Rule in Rule(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Rule) -> ResultMap in value.resultMap }, forKey: "rules")
            }
          }

          public struct Rule: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["CollectionRule"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("condition", type: .nonNull(.scalar(String.self))),
                GraphQLField("relation", type: .nonNull(.scalar(CollectionRuleRelation.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(condition: String, relation: CollectionRuleRelation) {
              self.init(unsafeResultMap: ["__typename": "CollectionRule", "condition": condition, "relation": relation])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The value that the operator is applied to. For example, `Hats`.
            public var condition: String {
              get {
                return resultMap["condition"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "condition")
              }
            }

            /// The type of operator that the rule is based on. For example, `equals`, `contains`, or `not_equals`.
            public var relation: CollectionRuleRelation {
              get {
                return resultMap["relation"]! as! CollectionRuleRelation
              }
              set {
                resultMap.updateValue(newValue, forKey: "relation")
              }
            }
          }
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class CollectionDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation collectionDelete($input: CollectionDeleteInput!) {
      collectionDelete(input: $input) {
        __typename
        deletedCollectionId
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "collectionDelete"

  public var input: CollectionDeleteInput

  public init(input: CollectionDeleteInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("collectionDelete", arguments: ["input": GraphQLVariable("input")], type: .object(CollectionDelete.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(collectionDelete: CollectionDelete? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "collectionDelete": collectionDelete.flatMap { (value: CollectionDelete) -> ResultMap in value.resultMap }])
    }

    /// Deletes a collection.
    public var collectionDelete: CollectionDelete? {
      get {
        return (resultMap["collectionDelete"] as? ResultMap).flatMap { CollectionDelete(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "collectionDelete")
      }
    }

    public struct CollectionDelete: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["CollectionDeletePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedCollectionId", type: .scalar(GraphQLID.self)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(deletedCollectionId: GraphQLID? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "CollectionDeletePayload", "deletedCollectionId": deletedCollectionId, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The ID of the collection that was deleted. Returns `null` if the collection doesn't exist.
      public var deletedCollectionId: GraphQLID? {
        get {
          return resultMap["deletedCollectionId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "deletedCollectionId")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class CouponsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query coupons {
      codeDiscountNodes(first: 10) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            codeDiscount {
              __typename
              ... on DiscountCodeBasic {
                __typename
                endsAt
                recurringCycleLimit
                startsAt
                title
                createdAt
                codeCount
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "coupons"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["QueryRoot"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("codeDiscountNodes", arguments: ["first": 10], type: .nonNull(.object(CodeDiscountNode.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(codeDiscountNodes: CodeDiscountNode) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "codeDiscountNodes": codeDiscountNodes.resultMap])
    }

    /// List of code discounts. Special fields for query params:
    /// * status: active, expired, scheduled
    /// * discount_type: bogo, fixed_amount, free_shipping, percentage.
    public var codeDiscountNodes: CodeDiscountNode {
      get {
        return CodeDiscountNode(unsafeResultMap: resultMap["codeDiscountNodes"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "codeDiscountNodes")
      }
    }

    public struct CodeDiscountNode: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DiscountCodeNodeConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "DiscountCodeNodeConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of edges.
      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DiscountCodeNodeEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .nonNull(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node) {
          self.init(unsafeResultMap: ["__typename": "DiscountCodeNodeEdge", "node": node.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of DiscountCodeNodeEdge.
        public var node: Node {
          get {
            return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["DiscountCodeNode"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("codeDiscount", type: .nonNull(.object(CodeDiscount.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, codeDiscount: CodeDiscount) {
            self.init(unsafeResultMap: ["__typename": "DiscountCodeNode", "id": id, "codeDiscount": codeDiscount.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A globally-unique identifier.
          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The underlying code discount object.
          public var codeDiscount: CodeDiscount {
            get {
              return CodeDiscount(unsafeResultMap: resultMap["codeDiscount"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "codeDiscount")
            }
          }

          public struct CodeDiscount: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["DiscountCodeApp", "DiscountCodeBasic", "DiscountCodeBxgy", "DiscountCodeFreeShipping"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLTypeCase(
                  variants: ["DiscountCodeBasic": AsDiscountCodeBasic.selections],
                  default: [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  ]
                )
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public static func makeDiscountCodeApp() -> CodeDiscount {
              return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeApp"])
            }

            public static func makeDiscountCodeBxgy() -> CodeDiscount {
              return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeBxgy"])
            }

            public static func makeDiscountCodeFreeShipping() -> CodeDiscount {
              return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeFreeShipping"])
            }

            public static func makeDiscountCodeBasic(endsAt: String? = nil, recurringCycleLimit: Int? = nil, startsAt: String, title: String, createdAt: String, codeCount: Int) -> CodeDiscount {
              return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeBasic", "endsAt": endsAt, "recurringCycleLimit": recurringCycleLimit, "startsAt": startsAt, "title": title, "createdAt": createdAt, "codeCount": codeCount])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var asDiscountCodeBasic: AsDiscountCodeBasic? {
              get {
                if !AsDiscountCodeBasic.possibleTypes.contains(__typename) { return nil }
                return AsDiscountCodeBasic(unsafeResultMap: resultMap)
              }
              set {
                guard let newValue = newValue else { return }
                resultMap = newValue.resultMap
              }
            }

            public struct AsDiscountCodeBasic: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["DiscountCodeBasic"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("endsAt", type: .scalar(String.self)),
                  GraphQLField("recurringCycleLimit", type: .scalar(Int.self)),
                  GraphQLField("startsAt", type: .nonNull(.scalar(String.self))),
                  GraphQLField("title", type: .nonNull(.scalar(String.self))),
                  GraphQLField("createdAt", type: .nonNull(.scalar(String.self))),
                  GraphQLField("codeCount", type: .nonNull(.scalar(Int.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(endsAt: String? = nil, recurringCycleLimit: Int? = nil, startsAt: String, title: String, createdAt: String, codeCount: Int) {
                self.init(unsafeResultMap: ["__typename": "DiscountCodeBasic", "endsAt": endsAt, "recurringCycleLimit": recurringCycleLimit, "startsAt": startsAt, "title": title, "createdAt": createdAt, "codeCount": codeCount])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The date and time when the discount ends. For open-ended discounts, use `null`.
              public var endsAt: String? {
                get {
                  return resultMap["endsAt"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "endsAt")
                }
              }

              /// The number of times a discount applies on recurring purchases (subscriptions).
              public var recurringCycleLimit: Int? {
                get {
                  return resultMap["recurringCycleLimit"] as? Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "recurringCycleLimit")
                }
              }

              /// The date and time when the discount starts.
              public var startsAt: String {
                get {
                  return resultMap["startsAt"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "startsAt")
                }
              }

              /// The title of the discount.
              public var title: String {
                get {
                  return resultMap["title"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "title")
                }
              }

              /// The date and time when the discount was created.
              public var createdAt: String {
                get {
                  return resultMap["createdAt"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "createdAt")
                }
              }

              /// The number of redeem codes for the discount.
              public var codeCount: Int {
                get {
                  return resultMap["codeCount"]! as! Int
                }
                set {
                  resultMap.updateValue(newValue, forKey: "codeCount")
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class DiscountCodeBasicCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation discountCodeBasicCreate($basicCodeDiscount: DiscountCodeBasicInput!) {
      discountCodeBasicCreate(basicCodeDiscount: $basicCodeDiscount) {
        __typename
        codeDiscountNode {
          __typename
          codeDiscount {
            __typename
            ... on DiscountCodeBasic {
              __typename
              title
              codes(first: 10) {
                __typename
                nodes {
                  __typename
                  code
                }
              }
              startsAt
              endsAt
              customerSelection {
                __typename
                ... on DiscountCustomerAll {
                  __typename
                  allCustomers
                }
              }
              customerGets {
                __typename
                value {
                  __typename
                  ... on DiscountPercentage {
                    __typename
                    percentage
                  }
                }
                items {
                  __typename
                  ... on AllDiscountItems {
                    __typename
                    allItems
                  }
                }
              }
              appliesOncePerCustomer
            }
          }
        }
        userErrors {
          __typename
          field
          code
          message
        }
      }
    }
    """

  public let operationName: String = "discountCodeBasicCreate"

  public var basicCodeDiscount: DiscountCodeBasicInput

  public init(basicCodeDiscount: DiscountCodeBasicInput) {
    self.basicCodeDiscount = basicCodeDiscount
  }

  public var variables: GraphQLMap? {
    return ["basicCodeDiscount": basicCodeDiscount]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("discountCodeBasicCreate", arguments: ["basicCodeDiscount": GraphQLVariable("basicCodeDiscount")], type: .object(DiscountCodeBasicCreate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(discountCodeBasicCreate: DiscountCodeBasicCreate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "discountCodeBasicCreate": discountCodeBasicCreate.flatMap { (value: DiscountCodeBasicCreate) -> ResultMap in value.resultMap }])
    }

    /// Creates a basic code discount.
    public var discountCodeBasicCreate: DiscountCodeBasicCreate? {
      get {
        return (resultMap["discountCodeBasicCreate"] as? ResultMap).flatMap { DiscountCodeBasicCreate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "discountCodeBasicCreate")
      }
    }

    public struct DiscountCodeBasicCreate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["DiscountCodeBasicCreatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("codeDiscountNode", type: .object(CodeDiscountNode.selections)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(codeDiscountNode: CodeDiscountNode? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "DiscountCodeBasicCreatePayload", "codeDiscountNode": codeDiscountNode.flatMap { (value: CodeDiscountNode) -> ResultMap in value.resultMap }, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The created code discount.
      public var codeDiscountNode: CodeDiscountNode? {
        get {
          return (resultMap["codeDiscountNode"] as? ResultMap).flatMap { CodeDiscountNode(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "codeDiscountNode")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct CodeDiscountNode: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DiscountCodeNode"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("codeDiscount", type: .nonNull(.object(CodeDiscount.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(codeDiscount: CodeDiscount) {
          self.init(unsafeResultMap: ["__typename": "DiscountCodeNode", "codeDiscount": codeDiscount.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The underlying code discount object.
        public var codeDiscount: CodeDiscount {
          get {
            return CodeDiscount(unsafeResultMap: resultMap["codeDiscount"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "codeDiscount")
          }
        }

        public struct CodeDiscount: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["DiscountCodeApp", "DiscountCodeBasic", "DiscountCodeBxgy", "DiscountCodeFreeShipping"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLTypeCase(
                variants: ["DiscountCodeBasic": AsDiscountCodeBasic.selections],
                default: [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                ]
              )
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public static func makeDiscountCodeApp() -> CodeDiscount {
            return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeApp"])
          }

          public static func makeDiscountCodeBxgy() -> CodeDiscount {
            return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeBxgy"])
          }

          public static func makeDiscountCodeFreeShipping() -> CodeDiscount {
            return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeFreeShipping"])
          }

          public static func makeDiscountCodeBasic(title: String, codes: AsDiscountCodeBasic.Code, startsAt: String, endsAt: String? = nil, customerSelection: AsDiscountCodeBasic.CustomerSelection, customerGets: AsDiscountCodeBasic.CustomerGet, appliesOncePerCustomer: Bool) -> CodeDiscount {
            return CodeDiscount(unsafeResultMap: ["__typename": "DiscountCodeBasic", "title": title, "codes": codes.resultMap, "startsAt": startsAt, "endsAt": endsAt, "customerSelection": customerSelection.resultMap, "customerGets": customerGets.resultMap, "appliesOncePerCustomer": appliesOncePerCustomer])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          public var asDiscountCodeBasic: AsDiscountCodeBasic? {
            get {
              if !AsDiscountCodeBasic.possibleTypes.contains(__typename) { return nil }
              return AsDiscountCodeBasic(unsafeResultMap: resultMap)
            }
            set {
              guard let newValue = newValue else { return }
              resultMap = newValue.resultMap
            }
          }

          public struct AsDiscountCodeBasic: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["DiscountCodeBasic"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("title", type: .nonNull(.scalar(String.self))),
                GraphQLField("codes", arguments: ["first": 10], type: .nonNull(.object(Code.selections))),
                GraphQLField("startsAt", type: .nonNull(.scalar(String.self))),
                GraphQLField("endsAt", type: .scalar(String.self)),
                GraphQLField("customerSelection", type: .nonNull(.object(CustomerSelection.selections))),
                GraphQLField("customerGets", type: .nonNull(.object(CustomerGet.selections))),
                GraphQLField("appliesOncePerCustomer", type: .nonNull(.scalar(Bool.self))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(title: String, codes: Code, startsAt: String, endsAt: String? = nil, customerSelection: CustomerSelection, customerGets: CustomerGet, appliesOncePerCustomer: Bool) {
              self.init(unsafeResultMap: ["__typename": "DiscountCodeBasic", "title": title, "codes": codes.resultMap, "startsAt": startsAt, "endsAt": endsAt, "customerSelection": customerSelection.resultMap, "customerGets": customerGets.resultMap, "appliesOncePerCustomer": appliesOncePerCustomer])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The title of the discount.
            public var title: String {
              get {
                return resultMap["title"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "title")
              }
            }

            /// A list of redeem codes for the discount.
            public var codes: Code {
              get {
                return Code(unsafeResultMap: resultMap["codes"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "codes")
              }
            }

            /// The date and time when the discount starts.
            public var startsAt: String {
              get {
                return resultMap["startsAt"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "startsAt")
              }
            }

            /// The date and time when the discount ends. For open-ended discounts, use `null`.
            public var endsAt: String? {
              get {
                return resultMap["endsAt"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "endsAt")
              }
            }

            /// The customers that can use the discount.
            public var customerSelection: CustomerSelection {
              get {
                return CustomerSelection(unsafeResultMap: resultMap["customerSelection"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "customerSelection")
              }
            }

            /// The qualifying items in an order, the quantity of each one, and the total value of the discount.
            public var customerGets: CustomerGet {
              get {
                return CustomerGet(unsafeResultMap: resultMap["customerGets"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "customerGets")
              }
            }

            /// Whether the discount can be applied only once per customer.
            public var appliesOncePerCustomer: Bool {
              get {
                return resultMap["appliesOncePerCustomer"]! as! Bool
              }
              set {
                resultMap.updateValue(newValue, forKey: "appliesOncePerCustomer")
              }
            }

            public struct Code: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["DiscountRedeemCodeConnection"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("nodes", type: .nonNull(.list(.nonNull(.object(Node.selections))))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(nodes: [Node]) {
                self.init(unsafeResultMap: ["__typename": "DiscountRedeemCodeConnection", "nodes": nodes.map { (value: Node) -> ResultMap in value.resultMap }])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// A list of the nodes contained in DiscountRedeemCodeEdge.
              public var nodes: [Node] {
                get {
                  return (resultMap["nodes"] as! [ResultMap]).map { (value: ResultMap) -> Node in Node(unsafeResultMap: value) }
                }
                set {
                  resultMap.updateValue(newValue.map { (value: Node) -> ResultMap in value.resultMap }, forKey: "nodes")
                }
              }

              public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["DiscountRedeemCode"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("code", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(code: String) {
                  self.init(unsafeResultMap: ["__typename": "DiscountRedeemCode", "code": code])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// The code that a customer can use at checkout to receive a discount.
                public var code: String {
                  get {
                    return resultMap["code"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "code")
                  }
                }
              }
            }

            public struct CustomerSelection: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["DiscountCustomerAll", "DiscountCustomerSegments", "DiscountCustomers"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLTypeCase(
                    variants: ["DiscountCustomerAll": AsDiscountCustomerAll.selections],
                    default: [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    ]
                  )
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public static func makeDiscountCustomerSegments() -> CustomerSelection {
                return CustomerSelection(unsafeResultMap: ["__typename": "DiscountCustomerSegments"])
              }

              public static func makeDiscountCustomers() -> CustomerSelection {
                return CustomerSelection(unsafeResultMap: ["__typename": "DiscountCustomers"])
              }

              public static func makeDiscountCustomerAll(allCustomers: Bool) -> CustomerSelection {
                return CustomerSelection(unsafeResultMap: ["__typename": "DiscountCustomerAll", "allCustomers": allCustomers])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var asDiscountCustomerAll: AsDiscountCustomerAll? {
                get {
                  if !AsDiscountCustomerAll.possibleTypes.contains(__typename) { return nil }
                  return AsDiscountCustomerAll(unsafeResultMap: resultMap)
                }
                set {
                  guard let newValue = newValue else { return }
                  resultMap = newValue.resultMap
                }
              }

              public struct AsDiscountCustomerAll: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["DiscountCustomerAll"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("allCustomers", type: .nonNull(.scalar(Bool.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(allCustomers: Bool) {
                  self.init(unsafeResultMap: ["__typename": "DiscountCustomerAll", "allCustomers": allCustomers])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// Whether the discount can be applied by all customers. This value is always `true`.
                public var allCustomers: Bool {
                  get {
                    return resultMap["allCustomers"]! as! Bool
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "allCustomers")
                  }
                }
              }
            }

            public struct CustomerGet: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["DiscountCustomerGets"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("value", type: .nonNull(.object(Value.selections))),
                  GraphQLField("items", type: .nonNull(.object(Item.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(value: Value, items: Item) {
                self.init(unsafeResultMap: ["__typename": "DiscountCustomerGets", "value": value.resultMap, "items": items.resultMap])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// Entitled quantity and the discount value.
              public var value: Value {
                get {
                  return Value(unsafeResultMap: resultMap["value"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "value")
                }
              }

              /// The items to which the discount applies.
              public var items: Item {
                get {
                  return Item(unsafeResultMap: resultMap["items"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "items")
                }
              }

              public struct Value: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["DiscountAmount", "DiscountOnQuantity", "DiscountPercentage"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLTypeCase(
                      variants: ["DiscountPercentage": AsDiscountPercentage.selections],
                      default: [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      ]
                    )
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public static func makeDiscountAmount() -> Value {
                  return Value(unsafeResultMap: ["__typename": "DiscountAmount"])
                }

                public static func makeDiscountOnQuantity() -> Value {
                  return Value(unsafeResultMap: ["__typename": "DiscountOnQuantity"])
                }

                public static func makeDiscountPercentage(percentage: Double) -> Value {
                  return Value(unsafeResultMap: ["__typename": "DiscountPercentage", "percentage": percentage])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var asDiscountPercentage: AsDiscountPercentage? {
                  get {
                    if !AsDiscountPercentage.possibleTypes.contains(__typename) { return nil }
                    return AsDiscountPercentage(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap = newValue.resultMap
                  }
                }

                public struct AsDiscountPercentage: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["DiscountPercentage"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("percentage", type: .nonNull(.scalar(Double.self))),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(percentage: Double) {
                    self.init(unsafeResultMap: ["__typename": "DiscountPercentage", "percentage": percentage])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// The percentage value of the discount.
                  public var percentage: Double {
                    get {
                      return resultMap["percentage"]! as! Double
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "percentage")
                    }
                  }
                }
              }

              public struct Item: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["AllDiscountItems", "DiscountCollections", "DiscountProducts"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLTypeCase(
                      variants: ["AllDiscountItems": AsAllDiscountItems.selections],
                      default: [
                        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      ]
                    )
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public static func makeDiscountCollections() -> Item {
                  return Item(unsafeResultMap: ["__typename": "DiscountCollections"])
                }

                public static func makeDiscountProducts() -> Item {
                  return Item(unsafeResultMap: ["__typename": "DiscountProducts"])
                }

                public static func makeAllDiscountItems(allItems: Bool) -> Item {
                  return Item(unsafeResultMap: ["__typename": "AllDiscountItems", "allItems": allItems])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                public var asAllDiscountItems: AsAllDiscountItems? {
                  get {
                    if !AsAllDiscountItems.possibleTypes.contains(__typename) { return nil }
                    return AsAllDiscountItems(unsafeResultMap: resultMap)
                  }
                  set {
                    guard let newValue = newValue else { return }
                    resultMap = newValue.resultMap
                  }
                }

                public struct AsAllDiscountItems: GraphQLSelectionSet {
                  public static let possibleTypes: [String] = ["AllDiscountItems"]

                  public static var selections: [GraphQLSelection] {
                    return [
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                      GraphQLField("allItems", type: .nonNull(.scalar(Bool.self))),
                    ]
                  }

                  public private(set) var resultMap: ResultMap

                  public init(unsafeResultMap: ResultMap) {
                    self.resultMap = unsafeResultMap
                  }

                  public init(allItems: Bool) {
                    self.init(unsafeResultMap: ["__typename": "AllDiscountItems", "allItems": allItems])
                  }

                  public var __typename: String {
                    get {
                      return resultMap["__typename"]! as! String
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "__typename")
                    }
                  }

                  /// Whether all items are eligible for the discount. This value always returns `true`.
                  public var allItems: Bool {
                    get {
                      return resultMap["allItems"]! as! Bool
                    }
                    set {
                      resultMap.updateValue(newValue, forKey: "allItems")
                    }
                  }
                }
              }
            }
          }
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["DiscountUserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("code", type: .scalar(DiscountErrorCode.self)),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, code: DiscountErrorCode? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "DiscountUserError", "field": field, "code": code, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error code.
        public var code: DiscountErrorCode? {
          get {
            return resultMap["code"] as? DiscountErrorCode
          }
          set {
            resultMap.updateValue(newValue, forKey: "code")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class ProductsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query products {
      products(first: 30, reverse: true) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            title
            bodyHtml
            descriptionHtml
            productType
            variants(first: 30) {
              __typename
              edges {
                __typename
                node {
                  __typename
                  price
                  title
                }
              }
            }
            status
            vendor
          }
        }
      }
    }
    """

  public let operationName: String = "products"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["QueryRoot"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("products", arguments: ["first": 30, "reverse": true], type: .nonNull(.object(Product.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(products: Product) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "products": products.resultMap])
    }

    /// List of products.
    public var products: Product {
      get {
        return Product(unsafeResultMap: resultMap["products"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "products")
      }
    }

    public struct Product: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProductConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "ProductConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of edges.
      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ProductEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .nonNull(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node) {
          self.init(unsafeResultMap: ["__typename": "ProductEdge", "node": node.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of ProductEdge.
        public var node: Node {
          get {
            return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Product"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("title", type: .nonNull(.scalar(String.self))),
              GraphQLField("bodyHtml", type: .scalar(String.self)),
              GraphQLField("descriptionHtml", type: .nonNull(.scalar(String.self))),
              GraphQLField("productType", type: .nonNull(.scalar(String.self))),
              GraphQLField("variants", arguments: ["first": 30], type: .nonNull(.object(Variant.selections))),
              GraphQLField("status", type: .nonNull(.scalar(ProductStatus.self))),
              GraphQLField("vendor", type: .nonNull(.scalar(String.self))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, title: String, bodyHtml: String? = nil, descriptionHtml: String, productType: String, variants: Variant, status: ProductStatus, vendor: String) {
            self.init(unsafeResultMap: ["__typename": "Product", "id": id, "title": title, "bodyHtml": bodyHtml, "descriptionHtml": descriptionHtml, "productType": productType, "variants": variants.resultMap, "status": status, "vendor": vendor])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A globally-unique identifier.
          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The title of the product.
          public var title: String {
            get {
              return resultMap["title"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "title")
            }
          }

          /// The description of the product, complete with HTML formatting.
          @available(*, deprecated, message: "Use `descriptionHtml` instead.")
          public var bodyHtml: String? {
            get {
              return resultMap["bodyHtml"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "bodyHtml")
            }
          }

          /// The description of the product, complete with HTML formatting.
          public var descriptionHtml: String {
            get {
              return resultMap["descriptionHtml"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "descriptionHtml")
            }
          }

          /// The product type specified by the merchant.
          public var productType: String {
            get {
              return resultMap["productType"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "productType")
            }
          }

          /// A list of variants associated with the product.
          public var variants: Variant {
            get {
              return Variant(unsafeResultMap: resultMap["variants"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "variants")
            }
          }

          /// The product status. This controls visibility across all channels.
          public var status: ProductStatus {
            get {
              return resultMap["status"]! as! ProductStatus
            }
            set {
              resultMap.updateValue(newValue, forKey: "status")
            }
          }

          /// The name of the product's vendor.
          public var vendor: String {
            get {
              return resultMap["vendor"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "vendor")
            }
          }

          public struct Variant: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductVariantConnection"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(edges: [Edge]) {
              self.init(unsafeResultMap: ["__typename": "ProductVariantConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// A list of edges.
            public var edges: [Edge] {
              get {
                return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
              }
            }

            public struct Edge: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ProductVariantEdge"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("node", type: .nonNull(.object(Node.selections))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(node: Node) {
                self.init(unsafeResultMap: ["__typename": "ProductVariantEdge", "node": node.resultMap])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The item at the end of ProductVariantEdge.
              public var node: Node {
                get {
                  return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "node")
                }
              }

              public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["ProductVariant"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("price", type: .nonNull(.scalar(String.self))),
                    GraphQLField("title", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(price: String, title: String) {
                  self.init(unsafeResultMap: ["__typename": "ProductVariant", "price": price, "title": title])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// The price of the product variant in the default shop currency.
                public var price: String {
                  get {
                    return resultMap["price"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "price")
                  }
                }

                /// The title of the product variant.
                public var title: String {
                  get {
                    return resultMap["title"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "title")
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class ImagesQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query images {
      products(first: 30, reverse: true) {
        __typename
        edges {
          __typename
          node {
            __typename
            id
            images(first: 30) {
              __typename
              edges {
                __typename
                node {
                  __typename
                  id
                  src
                  url
                }
                cursor
              }
            }
          }
        }
      }
    }
    """

  public let operationName: String = "images"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["QueryRoot"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("products", arguments: ["first": 30, "reverse": true], type: .nonNull(.object(Product.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(products: Product) {
      self.init(unsafeResultMap: ["__typename": "QueryRoot", "products": products.resultMap])
    }

    /// List of products.
    public var products: Product {
      get {
        return Product(unsafeResultMap: resultMap["products"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "products")
      }
    }

    public struct Product: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProductConnection"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge]) {
        self.init(unsafeResultMap: ["__typename": "ProductConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// A list of edges.
      public var edges: [Edge] {
        get {
          return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["ProductEdge"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("node", type: .nonNull(.object(Node.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node) {
          self.init(unsafeResultMap: ["__typename": "ProductEdge", "node": node.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of ProductEdge.
        public var node: Node {
          get {
            return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["Product"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
              GraphQLField("images", arguments: ["first": 30], type: .nonNull(.object(Image.selections))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, images: Image) {
            self.init(unsafeResultMap: ["__typename": "Product", "id": id, "images": images.resultMap])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A globally-unique identifier.
          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          /// The images associated with the product.
          public var images: Image {
            get {
              return Image(unsafeResultMap: resultMap["images"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "images")
            }
          }

          public struct Image: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ImageConnection"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(edges: [Edge]) {
              self.init(unsafeResultMap: ["__typename": "ImageConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// A list of edges.
            public var edges: [Edge] {
              get {
                return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
              }
              set {
                resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
              }
            }

            public struct Edge: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ImageEdge"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("node", type: .nonNull(.object(Node.selections))),
                  GraphQLField("cursor", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(node: Node, cursor: String) {
                self.init(unsafeResultMap: ["__typename": "ImageEdge", "node": node.resultMap, "cursor": cursor])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The item at the end of ImageEdge.
              public var node: Node {
                get {
                  return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
                }
                set {
                  resultMap.updateValue(newValue.resultMap, forKey: "node")
                }
              }

              /// A cursor for use in pagination.
              public var cursor: String {
                get {
                  return resultMap["cursor"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "cursor")
                }
              }

              public struct Node: GraphQLSelectionSet {
                public static let possibleTypes: [String] = ["Image"]

                public static var selections: [GraphQLSelection] {
                  return [
                    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                    GraphQLField("id", type: .scalar(GraphQLID.self)),
                    GraphQLField("src", type: .nonNull(.scalar(String.self))),
                    GraphQLField("url", type: .nonNull(.scalar(String.self))),
                  ]
                }

                public private(set) var resultMap: ResultMap

                public init(unsafeResultMap: ResultMap) {
                  self.resultMap = unsafeResultMap
                }

                public init(id: GraphQLID? = nil, src: String, url: String) {
                  self.init(unsafeResultMap: ["__typename": "Image", "id": id, "src": src, "url": url])
                }

                public var __typename: String {
                  get {
                    return resultMap["__typename"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "__typename")
                  }
                }

                /// A unique identifier for the image.
                public var id: GraphQLID? {
                  get {
                    return resultMap["id"] as? GraphQLID
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "id")
                  }
                }

                /// The location of the image as a URL.
                @available(*, deprecated, message: "Use `url` instead.")
                public var src: String {
                  get {
                    return resultMap["src"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "src")
                  }
                }

                /// The location of the image as a URL.
                /// 
                /// If no transform options are specified, then the original image will be preserved including any pre-applied transforms.
                /// 
                /// All transformation options are considered "best-effort". Any transformation that the original image type doesn't support will be ignored.
                /// 
                /// If you need multiple variations of the same image, then you can use [GraphQL aliases](https://graphql.org/learn/queries/#aliases).
                public var url: String {
                  get {
                    return resultMap["url"]! as! String
                  }
                  set {
                    resultMap.updateValue(newValue, forKey: "url")
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class ProductUpdateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation productUpdate($input: ProductInput!) {
      productUpdate(input: $input) {
        __typename
        product {
          __typename
          id
          productType
          tags
          title
          bodyHtml
          descriptionHtml
          vendor
          status
          variants(first: 30) {
            __typename
            edges {
              __typename
              node {
                __typename
                price
                title
              }
            }
          }
          images(first: 30) {
            __typename
            edges {
              __typename
              node {
                __typename
                src
              }
            }
          }
        }
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "productUpdate"

  public var input: ProductInput

  public init(input: ProductInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("productUpdate", arguments: ["input": GraphQLVariable("input")], type: .object(ProductUpdate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(productUpdate: ProductUpdate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "productUpdate": productUpdate.flatMap { (value: ProductUpdate) -> ResultMap in value.resultMap }])
    }

    /// Updates a product. If you update a product and only include some variants in the update,
    /// then any variants not included will be deleted. To safely manage variants without the risk of
    /// deleting excluded variants, use
    /// [productVariantsBulkUpdate](https://shopify.dev/api/admin-graphql/latest/mutations/productvariantsbulkupdate).
    /// If you want to update a single variant, then use
    /// [productVariantUpdate](https://shopify.dev/api/admin-graphql/latest/mutations/productvariantupdate).
    public var productUpdate: ProductUpdate? {
      get {
        return (resultMap["productUpdate"] as? ResultMap).flatMap { ProductUpdate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "productUpdate")
      }
    }

    public struct ProductUpdate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProductUpdatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("product", type: .object(Product.selections)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(product: Product? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "ProductUpdatePayload", "product": product.flatMap { (value: Product) -> ResultMap in value.resultMap }, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The updated product object.
      public var product: Product? {
        get {
          return (resultMap["product"] as? ResultMap).flatMap { Product(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "product")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct Product: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Product"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("productType", type: .nonNull(.scalar(String.self))),
            GraphQLField("tags", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("bodyHtml", type: .scalar(String.self)),
            GraphQLField("descriptionHtml", type: .nonNull(.scalar(String.self))),
            GraphQLField("vendor", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .nonNull(.scalar(ProductStatus.self))),
            GraphQLField("variants", arguments: ["first": 30], type: .nonNull(.object(Variant.selections))),
            GraphQLField("images", arguments: ["first": 30], type: .nonNull(.object(Image.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, productType: String, tags: [String], title: String, bodyHtml: String? = nil, descriptionHtml: String, vendor: String, status: ProductStatus, variants: Variant, images: Image) {
          self.init(unsafeResultMap: ["__typename": "Product", "id": id, "productType": productType, "tags": tags, "title": title, "bodyHtml": bodyHtml, "descriptionHtml": descriptionHtml, "vendor": vendor, "status": status, "variants": variants.resultMap, "images": images.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A globally-unique identifier.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The product type specified by the merchant.
        public var productType: String {
          get {
            return resultMap["productType"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "productType")
          }
        }

        /// A comma separated list of tags associated with the product. Updating `tags` overwrites
        /// any existing tags that were previously added to the product. To add new tags without overwriting
        /// existing tags, use the [tagsAdd](https://shopify.dev/api/admin-graphql/latest/mutations/tagsadd)
        /// mutation.
        public var tags: [String] {
          get {
            return resultMap["tags"]! as! [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "tags")
          }
        }

        /// The title of the product.
        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        /// The description of the product, complete with HTML formatting.
        @available(*, deprecated, message: "Use `descriptionHtml` instead.")
        public var bodyHtml: String? {
          get {
            return resultMap["bodyHtml"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "bodyHtml")
          }
        }

        /// The description of the product, complete with HTML formatting.
        public var descriptionHtml: String {
          get {
            return resultMap["descriptionHtml"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descriptionHtml")
          }
        }

        /// The name of the product's vendor.
        public var vendor: String {
          get {
            return resultMap["vendor"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "vendor")
          }
        }

        /// The product status. This controls visibility across all channels.
        public var status: ProductStatus {
          get {
            return resultMap["status"]! as! ProductStatus
          }
          set {
            resultMap.updateValue(newValue, forKey: "status")
          }
        }

        /// A list of variants associated with the product.
        public var variants: Variant {
          get {
            return Variant(unsafeResultMap: resultMap["variants"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "variants")
          }
        }

        /// The images associated with the product.
        public var images: Image {
          get {
            return Image(unsafeResultMap: resultMap["images"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "images")
          }
        }

        public struct Variant: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ProductVariantConnection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(edges: [Edge]) {
            self.init(unsafeResultMap: ["__typename": "ProductVariantConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A list of edges.
          public var edges: [Edge] {
            get {
              return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
            }
          }

          public struct Edge: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductVariantEdge"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("node", type: .nonNull(.object(Node.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(node: Node) {
              self.init(unsafeResultMap: ["__typename": "ProductVariantEdge", "node": node.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The item at the end of ProductVariantEdge.
            public var node: Node {
              get {
                return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "node")
              }
            }

            public struct Node: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ProductVariant"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("price", type: .nonNull(.scalar(String.self))),
                  GraphQLField("title", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(price: String, title: String) {
                self.init(unsafeResultMap: ["__typename": "ProductVariant", "price": price, "title": title])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The price of the product variant in the default shop currency.
              public var price: String {
                get {
                  return resultMap["price"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "price")
                }
              }

              /// The title of the product variant.
              public var title: String {
                get {
                  return resultMap["title"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "title")
                }
              }
            }
          }
        }

        public struct Image: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ImageConnection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(edges: [Edge]) {
            self.init(unsafeResultMap: ["__typename": "ImageConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A list of edges.
          public var edges: [Edge] {
            get {
              return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
            }
          }

          public struct Edge: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ImageEdge"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("node", type: .nonNull(.object(Node.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(node: Node) {
              self.init(unsafeResultMap: ["__typename": "ImageEdge", "node": node.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The item at the end of ImageEdge.
            public var node: Node {
              get {
                return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "node")
              }
            }

            public struct Node: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["Image"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("src", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(src: String) {
                self.init(unsafeResultMap: ["__typename": "Image", "src": src])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The location of the image as a URL.
              @available(*, deprecated, message: "Use `url` instead.")
              public var src: String {
                get {
                  return resultMap["src"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "src")
                }
              }
            }
          }
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class ProductCreateMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation productCreate($input: ProductInput!) {
      productCreate(input: $input) {
        __typename
        product {
          __typename
          id
          productType
          tags
          title
          bodyHtml
          vendor
          status
          descriptionHtml
          variants(first: 30) {
            __typename
            edges {
              __typename
              node {
                __typename
                price
                title
              }
            }
          }
          images(first: 30) {
            __typename
            edges {
              __typename
              node {
                __typename
                src
              }
            }
          }
        }
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "productCreate"

  public var input: ProductInput

  public init(input: ProductInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("productCreate", arguments: ["input": GraphQLVariable("input")], type: .object(ProductCreate.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(productCreate: ProductCreate? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "productCreate": productCreate.flatMap { (value: ProductCreate) -> ResultMap in value.resultMap }])
    }

    /// Creates a product.
    /// 
    /// If you need to create a product with many
    /// [variants](https://shopify.dev/api/admin-graphql/latest/input-objects/ProductVariantInput)
    /// that are active at several
    /// [locations](https://shopify.dev/api/admin-graphql/latest/input-objects/InventoryLevelInput),
    /// especially with a lot of
    /// [collections](https://shopify.dev/api/admin-graphql/latest/mutations/productCreate#field-productinput-collectionstojoin)
    /// and
    /// [tags](https://shopify.dev/api/admin-graphql/latest/mutations/productCreate#field-productinput-tags),
    /// then you should first create the product with just the variants.
    /// 
    /// After the product is created, you can activate the variants at locations
    /// and add the other related objects to the product. This reduces the size of each mutation and increases the likelihood that it will
    /// complete before the operation times out.
    /// 
    /// The following example shows how you might break up product creation and object association into multiple steps:
    /// 
    /// 1. Create the product with variants. Don't specify any tags or collections on the product, and don't specify
    /// [inventory quantities](https://shopify.dev/api/admin-graphql/latest/input-objects/ProductVariantInput#field-productvariantinput-inventoryquantities)
    /// for each variant.
    /// 
    /// 2. After the product is created, add tags to the product using the
    /// [tagsAdd](https://shopify.dev/api/admin-graphql/latest/mutations/tagsAdd) mutation, and add collections using the
    /// [collectionsAddProducts](https://shopify.dev/api/admin-graphql/latest/mutations/collectionAddProducts) mutation.
    /// 
    /// 3. Use the [inventoryBulkToggleActivation](https://shopify.dev/api/admin-graphql/latest/mutations/inventoryBulkToggleActivation) mutation
    /// on each [inventory item](https://shopify.dev/api/admin-graphql/latest/objects/InventoryItem) to activate it at the appropriate locations.
    /// 
    /// 4. After activating the variants at the locations, adjust inventory quantities at each location using the
    /// [inventoryBulkAdjustQuantityAtLocation](https://shopify.dev/api/admin-graphql/latest/mutations/inventoryBulkAdjustQuantityAtLocation) mutation.
    public var productCreate: ProductCreate? {
      get {
        return (resultMap["productCreate"] as? ResultMap).flatMap { ProductCreate(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "productCreate")
      }
    }

    public struct ProductCreate: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProductCreatePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("product", type: .object(Product.selections)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(product: Product? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "ProductCreatePayload", "product": product.flatMap { (value: Product) -> ResultMap in value.resultMap }, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The product object.
      public var product: Product? {
        get {
          return (resultMap["product"] as? ResultMap).flatMap { Product(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "product")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct Product: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["Product"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("productType", type: .nonNull(.scalar(String.self))),
            GraphQLField("tags", type: .nonNull(.list(.nonNull(.scalar(String.self))))),
            GraphQLField("title", type: .nonNull(.scalar(String.self))),
            GraphQLField("bodyHtml", type: .scalar(String.self)),
            GraphQLField("vendor", type: .nonNull(.scalar(String.self))),
            GraphQLField("status", type: .nonNull(.scalar(ProductStatus.self))),
            GraphQLField("descriptionHtml", type: .nonNull(.scalar(String.self))),
            GraphQLField("variants", arguments: ["first": 30], type: .nonNull(.object(Variant.selections))),
            GraphQLField("images", arguments: ["first": 30], type: .nonNull(.object(Image.selections))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, productType: String, tags: [String], title: String, bodyHtml: String? = nil, vendor: String, status: ProductStatus, descriptionHtml: String, variants: Variant, images: Image) {
          self.init(unsafeResultMap: ["__typename": "Product", "id": id, "productType": productType, "tags": tags, "title": title, "bodyHtml": bodyHtml, "vendor": vendor, "status": status, "descriptionHtml": descriptionHtml, "variants": variants.resultMap, "images": images.resultMap])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// A globally-unique identifier.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The product type specified by the merchant.
        public var productType: String {
          get {
            return resultMap["productType"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "productType")
          }
        }

        /// A comma separated list of tags associated with the product. Updating `tags` overwrites
        /// any existing tags that were previously added to the product. To add new tags without overwriting
        /// existing tags, use the [tagsAdd](https://shopify.dev/api/admin-graphql/latest/mutations/tagsadd)
        /// mutation.
        public var tags: [String] {
          get {
            return resultMap["tags"]! as! [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "tags")
          }
        }

        /// The title of the product.
        public var title: String {
          get {
            return resultMap["title"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        /// The description of the product, complete with HTML formatting.
        @available(*, deprecated, message: "Use `descriptionHtml` instead.")
        public var bodyHtml: String? {
          get {
            return resultMap["bodyHtml"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "bodyHtml")
          }
        }

        /// The name of the product's vendor.
        public var vendor: String {
          get {
            return resultMap["vendor"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "vendor")
          }
        }

        /// The product status. This controls visibility across all channels.
        public var status: ProductStatus {
          get {
            return resultMap["status"]! as! ProductStatus
          }
          set {
            resultMap.updateValue(newValue, forKey: "status")
          }
        }

        /// The description of the product, complete with HTML formatting.
        public var descriptionHtml: String {
          get {
            return resultMap["descriptionHtml"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "descriptionHtml")
          }
        }

        /// A list of variants associated with the product.
        public var variants: Variant {
          get {
            return Variant(unsafeResultMap: resultMap["variants"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "variants")
          }
        }

        /// The images associated with the product.
        public var images: Image {
          get {
            return Image(unsafeResultMap: resultMap["images"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "images")
          }
        }

        public struct Variant: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ProductVariantConnection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(edges: [Edge]) {
            self.init(unsafeResultMap: ["__typename": "ProductVariantConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A list of edges.
          public var edges: [Edge] {
            get {
              return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
            }
          }

          public struct Edge: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ProductVariantEdge"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("node", type: .nonNull(.object(Node.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(node: Node) {
              self.init(unsafeResultMap: ["__typename": "ProductVariantEdge", "node": node.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The item at the end of ProductVariantEdge.
            public var node: Node {
              get {
                return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "node")
              }
            }

            public struct Node: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["ProductVariant"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("price", type: .nonNull(.scalar(String.self))),
                  GraphQLField("title", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(price: String, title: String) {
                self.init(unsafeResultMap: ["__typename": "ProductVariant", "price": price, "title": title])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The price of the product variant in the default shop currency.
              public var price: String {
                get {
                  return resultMap["price"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "price")
                }
              }

              /// The title of the product variant.
              public var title: String {
                get {
                  return resultMap["title"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "title")
                }
              }
            }
          }
        }

        public struct Image: GraphQLSelectionSet {
          public static let possibleTypes: [String] = ["ImageConnection"]

          public static var selections: [GraphQLSelection] {
            return [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("edges", type: .nonNull(.list(.nonNull(.object(Edge.selections))))),
            ]
          }

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(edges: [Edge]) {
            self.init(unsafeResultMap: ["__typename": "ImageConnection", "edges": edges.map { (value: Edge) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// A list of edges.
          public var edges: [Edge] {
            get {
              return (resultMap["edges"] as! [ResultMap]).map { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) }
            }
            set {
              resultMap.updateValue(newValue.map { (value: Edge) -> ResultMap in value.resultMap }, forKey: "edges")
            }
          }

          public struct Edge: GraphQLSelectionSet {
            public static let possibleTypes: [String] = ["ImageEdge"]

            public static var selections: [GraphQLSelection] {
              return [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("node", type: .nonNull(.object(Node.selections))),
              ]
            }

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(node: Node) {
              self.init(unsafeResultMap: ["__typename": "ImageEdge", "node": node.resultMap])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The item at the end of ImageEdge.
            public var node: Node {
              get {
                return Node(unsafeResultMap: resultMap["node"]! as! ResultMap)
              }
              set {
                resultMap.updateValue(newValue.resultMap, forKey: "node")
              }
            }

            public struct Node: GraphQLSelectionSet {
              public static let possibleTypes: [String] = ["Image"]

              public static var selections: [GraphQLSelection] {
                return [
                  GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                  GraphQLField("src", type: .nonNull(.scalar(String.self))),
                ]
              }

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(src: String) {
                self.init(unsafeResultMap: ["__typename": "Image", "src": src])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              /// The location of the image as a URL.
              @available(*, deprecated, message: "Use `url` instead.")
              public var src: String {
                get {
                  return resultMap["src"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "src")
                }
              }
            }
          }
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}

public final class ProductDeleteMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation productDelete($input: ProductDeleteInput!) {
      productDelete(input: $input) {
        __typename
        deletedProductId
        userErrors {
          __typename
          field
          message
        }
      }
    }
    """

  public let operationName: String = "productDelete"

  public var input: ProductDeleteInput

  public init(input: ProductDeleteInput) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("productDelete", arguments: ["input": GraphQLVariable("input")], type: .object(ProductDelete.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(productDelete: ProductDelete? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "productDelete": productDelete.flatMap { (value: ProductDelete) -> ResultMap in value.resultMap }])
    }

    /// Deletes a product, including all associated variants and media.
    /// 
    /// As of API version `2023-01`, if you need to delete a large product, such as one that has many
    /// [variants](https://shopify.dev/api/admin-graphql/latest/input-objects/ProductVariantInput)
    /// that are active at several
    /// [locations](https://shopify.dev/api/admin-graphql/latest/input-objects/InventoryLevelInput),
    /// you may encounter timeout errors. To avoid these timeout errors, you can instead use the asynchronous
    /// [ProductDeleteAsync](https://shopify.dev/api/admin-graphql/latest/mutations/productDeleteAsync)
    /// mutation.
    public var productDelete: ProductDelete? {
      get {
        return (resultMap["productDelete"] as? ResultMap).flatMap { ProductDelete(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "productDelete")
      }
    }

    public struct ProductDelete: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["ProductDeletePayload"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("deletedProductId", type: .scalar(GraphQLID.self)),
          GraphQLField("userErrors", type: .nonNull(.list(.nonNull(.object(UserError.selections))))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(deletedProductId: GraphQLID? = nil, userErrors: [UserError]) {
        self.init(unsafeResultMap: ["__typename": "ProductDeletePayload", "deletedProductId": deletedProductId, "userErrors": userErrors.map { (value: UserError) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The ID of the deleted product.
      public var deletedProductId: GraphQLID? {
        get {
          return resultMap["deletedProductId"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "deletedProductId")
        }
      }

      /// The list of errors that occurred from executing the mutation.
      public var userErrors: [UserError] {
        get {
          return (resultMap["userErrors"] as! [ResultMap]).map { (value: ResultMap) -> UserError in UserError(unsafeResultMap: value) }
        }
        set {
          resultMap.updateValue(newValue.map { (value: UserError) -> ResultMap in value.resultMap }, forKey: "userErrors")
        }
      }

      public struct UserError: GraphQLSelectionSet {
        public static let possibleTypes: [String] = ["UserError"]

        public static var selections: [GraphQLSelection] {
          return [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("field", type: .list(.nonNull(.scalar(String.self)))),
            GraphQLField("message", type: .nonNull(.scalar(String.self))),
          ]
        }

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(field: [String]? = nil, message: String) {
          self.init(unsafeResultMap: ["__typename": "UserError", "field": field, "message": message])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The path to the input field that caused the error.
        public var field: [String]? {
          get {
            return resultMap["field"] as? [String]
          }
          set {
            resultMap.updateValue(newValue, forKey: "field")
          }
        }

        /// The error message.
        public var message: String {
          get {
            return resultMap["message"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "message")
          }
        }
      }
    }
  }
}
