#!/bin/bash
gst-launch-1.0 tcpserversrc port=4011 ! tsparse ! fakesink
