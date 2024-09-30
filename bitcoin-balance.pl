#!/usr/bin/env perl
# script: retrieve bitcoin balance from bitcoin-balance-api.com
# author: Bitcoin Balance API <hello@bitcoin-balance-api.com>
# notes:

use LWP::UserAgent;
use JSON;

my $request = LWP::UserAgent->new()->get(
        "https://api-testnet.bitcoin-balance-api.com/v1/address/tb1qlw09ycnp3qgqw9alqgx93ed7cg5kmnyud326ky"
);
my $response = decode_json($request->content);
print "Bitcoin Balance: $response->{'balance'}";