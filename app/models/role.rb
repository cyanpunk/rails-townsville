class Role < ActiveRecord::Base
  has_many :players
  has_many :accounts, :through => :players
end
