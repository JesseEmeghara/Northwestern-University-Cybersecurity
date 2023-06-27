#!/bin/bash

lynis audit system --tests-from-group malware --tests-from-group authentication --tests-from-group networking --tests-from-group storage --tests-from-group filesystems >> /tmp/lynis.partial_scan.log
