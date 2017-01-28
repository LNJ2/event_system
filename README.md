# Minetest Mod EventSystem
Version 0.1, Status: alpha - might has bugs, License: MIT

## Description
This Mod adds a very simple event handling system. Using it is simpler than
manually creating the functions as in the builtin-way (`core.register_on_...()`)
and unlike it any mod is also able to remove single functions and emit all
functions at anytime.

You can use it in your mod by creating a new `EventHandler()`, then you can
`connect(...)` and `disconnect(...)` functions to it, and when the event occurs
you can `emit(...)` it. (I'll add a real API documentation soon™...)

This might be useful for APIs like a tree API: any other mod could register its
nodes (e.g. chairs) for all types of wood that are already registered (this is
not done by this mod) and _then_ connect its functions (e.g.
`furniture.register_chair_from_treedef(name, def)`, `furniture.register_table_from_treedef(name, def)`)
to the new_tree_registered-Event by the tree mod. If a new tree is registered now,
a new chair and table will be registered, too.

The parameters are also no problem: you can just give them to the `emit()`
function and they will be passed to all connected functions.

Of course this would be possible without this mod, too, but it makes it easier
(and I just had this idea and realized it, because it was so simple :D).

## Notes
This mod has no depends, but it needs Lua 5.1 or later to run. It should be
compatible with any Minetest version, because it has no single call to the
Minetest Lua API.

## Bug reports and suggestions
You can report bugs and suggest ideas on [GitHub](http://github.com/lnj2/event_system/issues/new),
alternatively you can also [email](mailto:git@lnj.li) me.

## Links
* [GitHub](http://github.com/lnj2/event_system/)
