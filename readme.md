# ▶️ Godot: Pause menu

![GitHub Tag](https://img.shields.io/github/v/tag/markhj/godot-pause-menu)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?label=license)

This is a small example which demonstrates one approach to creating a pause/in-game menu in Godot.

It's created with **Godot 4.2**. Compatibility with other versions is not guaranteed.

## 🚧 Approach

The approach is that when ``ui_cancel`` is fired (usually associated with _ESC_ key), the pause menu is invoked.
Similarly, when the event is fired again, the pause menu closes.

A key thing to notice in this approach, which is not apparent from the code, is that the ``CanvasLayer`` named ``PauseMenu``
has its ``Process`` property set to ``When Paused``.

The reason this option is chosen opposed to ``Always`` is that we avoid invisible and hard-to-notice interaction with the pause menu, for instance if you implement keyboard-based shortcuts. When the pause menu isn't visible, it is itself paused, and there's no interaction possible with it. In other words, the ``_proces`` method in the pause is _not_ running, when the pause isn't visible.
