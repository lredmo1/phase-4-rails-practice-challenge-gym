class Client < ApplicationRecord
    has_many :memberships
    has_many :gyms, through: :memberships
    
     validates :gym_id, uniqueness: true
end
