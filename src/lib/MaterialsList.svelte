<!-- Generates material links from materials data -->
<script>
  import BoxLink from './BoxLink.svelte';
  import { getBoxColor, fixupLink } from './classData';

  export let materials = {};
  export let filter = null;
  export let spacing = '2px';
</script>

<div style="display: inline; margin: {spacing};">
  {#each Object.entries(materials) as [type, url]}
    {#if !filter || filter(type)}
      <BoxLink href={fixupLink(url)} color={getBoxColor(type)} external={url.startsWith('http')}>
        {type}
      </BoxLink>
    {/if}
  {/each}
</div>
