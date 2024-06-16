#!/usr/bin/perl
use v5.34;

use Mojolicious::Lite -signatures;

under '/api';

get '/todo' => sub ($c) {
    $c->render(json => { message => "Data retrieved", data => {} });
};

post '/todo' => sub ($c) {
    $c->render(json => { message => "Data added", data => {} });
};

put '/todo/:id' => sub ($c) {
    my $id = $c->param('id');   
    $c->render(json => { message => "Data updated", data => $id });
};

del '/todo/:id' => sub ($c) {
    my $id = $c->param('id');   
    $c->render(json => { message => "Data deleted", data => $id });
};

app->start;