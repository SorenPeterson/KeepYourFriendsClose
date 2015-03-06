class User < ActiveRecord::Base
  has_and_belongs_to_many :groups
  has_many :owned_groups, class_name: "Group", foreign_key: :user_id

  def self.from_omniauth(auth)
    user = User.find_or_create_by(provider: auth.provider, uid: auth.uid)
    user.name = auth.info.name
    user.email = auth.info.email

    user.oauth_token = auth.credentials.token
    user.oauth_expires_at = Time.at(auth.credentials.expires_at)

    user.save!

    user
  end

  def facebook
    @facebook ||= Koala::Facebook::API.new(self.oauth_token, ENV["FB_AUTH_CLIENT_SECRET"])
  end
end
