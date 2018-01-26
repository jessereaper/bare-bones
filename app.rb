require 'socket'
server = TCPServer.new 1487

while session = server.accept
  request = session.gets
  puts request

  session.print "HTTP/1.1 200\r\n"
  session.print "Content-Type: text/html\r\n"
  session.print "\r\n"
  session.print "
    <h1>Hello world!</h1>
    <p>The time is #{Time.now}</p>
  "

  session.close
end
