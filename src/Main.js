export const define = name => render => () => {
  class HalogenElement extends HTMLElement {
    connectedCallback() {
      render(this)();
    }
  }
  customElements.define(name, HalogenElement);
};
