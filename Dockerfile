# MiniDLNA server based on openSUSE Leap 16.0
FROM ghcr.io/fab-infra/base-image:opensuse16.0

# Environment
ENV MINIDLNA_MEDIA_DIRS="/media"

# MiniDLNA
RUN zypper in -y minidlna &&\
	zypper clean -a

# Files
COPY ./root /

# Ports
EXPOSE 8200
