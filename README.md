<div align="center">
  <img src="https://i.ibb.co/zr6FkhM/minecraft-title.png" alt="minecraft-title" width="500px" height="auto">
</div>
<h1 align="center">Among Us In Minecraft</h1>

Among Us In Minecraft is an adapted version of the video game created by Innersloth. Made completly in Minecraft using the built in datapacks, command blocks and resource packs, it is a fully fleged version of Among Us.

## About

Made in a few weeks and heavily based off of the PheonixSC [Among Us In Minecraft](https://youtu.be/me9Tt6rK6nk?si=FWHJ7jSXu3OTtTb1), my version of Among Us In Minecraft includes things like a full recreation of the Skeld (built by my friends), a lobby area, an automatically replayable map, all tasks from the original game, sabotages, and more!

A showcase can be viewed on YouTube [here](https://youtu.be/zOq2DtjB96I?si=-OdEMwttLEOGIoHF)

## Getting Started

Head to the [releases](https://github.com/Techyte/Among-Us-Command-blocks/releases) page and download the world file.

To find the minecraft folder follow these steps (will be needed for installation later):
- On windows, type %appdata% into your search bar, open the .minecraft file
- On Mac go to finder, hold alt, click finder -> Application Support -> Minecraft

Once the world file is downloaded, Unzip and place inside the 'saves' folder inside your Minecraft folder. Opening Minecraft the world should be there. Once the world is running you can open it up to LAN for people on your network to play.

I would recommend downloading the Resource pack as well to share with you and your friends.

### Commands

Change minimum number of players allowed to begin the game (default: 4):
~~~
/scoreboard players set math numOfPlayers {number}
~~~
Change number of imposters that will be assigned at the start of each game (default: 1):
~~~
/scoreboard players set Manager noofimposters {number}
~~~
Change number of Common Tasks handed out to cremates (default: 1):
~~~
/scoreboard players set Manager commontasks {number}
~~~
Change number of Short Tasks handed out to cremates (default: 2):
~~~
/scoreboard players set Manager commontasks {number}
~~~
Change number of Long Tasks handed out to cremates (default: 2):
~~~
/scoreboard players set Manager longtasks {number}
~~~

## Setting Up with a Server

You can download the server file for each version from their entry in the [Minecraft Wiki](https://minecraft.wiki/), the version for 1.20.2 can be found [here](https://minecraft.wiki/w/Java_Edition_1.20.2).

Create a foler on your desktop called 'server', move the downloaded server.jar into that folder and run it. Once the server generates a eula.txt, open it and change it to true.

Run the server.jar again and it should open the server. Once it is open, close it and move the world file into the server folder. To enable it you will need to go into the server.properties and both change the level-name to Among Us Command Blocks and enable-command-block to true.

Included in all releases is a premade server.properties file, if you want you can use this in place of the default one, it includes things like a server resource pack, automatically enabling command blocks, the correct player cap, and more.
## Version Support

Currently the only supported Minecraft Version is 1.20.2, this is the minimum required version as the project requires the /random command introduced in this version.

## License

Distributed under the MIT license. See [LICENSE](LICENSE) for more information.
