class Item < ApplicationRecord
  belongs_to :list
  delegate :user, to: :list

  validates :list_id, presence: true, allow_blank: false
  validates :task, presence: true, allow_blank: false
end
