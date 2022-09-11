import dom/element
import gleam/int
import gleam/javascript.{dereference, make_reference, set_reference}
import gleam/string

pub fn setup_counter(element: element.Element) {
  let counter = make_reference(0)

  let set_counter = fn(count: Int) {
    set_reference(counter, count)

    count
    |> int.to_string
    |> string.append("count is ", _)
    |> element.set_inner_html(element, _)
  }

  let on_click = fn() { set_counter(dereference(counter) + 1) }

  element.add_event_listener(element, "click", on_click)

  set_counter(0)
}
