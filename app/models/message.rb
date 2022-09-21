# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  users_id   :integer
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Message < ApplicationRecord
    belongs_to :user
end
