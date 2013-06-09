module StudentsHelper
	def error_messages_for( object ) 
	render(:partial => 'shared/error_messages', :locals =>{:object =>@subject})
	end
end
