class Article < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    validate do |article|
        errors.add :body, presence: true, length: { minimum:10 }, message: "char count is: #{article.body.size}"
    end
end
