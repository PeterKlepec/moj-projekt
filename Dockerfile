FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o out
EXPOSE 8080
ENTRYPOINT ["dotnet", "out/MojProjekt.dll"]
