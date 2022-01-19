class Link < ApplicationRecord
    validates_presence_of :url
    validates_presence_of :slug
    validates :slug, format: { with:  /\A[a-zA-Z0-9 ]+\z/ }
    validates :slug, format: { without: /\s/, message: "slug can't contain spaces" }
    validates :url, format: URI::regexp(%w[http https])
    validates_uniqueness_of :slug
    validates_length_of :url, within: 3..255, on: :create, message: "too long or short"
    validates_length_of :slug, within: 3..100, on: :create, message: "too long or short"
end
