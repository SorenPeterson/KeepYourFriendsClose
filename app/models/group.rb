class Group < ActiveRecord::Base
  has_and_belongs_to_many :users

  def admin
    self.user
  end
end
