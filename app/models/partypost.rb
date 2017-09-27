class Partypost < ApplicationRecord
    has_many :partylikes
    has_many :partyjoins
    has_many :partycomments
    belongs_to :user
end
