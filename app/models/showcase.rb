class Showcase < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  def self.react
    where(subtitle:"React")
  end

  scope :rails, ->{where(subtitle: "Ruby on Rails")}

  #set a default value upon initialization (when new method, not create method)
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/350x200"
  end
end
