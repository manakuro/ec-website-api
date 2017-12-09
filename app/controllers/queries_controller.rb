class QueriesController < ApplicationController
  def create
    variables = ensure_hash(params[:variables])
    query = params[:query]
    operation_name = params[:operationName]
    context = {}
    result = GraphqlSchema.execute(query, variables: variables, context: context, operation_name: operation_name)
    render json: result
  end

  private

  def ensure_hash(param)
    case param
      when String
        if param.present?
          ensure_hash(JSON.parse(param))
        else
          {}
        end
      when Hash, ActionController::Parameters
        param
      when nil
        {}
      else
        raise ArgumentError, "Unexpected parameter: #{param}"
    end
  end
end
