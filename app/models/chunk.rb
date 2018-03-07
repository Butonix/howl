# == Schema Information
#
# Table name: chunks
#
#  id           :integer          not null, primary key
#  chunkable_id :integer          not null
#  content      :text
#  ord          :integer          not null
#  content_type :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Chunk < ApplicationRecord
  validates :article, :ord, :content_type
  validates :content_type, inclusion:
  %W(p h1 h2 h3 pull_quote block_quote divider image)

  belongs_to :article,
  foreign_key: :chunkable_id,
  class_name: :Article

  
end