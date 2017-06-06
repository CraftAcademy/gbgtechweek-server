class Contact < ApplicationRecord
  validates_presence_of :name
  before_create :random_image

  private

  def random_image
    image = %w{desert.jpg pine.jpg hills.jpg ocean.jpg snow.jpg}.sample
    self.image = 'https://ca-address-book.herokuapp.com/images/' + image
  end
end
