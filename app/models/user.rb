class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :omniauthable

  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.email = auth.info.email
  #     user.password = Devise.friendly_token[0.20]
  #     user.uid = auth.uid
  #     user.provider = auth.provider
  #   end
  # end

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      if auth.info.email?
        user.email = auth['info']['email']
      else
        user.email = '12316287518725419264983729856237658173641@example.com'
      end
      user.password = Devise.friendly_token[0,20]
      user.uid = auth.uid
      user.provider = auth.provider
    end
  end

end
