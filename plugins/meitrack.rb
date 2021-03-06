##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##

Plugin.define "MeiTrack" do
author "Andrew Horton"
version "0.1"
description "MS02 GPS Tracking System from MeiTrack. Provides a web server to manage tracking of vehicles, chidren, pets, etc. The devices have plenty of features including eavesdropping, control by SMS, RFID, GPRS, panic alarms, etc. Homepage: http://www.meitrack.net"

# Examples #
examples %w|
http://unico1.itsyourdns.com/inweb/trackerlogin.aspx
http://www.dw123456.com/trackerlogin.aspx
http://www.02rc.com/trackerlogin.aspx
|

# Matches #
matches [

# JavaScript
{:text=>'var _TrackerMain_GTVTSeries = "GT Series\\\\VT Series";'},

# Form HTML
{ :text=>'<form name="form1" method="post" action="trackerlogin.aspx" id="form1">' },

]

end

