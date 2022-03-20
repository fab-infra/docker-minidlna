# MiniDLNA server based on openSUSE Leap 15.3
FROM ghcr.io/fab-infra/base-image:opensuse15.3

# Environment
ENV MINIDLNA_MEDIA_DIRS="/media"

# MiniDLNA
RUN zypper in -y minidlna &&\
	zypper clean -a

# Files
COPY ./root /

# Ports
EXPOSE 8200
