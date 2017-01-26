# == Schema Information
#
# Table name: games
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  players     :integer
#  draw        :string
#

class Game < ApplicationRecord
end
