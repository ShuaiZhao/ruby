module FormatAttributes
	def formats(*attrs)
		@format_attrs = attrs
	end

	def format_attrs
		@format_attrs
	end
end

module Formatter
	def display
		self.class.format_attrs.each do |attr|
			puts "[ #{attr.to_s.upcase} ] #{send(attr)}"

		end
	end
end

class Resume
	extend FormatAttributes
	include Formatter

	attr_accessor :name, :phone_number, :email
	formats :name, :phone_number, :email
end

resume = Resume.new
resume.name = "Jack Zhao"
resume.email = "xxx@xxxx"
resume.phone_number = "911"

resume.display
