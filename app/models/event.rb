class Event < ApplicationRecord
  has_many :participations, dependent: :destroy
  has_many :favorites, dependent: :destroy
  belongs_to :organizer
  has_one_attached :image

  validates :name, presence: true
  validates :introduction, presence: true
  validates :date, presence: true
  validates :place, presence: true
  validates :schedule, presence: true
  validates :number_of_people, presence: true
  validates :organizer_id, presence: true

  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

  def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
  end
end
