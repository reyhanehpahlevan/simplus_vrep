# SimPlus_VRep
This repository is dedicated to a Rescue simulation environment for Robocup Juniors and is aimed to be a bridge from Robocup Junior Rescue to Robocup Major Rescue competitions.

![SimPlus on macOS](docs/img/world2.png?raw=true "Simplus on macOS")

- [Getting Start](https://github.com/Robocup-simplus/simplus_vrep/wiki)
- [Setup](README.md)
  - [Easy setup(only Mac)](EASYSETUP.md)
  - [Install instructions](INSTALL.md)
- [Simplus Models](MODELS.md)
- [Authors](AUTHORS.md)
- [Changelog](CHANGELOG.md)

System Requirements
-----------------------

SimPlus will likely run on a modern dual core PC with a decent graphics card. Typical configuration is:

- Dual Core CPU (2.0 Ghz+)
- 2GB of RAM
- 256MB nVidia or ATI graphics card

Note that it may run on lower end equipment, though good performance is not guaranteed.


Software Requirements
---------------------

SimPlus compiles and run on Win/Linux/macOS (tested on Ubuntu variants only). It depends on the following libraries:

- [Python](https://www.python.org) version 3.5+ 
- [Vrep Simulation](http://www.coppeliarobotics.com)
- [Google Protobuf](https://github.com/google/protobuf)
- [GRPC](http://grpc.io)
- [Bottle](https://bottlepy.org/docs/dev/) (Only needed for Scratch API)


Please consult the [install instructions](INSTALL.md) for more details.

# Setup
- [Install instructions](INSTALL.md)
- Open the Vrep Simulator (Make sure about the setup using [VREP Installation ](INSTALL.md))
- From the top menu click on  `File` then `Open Scene` and select the `SampleMap.ttt` file from `simplus_vrep/worlds`
- Run the VREP and Start the world (click on play icon)

## Python 

### Approach 1
Run the robotApi, in this approach the client code should be placed in the main function of "robotApi.py". The client can directly access the provided python functions that are declared in the same file. It should be mentioned that this approach is the core part of the second approach. (Go to  `simplus_vrep/server` directiory):
```bash
python robotApi.py 
```

### Approach 2
In this approach, the client file is writen in a template that makes the development and game management much easier for both students and Technical committies. 
1. Run Clients (Go to  `simplus_vrep/client/python` directiory):
```bash
python client.py
```
2. Run Servers for each client (Go to  `simplus_vrep/server` directiory):
```bash
python server.py
```
4. Manage the Game using the Game manager GUI, The Game will start after pressing it's "play" button.

5. Manage and Watch the Game form Lua Panel 

![SimPlus on macOS](docs/img/full.png?raw=true "Simplus on macOS")

## Scratch 
1. Run Server (Go to  `simplus_vrep/server` directiory):
```bash
python simplus_scratch.py
```
2. Go to  https://scratchx.org/?url=https://Robocup-simplus.github.io/simplus.js#scratch  (It may takes few minutes)
3. Simplus blocks are located in "More Blocks" tab and you can drag and drop them to the right scene
4. In order to use the sample project, from the top menu click on  `File` then `load project` and select the `simplus_scratch.sbx` file from `simplus_vrep/client/scratch`

![Scratch sample code](docs/img/scratch.png?raw=true "Scratch Simplus extention")


