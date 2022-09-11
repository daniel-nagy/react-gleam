import reflect

pub external type Element

pub external fn add_event_listener(
  element: Element,
  event: String,
  callback: fn() -> Nil,
) -> Nil =
  "" "Element.prototype.addEventListener.call"

pub fn set_inner_html(element: Element, html: String) -> Nil {
  reflect.set(element, "innerHTML", html)
  Nil
}
