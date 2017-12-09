Types::ProductType = GraphQL::ObjectType.define do
  name 'Product'

  field :id, !types.ID, 'ID', property: :id
  field :img, !types.String, '画像', property: :img
  field :title, !types.String, 'タイトル', property: :title
  field :description, !types.String, '詳細', property: :description
  field :price, !types.String, '価格', property: :price
end