FROM fedora:33
RUN dnf upgrade -y
RUN dnf install -y latexmk
RUN dnf install -y texlive-scheme-medium
RUN dnf clean all
