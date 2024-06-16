#!/usr/bin/perl
use v5.34;

use IO::Socket;

my $server_port = 3001;

my $server = IO::Socket::INET->new(LocalPort => $server_port,
                                Type      => SOCK_STREAM,
                                Reuse     => 1,
                                Listen    => 10 )   # or SOMAXCONN
    or die "Couldn't be a tcp server on port $server_port : $@\n";

print "Server started on port $server_port\n";

while (my $client = $server->accept()) {
    # $client is the new connection
    print "Client connected\n";

    # Read message from client
    my $message = "";
    $client->recv($message, 1024); # Read up to 1024 bytes
    print "Received message: $message\n";

    close($client);
}

close($server);