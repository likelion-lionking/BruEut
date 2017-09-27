class Forest < ActiveRecord::Base
  has_many :fcomments, :dependent => :destroy
  has_many :forestlikes
  has_many :forestdislikes


end
