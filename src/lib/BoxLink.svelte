<!-- Creates a colored box link -->
<script>
  export let href = '';
  export let color = '#DC6027';
  export let external = false;
</script>

<a
  {href}
  target={external ? '_blank' : '_self'}
  rel={external ? 'noopener noreferrer' : ''}
  style="background-color: {color}"
  class="box-link"
>
  <slot />
</a>

<style>
  .box-link {
    display: inline-block;
    padding: 4px 8px;
    margin: 2px;
    color: white;
    text-decoration: none;
    border-radius: 3px;
    font-size: 0.9em;
    font-weight: 500;
  }

  .box-link:hover {
    opacity: 0.85;
  }
</style>
