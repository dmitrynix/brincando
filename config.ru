use Rack::Static,
  :urls => [
    "/alfabeto/",
    "/css/",
    "/imagens/",
    "/js/",
    "/themes/",
    "/ui/" ],
  :root => "."

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('index.html', File::RDONLY)
  ]
}
