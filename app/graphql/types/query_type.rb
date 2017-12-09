Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :products, !types[Types::ProductType] do
    argument :category, types.Int
    resolve -> (obj, args, ctx) {
      if args[:category]
        Product.where(category_id: args[:category])
      else
        Product.all
      end
    }
  end

  field :categories, !types[Types::CategoryType] do
    resolve -> (obj, args, ctx) {
      Category.all
    }
  end
end
