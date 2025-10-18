# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord
    validates :title, presence: true
    # length
    validates :title, length: { minimum: 2, maximum: 100 }
    validates :content, presence: true
    validates :content, length: { minimum: 10 }

    def display_create_at
        I18n.l(self.created_at, format: :default)
    end
end
