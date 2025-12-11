<!-- Represents one day in the calendar -->
<script>
  export let date = '';
  export let header = false;
  export let holiday = false;
  export let even = false;
  export let future = false;
</script>

<div
  class="day"
  class:header
  class:holiday
  class:even
  class:future
>
  <div class="date">{date}</div>
  <slot />
</div>

<style>
  .day {
    display: grid;
    grid-template: 'date topic materials assignments' / 0.5fr 1.2fr 0.9fr 0.9fr;
    column-gap: 4px;
    padding: 8px 4px;
    border-bottom: 1px solid #ddd;
    align-items: center;
  }

  .header {
    padding-bottom: 0;
    font-weight: bold;
    align-items: flex-end;
    font-family: sans-serif;
  }

  .holiday {
    background-color: #f5f5f5;
  }

  .even {
    background-color: #fafafa;
  }

  .future {
    opacity: 0.6;
  }

  .date {
    grid-area: date;
    font-weight: 500;
    font-size: 0.9em;
    color: #333;
  }

  .header .date {
    font-weight: bold;
  }
</style>
