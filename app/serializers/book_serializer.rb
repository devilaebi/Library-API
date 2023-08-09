class BookSerializer < ActiveModel::Serializer
    attributes :id, :title, :status, :checked_out_by
  
    def checked_out_by
      object.user&.name if object.checked_out?
    end
  end
  