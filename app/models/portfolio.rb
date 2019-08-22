class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	def self.angular
		where(subtitle: "Angular")
	end

	scope :ruby_on_rails_port_folio_items, -> {where(subtitle: "Ruby on Rails")}

	after_initialize :set_defaults

#default values,,if image is nil it place the image
	def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/350x150"
  end
end
