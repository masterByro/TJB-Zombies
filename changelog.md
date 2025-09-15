## GBG V1.25.1

**Fixed Various Broken Items in Crafting Tables**
- The Minigun, C4 Remote, and all medical supplies were broken in the crafting table
- When obtained via `/function give:`, they functioned as intended

**Fixed Jammed Guns Bug**
- When a crossbow-based gun is shot on a laggy server there's a chance that the arrow isn't replaced properly
- Another side effect is the arrow being given to another item in the hotbar
- In the event this bug occurs, the arrow will now be automatically replenished in the gun

**Fixed Name and Damage Inconsistencies in Slowcasts**
- The Gun Name and Damage stats for slowcast projectiles could be overridden if another gun was shot before the slowcast hit a block/entity

**Fixed GBZ Spitters not Shooting Turrets**
- Since to GBZ V1.19 all spitters wouldn't properly target and shoot at turrets

**Added Headshot Detection and Stat**
- Guns can now specify a damage value for headshots only
- `headshot_damage` can be specified in the gun's custom data
- If not headshot damage value is present, the regular damage value is used instead
- This stat is currently not present in any GBG guns

