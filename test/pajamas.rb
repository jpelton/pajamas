require_relative '../test_helper'
require '../lib/pajamas.rb'

describe Pajamas do
	describe ':index'
	describe ':insert'
	describe ':delete'
	describe ':delete_all'
	describe ':reindex_all'
	describe ':define_mapping'
		client_call = stub(RestClient).post(anything, anything, anything)
	
		it 'should take a hash of fields and stringify them'
			fields = {
				"birthday" : {
					"type" : "date",
					"ignore_malformed" : false,
					"format" : "dateOptionalTime",
					"include_in_all" : false
				}
			}

			it 'should take a name and pass it along'
				mapping_string 
				response = Pajamas.define_mapping fields
				mock(client_call).post(
			end
			it 'should be able to add type'
			it 'should be able to add ignore_malformed'
			it 'should be able to add format' 
			it 'should be able to add include_in_all'
			it 'should be able to add boost'
		end
		it 'should call _mapping'
		it 'should error if no hash is sent in'
	end
end
