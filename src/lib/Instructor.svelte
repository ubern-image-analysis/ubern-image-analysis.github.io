<!-- Generates a tile introducing an instructor + their office hours -->
<script>
  export let name = '';
  export let role = 'Instructor';
  export let email = null;
  export let officeHours = [];
  export let src = '';
</script>

<div class="profile-image-container">
  <img {src} alt={name} class="profile-image" />
  <div class="instructor-name">{name}</div>
  <div class="instructor-info">{role}</div>
  {#if email != null}
    <div class="instructor-info"><a href="mailto:{email}">{email}</a></div>
  {/if}
  {#if officeHours.length > 0}
    <div class="office-hours">Office Hours:</div>
  {/if}
  {#each officeHours as { when, where, url }}
    <div class="instructor-info">
      {when}
      {#if url}
        <a href={url} target="_blank">{where}</a>
      {:else}
        {where}
      {/if}
    </div>
  {/each}
</div>

<style>
  .profile-image-container {
    display: inline-block;
    text-align: center;
    margin: 10px;
    width: 200px;
  }

  .profile-image {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    object-fit: cover;
  }

  .instructor-name {
    font-weight: bold;
    margin-top: 10px;
    font-size: 1.1em;
  }

  .instructor-info {
    font-size: 0.9em;
    color: #555;
  }

  .office-hours {
    margin-top: 8px;
    font-weight: 600;
    font-size: 0.9em;
  }

  a {
    color: #005ccc;
    text-decoration: none;
  }

  a:hover {
    text-decoration: underline;
  }
</style>
