import react

pub fn a(props, children) {
  react.create_element("a", props, children)
}

pub fn button(props, children) {
  react.create_element("button", props, children)
}

pub fn div(props, children) {
  react.create_element("div", props, children)
}

pub fn h1(props, children) {
  react.create_element("h1", props, children)
}

pub fn img(props) {
  react.create_element("img", props, Nil)
}

pub fn p(props, children) {
  react.create_element("p", props, children)
}
