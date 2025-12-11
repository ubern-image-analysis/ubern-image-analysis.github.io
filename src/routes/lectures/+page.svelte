<script>
  import { getLectureMoment, fixupLink, class_data } from '$lib/classData';
  import { markdown } from '$lib/markdown';
  import MaterialsList from '$lib/MaterialsList.svelte';
  import UnitDetails from '$lib/UnitDetails.svelte';
</script>

<svelte:head>
  <title>Image Analysis: Lectures</title>
</svelte:head>

<h2>Lectures</h2>

<p>
  Lecture materials including slides, notes, and code examples will be posted here.
  Please review materials before class and bring questions to the discussion forum or office hours.
</p>

<!-- Generates lecture details from the yaml -->
{#each class_data.lectures as lecture, i}
  {#if !lecture.holiday}
    <UnitDetails>
      <svelte:fragment slot="title">
        {@html markdown(lecture.topic)}
      </svelte:fragment>

      <svelte:fragment slot="date">{getLectureMoment(i).format('dddd, MMMM D')}</svelte:fragment>
      <svelte:fragment slot="links">
        {#if lecture.materials}
          <MaterialsList materials={lecture.materials} />
        {/if}
      </svelte:fragment>
    </UnitDetails>
  {:else}
    <UnitDetails>
      <svelte:fragment slot="title">
        <em>{lecture.topic}</em>
      </svelte:fragment>
      <svelte:fragment slot="date">{getLectureMoment(i).format('dddd, MMMM D')}</svelte:fragment>
    </UnitDetails>
  {/if}
{/each}
