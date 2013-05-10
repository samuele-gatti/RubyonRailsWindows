class IndirizzoValidator < ActiveModel::Validator
	def validate(record)
		if record.address.starts_with?('via', 'piazza', 'corso', 'viale', 'vicolo')
			record.errors[:base] << "e' necessario che l'indirizzo inizi per 'via', 'piazza', ..."
		end
	end
end