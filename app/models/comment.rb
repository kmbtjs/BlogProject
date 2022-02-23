class Comment < ApplicationRecord
  include Visible
  belongs_to :article
  enum :status, [ :public, :archived, :private], suffix: true
end
