# Fedora Kinoite
FROM quay.io/fedora-ostree-desktops/kinoite:45

# Install packages
RUN dnf install -y libreoffice java-latest-openjdk kdenlive discord && dnf clean all

# Copy turtagent binary to TurtLinux
#COPY turtagent/bin/turtagent /usr/bin/turtagent
#RUN chmod +x /usr/bin/turtagent

# NOTE: Add more steps for turtagent if needed

# Copy the autostart config into the global system directory
#COPY config/turtagent.desktop /etc/xdg/autostart/

# Run the bootc linter to ensure compatibility
RUN bootc container lint
