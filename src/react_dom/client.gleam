import gleam/option
import reflect

pub external type Root

pub external fn create_root(container, options: option.Option(a)) -> Root =
  "react-dom/client" "createRoot"

pub fn render(root: Root, children) -> Nil {
  root
  |> reflect.get("render")
  |> reflect.apply(root, children)
}

pub fn unmount(root: Root) -> Nil {
  root
  |> reflect.get("unmount")
  |> reflect.apply(root, [])
}
