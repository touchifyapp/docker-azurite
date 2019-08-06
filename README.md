# Supported tags and respective Dockerfile links

*  [`2.7.0`, `2.7`, `2`, `latest` (Dockerfile)](https://github.com/touchifyapp/docker-azurite/blob/master/Dockerfile)

This image is updated via [pull requests to the `touchifyapp/docker-azurite` GitHub repo](https://github.com/touchifyapp/docker-azurite/pulls).

# [Azurite](https://github.com/Azure/Azurite/tree/legacy-master): A lightweight server clone of Azure Blob, Queue, and Table Storage that simulates most of the commands supported by it with minimal dependencies.

![Azurite Logo](https://raw.githubusercontent.com/Azure/Azurite/master/icon.png)

`Azurite` is a lightweight server clone of Azure Blob, Queue, and Table Storage that simulates most of the commands supported by it with minimal dependencies.

## Important note

**This image is meant to contains Azurite V2. For Azurite V3, please use this image: https://hub.docker.com/_/microsoft-azure-storage-azurite**

## How to use

### Basic Usage

The following case run the default configuration with Blob, Queue and Table Storage servers.

```bash
docker run -dt \
  --name azurite \
  -p 10000:10000 \
  -p 10001:10001 \
  -p 10002:10002 \
  -v $(PWD):/data \
  touchifyapp/azurite
```

### Start only a specific server

You can run only Blob, Queue or Table Storage server by specifying a custom command.

```bash
# Run only Blob server
docker run -dt --name azurite -p 10000:10000 -v $(PWD):/data touchifyapp/azurite npm run blob

# Run only Queue server
docker run -dt --name azurite -p 10001:10001 -v $(PWD):/data touchifyapp/azurite npm run queue

# Run only Table server
docker run -dt --name azurite -p 10002:10002 -v $(PWD):/data touchifyapp/azurite npm run table
```

### Connection strings

Full connection string:
```
DefaultEndpointsProtocol=http;AccountName=devstoreaccount1;AccountKey=Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==;BlobEndpoint=http://127.0.0.1:10000/devstoreaccount1;QueueEndpoint=http://127.0.0.1:10001/devstoreaccount1;TableEndpoint=http://127.0.0.1:10002/devstoreaccount1;
```

Blob-only connection-string:
```
DefaultEndpointsProtocol=http;AccountName=devstoreaccount1;AccountKey=Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==;BlobEndpoint=http://127.0.0.1:10000/devstoreaccount1;
```

Queue-Only connection string:
```
DefaultEndpointsProtocol=http;AccountName=devstoreaccount1;AccountKey=Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==;QueueEndpoint=http://127.0.0.1:10001/devstoreaccount1;
```

Table-only connection string:
```
DefaultEndpointsProtocol=http;AccountName=devstoreaccount1;AccountKey=Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw==;TableEndpoint=http://127.0.0.1:10002/devstoreaccount1;
```

## License

View [license information](https://github.com/touchifyapp/docker-azurite/blob/master/LICENSE) for the software contained in this image.

## Supported Docker versions

This image is officially supported on Docker version 1.12+.

Please see [the Docker installation documentation](https://docs.docker.com/installation/) for details on how to upgrade your Docker daemon.

## User Feedback

### Documentation

Documentation for this image is stored in [the `touchifyapp/docker-azurite` GitHub repo](https://github.com/touchifyapp/docker-azurite).
Be sure to familiarize yourself with the repository's README.md file before attempting a pull request.

### Issues

If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/touchifyapp/docker-azurite/issues).

### Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/touchifyapp/docker-azurite/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.