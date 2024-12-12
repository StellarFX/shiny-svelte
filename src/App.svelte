<script lang="ts">
  import svelteLogo from "./assets/svelte.svg";
  import shinyLogo from "./assets/shiny.svg";
  import viteLogo from "/vite.svg";
  import Counter from "./lib/Counter.svelte";
  import { setCounterReducer } from "./lib/CounterReducer.svelte";

  setCounterReducer();
</script>

<main>
  <div>
    <a href="https://shiny.posit.co" target="_blank" rel="noreferrer">
      <img src={shinyLogo} class="logo shiny" alt="Shiny Logo" />
    </a>
    <a href="https://vite.dev" target="_blank" rel="noreferrer">
      <img src={viteLogo} class="logo" alt="Vite Logo" />
    </a>
    <a href="https://svelte.dev" target="_blank" rel="noreferrer">
      <img src={svelteLogo} class="logo svelte" alt="Svelte Logo" />
    </a>
  </div>
  <h1>Shiny + Vite + Svelte</h1>

  <div class="card">
    <Counter />
  </div>

  <p class="read-the-docs">Click on the Shiny, Vite and Svelte logos to learn more</p>
</main>

<style>
  .logo {
    height: 6em;
    padding: 1.5em;
    will-change: filter;
    transition: filter 300ms;
  }
  .logo:hover {
    filter: drop-shadow(0 0 2em #646cffaa);
  }
  .logo.svelte:hover {
    filter: drop-shadow(0 0 2em #ff3e00aa);
  }
  .logo.shiny:hover {
    filter: drop-shadow(0 0 2em #0088DAaa);
  }
  .read-the-docs {
    color: #888;
  }
</style>
