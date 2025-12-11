<script>
  export let href = '';
  export let external = false;
  export let big = false;
</script>

<li class:big>
  <a {href} target={external ? '_blank' : '_self'} rel={external ? 'noopener noreferrer' : ''}>
    <slot />
  </a>
</li>

<style>
  li {
    display: inline;
    margin: 0 0.5rem;
  }

  .big {
    font-size: 1.2em;
    font-weight: bold;
  }
</style>
