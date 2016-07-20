class Apartament < ActiveRecord::Base
	validates_presence_of :nombre , :piso
	belongs_to :tower
	has_many :people
end
