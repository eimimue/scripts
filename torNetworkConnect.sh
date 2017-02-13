#!/bin/bash
INTERFACE=Thunderbolt\ Ethernet
#networksetup -setsocksfirewallproxy $INTERFACE 127.0.0.1 9050 off
#networksetup -setsocksfirewallproxystate $INTERFACE on
#tor
#networksetup -setsocksfirewallproxystate $INTERFACE off
networksetup -setsocksfirewallproxy "${INTERFACE}" 127.0.0.1 9050 off
networksetup -setsocksfirewallproxystate "${INTERFACE}" on
tor
networksetup -setsocksfirewallproxystate "${INTERFACE}" off
