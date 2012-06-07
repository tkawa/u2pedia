class User < ActiveRecord::Base
  attr_accessible :provider, :uid, :name, :screen_name, :image, :token, :secret

  #---------------------------#
  # self.create_with_omniauth #
  #---------------------------#
  def self.create_with_omniauth( auth )
    user = User.new
    user[:provider] = auth["provider"]
    user[:uid] = auth["uid"]

    unless auth["info"].blank?
      user[:name] = auth["info"]["name"]
      user[:screen_name] = auth["info"]["nickname"]
      user[:image] = auth["info"]["image"]
    end
    
    unless auth["credentials"].blank?
      user.token = auth['credentials']['token']
      user.secret = auth['credentials']['secret']
    end

    user.save

    return user
  end

  @@allow_users = nil
  def edit_allowed?
    @@allow_users ||= (Settings['allow_users'].try {|u| u.split(',') } || [])
    @@allow_users.include?(uid)
  end

end
