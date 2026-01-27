<script>
  import { getLectureMoment, fixupLink, class_data } from "$lib/classData";
  import { markdown } from "$lib/markdown";
  import MaterialsList from "$lib/MaterialsList.svelte";
  import UnitDetails from "$lib/UnitDetails.svelte";
</script>

<svelte:head>
  <title>Image Analysis: Lectures</title>
</svelte:head>

<h2>Lectures</h2>

<h3>Course Logistics</h3>
<p>
  <strong>Location:</strong>
  {class_data.location.name}<br />
  <strong>Address:</strong>
  {class_data.location.address}<br />
  <strong>Time:</strong>
  {class_data.location.time} (1 hour 45 minutes per lecture)<br />
</p>

<p>
  Lecture materials including slides, notes, and code examples will be posted
  here. Please review materials before class and bring questions to the
  discussion forum or office hours.
</p>

<!-- Generates lecture details from the yaml -->
{#each class_data.lectures as lecture, i}
  {#if !lecture.holiday}
    <UnitDetails>
      <svelte:fragment slot="title">
        {@html markdown(lecture.topic)}
        {#if lecture.instructor}
          <span style="font-size: 0.8em; color: #666; margin-left: 10px;">
            (Instructor: {lecture.instructor})
          </span>
        {/if}
      </svelte:fragment>

      <svelte:fragment slot="date"
        >{getLectureMoment(i).format("dddd, MMMM D")}</svelte:fragment
      >
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
      <svelte:fragment slot="date"
        >{getLectureMoment(i).format("dddd, MMMM D")}</svelte:fragment
      >
    </UnitDetails>
  {/if}
{/each}
