class Article < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy

  enum :status, [ :public, :archived, :private], suffix: true

  def public_count
    where(status: 'public').count
  end

  validates :title, :body, presence: true
  validates :body, length: { minimum: 10 }
end
  