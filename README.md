Using the terrain from the classic singleplayer mission Thunder Run, this is a Conquest Large map based off the events of the mission. It is a *showcase of how to convert a singleplayer or COOP terrain into multiplayer* taking Janssent's approach - it loads a multiplayer map, and replaces the terrain and other assets. I've also made some objective points and spawn bases, so that this is feasable as a Conquest Large map. This will be done using MapEditor.

To load this, write '*mp_012 ConquestLarge0 1*' in your MapList.txt. This map is using Operation Firestorm as a foundation. It requires the Back to Karkand DLC for some map assets and the BTR-90.

**MAKE SURE YOU SET '-highResTerrain' AS A LAUNCH COMMAND FOR YOUR SERVER** (you should do this anyway). Without this, the terrain collision gets trippy.

To convert this to other singleplayer or COOP terrains, some work is needed looking through the EBX dump to replace GUIDs - I've chosen to use InstanceLoadHandlers instead of iterating through all instances and looking for blueprint names to speed up the script, but this does mean that more work is needed to convert this for use with different maps. The comments in the code should be useful in doing this. Otherwise, ask me on Discord as @SassythSasqutch#9081.
