application = proc do
  json = { message: 'hello world!'}
  header = { 'Content-Type' => 'application/json'}
  status = 200

  [status, header, [json.to_s]]
end

run application