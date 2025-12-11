<!-- Creates a callout block, with an optional warning strip -->
<script>
  export let warning = false;
  export let info = false;
  export let critical = false;
</script>

<div
  class="alert"
  class:alert-warning={warning}
  class:alert-info={info}
  class:alert-critical={critical}
>
  <slot />
</div>

<style>
  .alert {
    padding: 15px;
    margin: 20px 0;
    border-left: 4px solid #ccc;
    background-color: #f9f9f9;
    overflow-x: auto;
  }

  .alert-warning {
    border-left-color: #ffc107;
    background-color: #fff3cd;
  }

  .alert-info {
    border-left-color: #2689ff;
    background-color: #e7f3ff;
  }

  .alert-critical {
    border-left-color: #dc3545;
    background-color: #f8d7da;
  }

  .alert > :global(p:first-of-type),
  .alert > :global(p:last-of-type) {
    margin: 0;
  }
</style>
