class Album < ApplicationRecord
    validates :name, presence: true   # this line will be use in validation in name input record insert will be any input insert will be show the errors.
    validates :description, presence: true, length: { minimum: 10 } # this line will be use in validation in in the description input by more 10 then 10 word input.
    has_one_attached :avatar # only one photo upload in this code
    has_many_attached :images # multiple photo upload
    belongs_to :user
end
