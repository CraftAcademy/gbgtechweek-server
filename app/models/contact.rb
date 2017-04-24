class Contact < ApplicationRecord
  validates_presence_of :name
  before_create :random_image

  private

  def random_image
    self.image = %w{'/moutain.jpg', '/river.jpg', '/ocean.jpg'}
  end
end
