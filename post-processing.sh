#!/bin/bash

# also copy the authorized_keys to admin24sea
tar -C root -cf - .ssh | su - admin24sea -c 'tar -xf -'
