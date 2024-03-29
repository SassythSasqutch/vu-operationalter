Using the terrain from the classic singleplayer mission Thunder Run, this is a Conquest Large map based off the events of the mission. It is a *showcase of how to convert a singleplayer or COOP terrain into multiplayer* taking an approach based off Janssent's idea - it loads a multiplayer map, and replaces the terrain and other assets. I've also made some objective points and spawn bases, so that this is feasable as a Conquest Large map. This will be done using MapEditor.

There are two braches. One branch (**main-not_for_mp**) has not been adapted for multiplayer, and so *still includes 2D vegetation and low-res buildings with no collisions*. The other branch (**main-for_mp**) has replaced these with *high-res assets with collisions feasible for MP*. If you want to look around the SP map as it is in the missions, use main-not_for_mp. If you want to use this on a server to play CQL, use main-for_mp.

To load this, write '*mp_012 ConquestLarge0 1*' in your MapList.txt. This map is using Operation Firestorm as a foundation. It requires the Back to Karkand DLC for some map assets and the BTR-90.

**MAKE SURE YOU SET '-highResTerrain' AS A LAUNCH COMMAND FOR YOUR SERVER** (you should do this anyway). Without this, the terrain collision gets trippy.

It is important to also note that you cannot load this map consecutively - if you want to play two or more rounds of it, you have to stick another map in between (of course, it can't be Operation Firestorm).

To convert this to other singleplayer or COOP terrains, some work is needed looking through the EBX dump to replace GUIDs - I've chosen to use InstanceLoadHandlers instead of iterating through all instances and looking for blueprint names to speed up the script, but this does mean that more work is needed to convert this for use with different maps. The comments in the code should be useful in doing this. Otherwise, ask me on Discord as @SassythSasqutch#9081.
