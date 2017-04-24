class Contact < ApplicationRecord
  validates_presence_of :name
  before_create :random_image

  private

  def random_image
    self.image = %w{'/images/desert.jpg', '/images/pine.jpg', '/images/hills.jpg', '/images/ocean.jpg', '/images/snow.jpg', '/images/stars.jpg'}
  end
end
