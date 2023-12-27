Improvements over Sheepolution's base game tutorial:

- The game now doesn't crash when stress testing the shooting of bullets, at least manually
- The player now can't move to either the right or the left when already at either corner of the window and pressing both arrowkeys
- The bullets now shoot from the bottom centre of the player's sprite, instead of the top left corner
- The `Player`, `Enemy` and `Bullet` classes are now part of a base class `Entity` that handles constructor, update and draw operations
- The LOVE2D modules unused by the game have been offloaded from the executable

## Credits

- classic.lua by [rxi](https://github.com/rxi/classic)
