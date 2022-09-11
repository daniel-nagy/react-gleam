import gleam/int
import gleam/string
import react
import react_dom_intrinsic.{button}

pub fn counter() {
  let #(count, set_count) = react.use_state(0)

  count
  |> int.to_string
  |> string.append("count is ", _)
  |> button([#("onClick", fn() { set_count(count + 1) })], _)
}
