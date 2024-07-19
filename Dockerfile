# MiniDLNA server based on openSUSE Leap 15.6
FROM ghcr.io/fab-infra/base-image:opensuse15.6

# Environment
ENV MINIDLNA_MEDIA_DIRS="/media"

# MiniDLNA
RUN zypper in -y minidlna &&\
	zypper clean -a

# Files
COPY ./root /

# Ports
EXPOSE 8200
