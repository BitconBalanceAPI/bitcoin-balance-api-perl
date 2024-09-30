# bitcoin-balance-api-perl

Easy-to-use API for retrieving the balance of a Bitcoin wallet with https://bitcoin-balance-api.com/

Swagger: https://api-testnet.bitcoin-balance-api.com/docs/

## Get Balance

```
use LWP::UserAgent;
use JSON;

my $request = LWP::UserAgent->new()->get(
        "https://api-testnet.bitcoin-balance-api.com/v1/address/tb1qlw09ycnp3qgqw9alqgx93ed7cg5kmnyud326ky"
);
my $response = decode_json($request->content);
print "Bitcoin Balance: $response->{'balance'}";
```
