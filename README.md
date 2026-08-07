# macabre_filepath

A fork of [filepath](https://github.com/lpil/filepath) for the [macabre](https://github.com/dusty-phillips/macabre) Gleam-to-Python compiler.

The Gleam logic is copied directly from the upstream Apache-2.0 licensed
[filepath](https://github.com/lpil/filepath) package. The only change is that
the single external function, `is_windows`, is implemented as a Python binding
in `src/filepath_bindings.py` rather than Erlang/JavaScript FFI.

```sh
# not published to hex; depend on it via git in a macabre project
gleam add macabre_filepath --git git@github.com:dusty-phillips/macabre_filepath.git
```
```gleam
import filepath

pub fn main() {
  let path = filepath.join("/home/lucy", "pokemon-cards")
  // -> "/home/lucy/pokemon-cards"
}
```
