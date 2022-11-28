class Specification < ApplicationRecord
    belongs_to :device
    validates :camera, :processor, :ram, :storage, :battery, :os_type , presence: true
end
