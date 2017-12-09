Types::CategoryType = GraphQL::ObjectType.define do
  name 'Category'

  field :id, !types.ID, 'ID', property: :id
  field :parentId, !types.ID, 'Parent ID', property: :parent_id
  field :name, !types.String, 'カテゴリ名', property: :name
end