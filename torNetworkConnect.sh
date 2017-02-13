#!/bin/bash

# This script connects you to the tor network with your provided
# interface of choice.
# https://leonid.shevtsov.me/post/an-easy-way-to-use-tor-on-os-x/
# type "networksetup -listallnetworkservices" in terminal to retrieve a
# list of available connection names

# CTRL+C to disconnect and restore settings

INTERFACE=Thunderbolt\ Ethernet #Wi-Fi, ...

networksetup -setsocksfirewallproxy "${INTERFACE}" 127.0.0.1 9050 off
networksetup -setsocksfirewallproxystate "${INTERFACE}" on
tor
networksetup -setsocksfirewallproxystate "${INTERFACE}" off
