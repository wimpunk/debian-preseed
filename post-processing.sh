#!/bin/bash

# also copy the authorized_keys to admin24sea
tar -cf - .ssh | su - admin24sea -c 'tar -xf -'
