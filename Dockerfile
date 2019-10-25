FROM mcr.microsoft.com/dotnet/core/sdk:2.1 As build

WORKDIR /app
COPY . .

RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/core/runtime:2.1
WORKDIR /app
COPY --from=build /app/out ./

ENTRYPOINT [ "dotnet" ]
CMD [ "dotnetapp.dll" ]

