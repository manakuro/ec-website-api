class Resolvers::CreateProduct < GraphQL::Function
  argument :description, !types.String
  argument :img, !types.String
  argument :title, !types.String
  argument :price, !types.String

  type Types::ProductType

  def call(_obj, args, _ctx)
    Product.create!(
        description: args[:description],
        img: args[:img],
        title: args[:title],
        price: args[:price],
    )
  end
end

