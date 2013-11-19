### A simple proxy config script for IIT Guwahati

Taking the script available locally, I have added entries for *.lvh.me and *.dev subdomains often using by Rails programmers. You can add your own entries as you need.

### Usage

Install sinatra by ``gem install sinatra`` and run the script with ruby proxy.rb. Your proxy.pac file is now available at ``http://localhost:4567/proxy.pac``. Enter this URL in the auto proxy config field of your network setup screen.
