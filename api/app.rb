require 'zbar'
module API

	class App < Grape::API

		# version 'v1', using: :header, vendor: 'bark-odor'
    format :json
    prefix :api

    content_type :txt, 'text/plain'

		desc 'Display a welcome message.'
		get 'greeting' do

			content_type 'text/plain'
			'Thanks for using Bark-Ode. Woof Woof!'
			# { greeting: 'Thanks for using Bark-Odor. Woof Woof!' }
		end


		desc 'Handle an image upload'
		post 'upload' do
			barcode_image = params[:barcode_image]
			ZBar::Image.from_jpeg(File.read(barcode_image)).process
		end

		#ZBar::Image.from_jpeg(File.read('test.jpg')).process
		# => [#<Zbar::Symbol:0x10147c668
		#   @addon="",
		#   @data="9876543210128",
		#   @location= [...],
		#   @quality=15,
		#   @symbology="EAN-13">]

	end
end
