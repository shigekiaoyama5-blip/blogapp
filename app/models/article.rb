class Article < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true

    def display_create_at
        I18n.l(self.created_at, format: :default)
    end
end
