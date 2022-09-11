import object

external fn react_create_element(elem_type, props, children) -> Nil =
  "react" "createElement"

pub external fn use_state(state: state) -> #(state, fn(state) -> Nil) =
  "react" "useState"

pub fn create_element(elem_type, props, children) -> Nil {
  object.from_entries(props)
  |> react_create_element(elem_type, _, children)
}
