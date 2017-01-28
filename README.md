# Minetest Mod EventSystem
Version 0.1, License: MIT

## Description
This Mod adds a very simple event handling system. Using it is simpler than the
builtin-way with `core.register_on_...` and unlike it you can also remove your
functions at anytime.

You can use it in your mod by creating a new `EventHandler()`, then you can
`connect()` and `disconnect()` functions to it, and when the event occurs you
can `emit()` it. (I'll add a real API documentation soon™...)

This might be useful for APIs like a tree API: any other mod could register its
nodes (e.g. chairs) for all types of wood that are already registered (this is
not done by this mod) and then connect its functions (e.g.
`furniture.register_chair`) to the e.g. `register_new_tree`-Event. If a new tree
is registered now, a new chair will be registered too.

This would be possible without this mod of course, but it makes it easier (and I
just had this idea and realized it, because it was very simple to do :D).

## Notes
This mod has no depends, but it needs Lua 5.1 or later to run. It should be
compatible with any Minetest version, because it has no call to any function of
the Minetest Lua API.

## Bug reports and suggestions
You can report bugs and suggest ideas on [GitHub](http://github.com/lnj2/event_system/issues/new),
alternatively you can also [email](mailto:git@lnj.li) me.

## Links
* [GitHub](http://github.com/lnj2/event_system/)
