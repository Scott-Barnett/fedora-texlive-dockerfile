# Use the latest stable fedora base
FROM fedora:33

# Ensure all the packages are up to date and install dependencies. Performed in one line to force full upgrade on change
RUN dnf upgrade -y && dnf install -y latexmk texlive-scheme-medium texlive-xurl texlive-minted texlive-IEEEtran texlive-appendix

# Clean up the dnf cache to minimise the file size as much as possible
RUN dnf clean all
