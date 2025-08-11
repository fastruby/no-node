export const sayHello = (to: string) => {
  document.body.insertAdjacentText("afterbegin", `Hello ${to}!`);
};
