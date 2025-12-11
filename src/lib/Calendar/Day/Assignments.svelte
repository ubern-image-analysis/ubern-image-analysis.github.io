<!-- Slots into the "Assignments" column -->

<div>
  <slot />
</div>

<style>
  div {
    grid-area: assignments;
    display: flex;
    flex-wrap: wrap;
    gap: 4px;
  }

  div :global(a) {
    color: #005ccc;
    text-decoration: none;
    font-size: 0.9em;
  }

  div :global(a:hover) {
    text-decoration: underline;
  }
</style>
