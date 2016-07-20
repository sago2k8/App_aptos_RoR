class Tower < ActiveRecord::Base
	validates_presence_of :nombre , :portero
	has_many :apartaments
end
