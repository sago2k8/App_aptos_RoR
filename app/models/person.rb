class Person < ActiveRecord::Base
	validates_presence_of :nombre, :identificacion
	belongs_to :apartament
end
