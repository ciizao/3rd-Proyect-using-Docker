# Message whith JAVA
## Results

<p align="center">
    <img src="Public/Images/Resultado.png" alt="Result ">
</p>

This is a program that presents a message on the web with JAVA

## :open_book: Repository on Github
* Clone the repository

    ```
    git clone https://github.com/ciizao/3rd-Proyect-using-Docker.git
    ```

## :rocket: How to run in docker
### Pre-requisites
* Docker - DockerDesktop installed
* DockerHub account
### Download image
```
docker pull ciizao/3rd-proyect-using-docker-go
```
> [!IMPORTANT]
> By default, port 8080 is the one assigned to open the web page
### Run image
```
docker run --name <NEWCONTAINERNAME> -p 8080:8080 <IMAGENAME>
```
> [!TIP]
> The name of the downloaded image must match the one placed in the previous command, for this you can verify it using the **docker images** command. Additionally, you must check that there is no other container with the same name as the one placed in the command.
> [!TIP]
> Check if the port is not being used with the command: netstat -aon | findstr :8080
> If it is busy we can stop the process with the command: taskkill /PID <PID> /F

### View the results
Open new window browser and search localhost:8080

[View results](#results)

## :light_rail: PAAS Deploy with docker (Railway)
For its deployment in a PAAS we will rely on railway and its easy implementation thanks to its container management. 

![Railway Service](Public/Images/Railway1.png "Service")

> [!IMPORTANT]
> Next, the configuration that we must add is the generation of a domain along with the desired port, in this case the indicated thing would be to point to port 3000

![Generate Domain](Public/Images/Railway2.png "Domain")

### View the results
![Result Railway](Public/Images/RailwayResult.png "Domain")


Link Railway App
[Message](https://3rd-proyect-using-docker-production.up.railway.app/ "click for visit")