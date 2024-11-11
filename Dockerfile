# Usar una imagen base con .NET SDK para construir la aplicación
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo de proyecto y restaurar las dependencias
COPY ./exercise3/exercise3.csproj ./exercise3/
WORKDIR /app/exercise3
RUN dotnet restore

# Copiar el resto del código fuente y construir el proyecto
COPY ./exercise3/. ./exercise3/
RUN dotnet publish -c Release -o /app/out

# Usar la imagen base con .NET Runtime para ejecutar la aplicación
FROM mcr.microsoft.com/dotnet/aspnet:6.0

# Establecer el directorio de trabajo en la imagen final
WORKDIR /app

# Copiar los archivos compilados desde la etapa de construcción
COPY --from=build /app/out .

# Establecer el comando para ejecutar la aplicación
ENTRYPOINT ["dotnet", "exercise3.dll"]
