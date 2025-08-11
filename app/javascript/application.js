// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import "./controllers";
import { sayHello } from "./hello";

document.addEventListener("DOMContentLoaded", () => {
  sayHello("Ariel");
});
