require 'rubygems'
require 'sinatra'


get '/proxy.pac' do
  <<eos
    // based on script by jkghosh 2008
    // modified by prateek dayal 2013
    // for syntax etc, visit http://technet.microsoft.com/en-us/library/dd361918.aspx
    function FindProxyForURL(url, host)
    {
    //for all request for localhost,202.141.*,127.0.0.1
        if (shExpMatch(url, "*localhost*"))
          return "DIRECT";
        if (shExpMatch(url, "*127.0.0.*"))
          return "DIRECT";
        if (shExpMatch(url, "*iitg.ernet.in*"))
          return "DIRECT";
        if (shExpMatch(url, "*lvh.me*"))
          return "DIRECT";
        if (shExpMatch(url, "*.dev*"))
          return "DIRECT";
        if (shExpMatch(url, "*.iitg.ac.in*"))
          return "DIRECT";
        if (shExpMatch(url, "*202.141.80.*"))
          return "DIRECT";
        if (shExpMatch(url, "*202.141.81.*"))
          return "DIRECT";

    //For Nevis Authentication/redirection
    //                if (shExpMatch(url, "*192.168.100.1*"))
    //                       return "DIRECT";

    //For A & B type Quaters registration
                    if (shExpMatch(url, "*10.100.100.249*"))
                            return "DIRECT";

    //for all other sites
                    return "PROXY 202.141.80.119:3128";
    }

eos
end

