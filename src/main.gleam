import counter
import dom/document
import gleam/option
import react
import react_dom/client as react_dom
import react_dom_intrinsic.{a, div, h1, img, p}

pub external fn load_styles() -> Nil =
  "/style.css" "default"

pub fn main() {
  document.query_selector("#app")
  |> react_dom.create_root(option.None)
  |> react_dom.render(#(
    div(
      [],
      [
        a(
          [
            #("href", "https://vitejs.dev"),
            #("target", "_blank"),
            #("key", "1"),
          ],
          img([
            #("alt", "Vite logo"),
            #("className", "logo"),
            #("src", "/vite.svg"),
          ]),
        ),
        a(
          [
            #("href", "https://developer.mozilla.org/en-US/docs/Web/JavaScript"),
            #("target", "_blank"),
            #("key", "2"),
          ],
          img([
            #("alt", "JavaScript logo"),
            #("className", "logo vanilla"),
            #("src", "/javascript.svg"),
          ]),
        ),
        h1([#("key", "3")], "Hello Vite!"),
        div(
          [#("className", "card"), #("key", "4")],
          react.create_element(counter.counter, [], Nil),
        ),
        p(
          [#("className", "read-the-docs"), #("key", "5")],
          "Click on the Vite logo to learn more",
        ),
      ],
    ),
  ))
}
