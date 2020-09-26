# dotnet-nodejs
[![](https://images.microbadger.com/badges/image/davidkassa/dotnet-nodejs.svg)](https://microbadger.com/images/davidkassa/dotnet-nodejs "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/davidkassa/dotnet-nodejs.svg)](https://microbadger.com/images/davidkassa/dotnet-nodejs "Get your own commit badge on microbadger.com") [![Build Status](https://travis-ci.com/davidkassa/dotnet-nodejs.svg?branch=main)](https://travis-ci.com/davidkassa/dotnet-nodejs)

Auto-updating [Docker](https://www.docker.com/) image based on [.NET Core](https://dotnet.microsoft.com/) official image with [Node.js](https://nodejs.org/) installed.

This image should be rebuilt automatically anytime there is an update to the [.NET Core SDK](https://hub.docker.com/_/microsoft-dotnet-core-sdk/) or [Node.js](https://hub.docker.com/_/node/) docker containers through a repository link. 

Please note that I'm pulling Node.js from apt-get, but using the repository link as a trigger, so there is a theoretical race condition.

Can be pulled from [Docker Hub](https://hub.docker.com/r/davidkassa/dotnet-nodejs/) 
```docker
docker pull davidkassa/dotnet-nodejs
```

A new build can be manually triggered (if the above automation fails) by sending a POST to 

https://cloud.docker.com/api/build/v1/source/a8970549-8e02-40f4-8cc0-c5aff2690dc0/trigger/44391246-758a-4390-9182-138b85214090/call/
