# vis-zig

A vis plugin for Zig. 
As of now, I just adapted the function from
[vis-go](https://gitlab.com/timoha/vis-go) to call `zig fmt` on save.


## Installation

```sh
; git clone https://git.sansfontieres.com/~romain/vis-zig "$HOME/.config/vis/plugins/vis-git"
```


In your `visrc.lua` add the following line.

```lua
require('plugins/vis-zig')
```
