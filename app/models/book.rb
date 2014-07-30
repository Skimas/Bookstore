class Book < ActiveRecord::Base
	default_scope { order(created_at: :desc) }
	def to_param
		"#{id}-#{name.parameterize}"
	end
end
