[![build](https://github.com/fab-infra/docker-minidlna/actions/workflows/build.yml/badge.svg)](https://github.com/fab-infra/docker-minidlna/actions/workflows/build.yml)

# MiniDLNA Docker image

## Ports

The following ports are exposed by this container image.

| Port | Description |
| ---- | ----------- |
| 8200 | TCP port |

Note: for UPnP broadcasts to work, this container should be run in host network mode.

## Environment variables

The following environment variables can be used with this container.

| Variable | Description | Default value |
| -------- | ----------- | ------------- |
| MINIDLNA_MEDIA_DIRS | Media directories (colon-separated) | |

## Volumes

The following container paths can be used to mount a dedicated volume or to customize configuration.

| Path | Description |
| ---- | ----------- |
| /media | Source media directory |
| /var/cache/minidlna | Database directory |

## Useful links

- [MiniDLNA documentation](https://sourceforge.net/p/minidlna/git/ci/master/tree/minidlna.conf)
