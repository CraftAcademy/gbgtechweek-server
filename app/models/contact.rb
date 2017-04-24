class Contact < ApplicationRecord
  validates_presence_of :name
  before_create :random_image

  private

  def random_image
    self.image = %w{https://address-book-demo.herokuapp.com/images/desert.jpg https://address-book-demo.herokuapp.com/images/pine.jpg https://address-book-demo.herokuapp.com/images/hills.jpg https://address-book-demo.herokuapp.com/images/ocean.jpg https://address-book-demo.herokuapp.com/images/snow.jpg}.sample
  end
end
