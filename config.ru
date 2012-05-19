use Rack::Static, 
		:urls => ["/css", "/img"],
		:root => "public"

		run lambda { |env|
			[
				200, 
			{
				'Content-Type'  => 'text/html', 
				'Cache-Control' => 'public, max-age=86400' 
			},
			File.open('public/index.html', File::RDONLY)
			File.open('public/au-proteus.html', File::RDONLY)
			File.open('public/gradspeech08.html', File::RDONLY)
			File.open('public/pvs.html', File::RDONLY)
			File.open('public/rickroll.html', File::RDONLY)
				]
		}
