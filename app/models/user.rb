class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
has_many :marketings, dependent: :destroy
          # 認証で使うキーを指定
  devise :database_authenticatable, :validatable,
  authentication_keys: [:username]

  attachment :profile_image

# 登録時に email を不要にする
def email_required?
  false
end
def email_changed?
  false
end
end
