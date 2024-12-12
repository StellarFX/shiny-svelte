<script lang="ts">
  import { getCounterReducer } from "./CounterReducer.svelte";

  const reducer = getCounterReducer();

  const double = () => {
    Shiny.setInputValue!("double", reducer.count, { priority: "event" });
  };
</script>

<button onclick={double}>
  Click to double: {reducer.count}
</button>
