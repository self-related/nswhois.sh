# nswhois.sh
Check domain and all its IP addresses with whois

## Dependencies
- grep
- nslookup
- whois

## Usage
``./nswhois.sh domain [DNS_server]``

DNS_server is optional

## Examples
``./nswhois.sh github.com``

``./nswhois.sh github.com 1.1.1.1``

``./nswhois.sh github.com dns.google``
