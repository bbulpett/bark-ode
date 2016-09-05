module API
	class App < Grape::API

		# version 'v1', using: :header, vendor: 'bark-odor'
    format :json
    prefix :api

		desc 'Display a welcome message.'
		get '/greeting' do
			{"Thanks for using Bark-Odor. Woof Woof!"}
		end

	end
end
