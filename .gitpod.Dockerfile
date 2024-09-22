FROM gitpod/workspace-full:latest

# Instalacja Flutter SDK
RUN sudo apt-get update \
    && sudo apt-get install -y curl git unzip xz-utils zip libglu1-mesa \
    && git clone https://github.com/flutter/flutter.git -b stable --depth 1 /home/gitpod/flutter \
    && /home/gitpod/flutter/bin/flutter doctor

# Dodanie Flutter do PATH
ENV PATH="/home/gitpod/flutter/bin:/home/gitpod/flutter/bin/cache/dart-sdk/bin:${PATH}"