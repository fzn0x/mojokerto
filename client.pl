#!/usr/bin/perl
use v5.34;

use IO::Socket;

my $server_host = 'localhost';
my $server_port = 3001;

my $client = IO::Socket::INET->new(PeerAddr => $server_host,
                                   PeerPort => $server_port,
                                   Proto    => 'tcp')
    or die "Couldn't connect to $server_host:$server_port : $@\n";

print "Connected to server at $server_host:$server_port\n";

# Optional: Send a message to the server
print $client "Hello, server!\n";

close($client);