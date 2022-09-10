class Project < ApplicationRecord
  belongs_to :user
  has_many :attachme, dependent: :destroy

end
