# Use the latest stable fedora base
FROM fedora:33

# Ensure all the packages are up to date
RUN dnf upgrade -y

RUN dnf install -y latexmk

# Use the medium scheme as the full is very large and medium covers most of the packages
RUN dnf install -y texlive-scheme-medium

# Install additional useful packages
RUN dnf install -y texlive-xurl texlive-minted texlive-IEEEtran

# Clean up the dnf cache to minimise the file size as much as possible
RUN dnf clean all
