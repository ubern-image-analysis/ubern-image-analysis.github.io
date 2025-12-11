<!-- Represents one week in the calendar (and creates a header as appropriate) -->
<script>
  import Day from './Day.svelte';
  import Assignments from './Day/Assignments.svelte';
  import Materials from './Day/Materials.svelte';
  import Topic from './Day/Topic.svelte';

  export let number = 1;
  export let future = false;
</script>

<Day date="Week {number}" header {future}>
  {#if number == 1}
    <Topic>Topic</Topic>
    <Materials>Materials</Materials>
    <Assignments>Assignments</Assignments>
  {/if}
</Day>

<slot />
