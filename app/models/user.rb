class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, dependent: :destroy
  has_many :participations,  dependent: :destroy
  has_many :favorites, dependent: :destroy

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.last_name = "ゲスト"
      user.first_name = "ログイン"
      user.last_name_kana = "ゲスト"
      user.first_name_kana = "ログイン"
      user.telephone_number = "00000000000"
    end
  end

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'must be in katakana'}
  validates :first_name_kana, presence: true, format: { with: /\A[\p{katakana}\p{blank}ー－]+\z/, message: 'must be in katakana'}
  validates :telephone_number, presence: true
  validates :email, presence: true

  def password_required?
    super && persisted?
  end

end
