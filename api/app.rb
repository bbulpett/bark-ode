module API
	class App < Grape::API

		# version 'v1', using: :header, vendor: 'bark-odor'
    format :json
    prefix :api

    content_type :txt, 'text/plain'

		desc 'Display a welcome message.'
		get 'greeting' do
			content_type 'text/plain'
			'Thanks for using Bark-Odor. Woof Woof!'
			# { greeting: 'Thanks for using Bark-Odor. Woof Woof!' }
		end

	end
end
