# HTTP denial-of-potatoes

Collection of scripts attempting *trivial* [denial-of-service attacks](https://en.wikipedia.org/wiki/Denial-of-service_attack) against HTTP clients.

This is not going to work against `curl`, `wget` or any other serious client. But they will help if you're writing your own HTTP client and want to check it for susceptibility to basic DoS attacks.  

## Usage

Run the script, then connect to localhost:8080 using the HTTP client you want to test.

## License

Licensed under any of Apache 2.0, MIT or Zlib, license at your option.
