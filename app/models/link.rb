class Link < ApplicationRecord
    validates_presence_of :url
    validates :url, format: URI::regexp(%w[http https])
    validates_uniqueness_of :slug
    validates_length_of :url, within: 3..255, on: :create, message: "too long or short"
    validates_length_of :slug, within: 3..100, on: :create, message: "too long or short"
end
