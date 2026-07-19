#!/bin/bash

# 1. Create the .env file from Vercel Environment Variables
echo "API_KEY1=$API_KEY1" > .env
echo "API_KEY2=$API_KEY2" >> .env
echo "API_KEY3=$API_KEY3" >> .env

# 2. Install or update Flutter
if [ -d "flutter" ]; then
  cd flutter && git fetch && git checkout stable && git pull && cd ..
else
  git clone https://github.com/flutter/flutter.git -b stable
fi

# 3. Build the web app
flutter/bin/flutter doctor
flutter/bin/flutter build web --release