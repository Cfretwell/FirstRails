# == Schema Information
#
# Table name: people
#
#  id         :bigint           not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  house_id   :integer          not null
#
# Indexes
#
#  index_people_on_house_id  (house_id)
#
class Person < ApplicationRecord 
    validates :name, :house_id, presence: true 

    belongs_to(
        :house,
        class_name: 'House',
        foreign_key: :house_id,
        primary_key: :id
    )
end
