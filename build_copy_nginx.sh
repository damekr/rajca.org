#!/bin/bash
hugo
cp -Rf public/* /usr/share/nginx/html/
chown -R nginx:nginx /usr/share/nginx/html/
