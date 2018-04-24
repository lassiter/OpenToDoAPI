class ItemSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :task, :due, :expires, :selfdestruct, :completed

  # def due
  #   object.due.strftime('%B %d, %Y') unless nil
  # end
  # def expires
  #   object.expires.strftime('%B %d, %Y') unless nil
  # end

end
