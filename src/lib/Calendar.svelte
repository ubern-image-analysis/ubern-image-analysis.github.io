<!-- Generates a calendar from the lecture data in the yaml -->

<script>
  import moment from "moment";
  import BoxLink from "./BoxLink.svelte";
  import Day from "./Calendar/Day.svelte";
  import Assignments from "./Calendar/Day/Assignments.svelte";
  import Materials from "./Calendar/Day/Materials.svelte";
  import Topic from "./Calendar/Day/Topic.svelte";
  import Week from "./Calendar/Week.svelte";

  import {
    class_data,
    fixupLink,
    getBoxColor,
    getLectureMoment,
    lectures_by_week,
  } from "./classData";

  const weekdays = class_data.class_days.length;
</script>

<div class="calendar">
  {#each lectures_by_week as lectures, i}
    <Week
      number={i + 1}
      future={getLectureMoment(i * weekdays).isAfter(moment())}
    >
      {#each lectures as lecture, j}
        <Day
          date={getLectureMoment(i * weekdays + j).format("ddd, MMM D")}
          holiday={!!lecture.holiday}
          even={j % 2 == 0}
        >
          <Topic>
            {#if lecture.holiday}
              <em>{lecture.topic}</em>
            {:else}
              {lecture.topic}
            {/if}
            {#if lecture.instructor}
              <div style="font-size: 0.9em; color: #666; margin-top: 4px;">
                Instructor: {lecture.instructor}
              </div>
            {/if}
            {#if lecture.location}
              <div style="font-size: 0.85em; color: #b03a2e; margin-top: 4px;">
                Location: {lecture.location}
              </div>
            {/if}
            {#if lecture.materials && lecture.materials.upload}
              <div style="font-size: 0.85em; color: #b03a2e; margin-top: 4px;">
                Assignment upload due by end of day
              </div>
            {/if}
          </Topic>
          {#if lecture.materials}
            <Materials>
              {#each Object.entries(lecture.materials) as [type, url]}
                <BoxLink
                  href={fixupLink(url)}
                  color={getBoxColor(type)}
                  external={url.startsWith("http")}
                >
                  {type}
                </BoxLink>
              {/each}
            </Materials>
          {:else}
            <Materials />
          {/if}
          {#if lecture.assignments}
            <Assignments>
              {#each lecture.assignments as assignment}
                {#if assignment === 0}
                  <a
                    href="https://classroom.github.com/a/uYEGH1wE"
                    target="_blank">Assignment {assignment}</a
                  >
                {:else if assignment === 1}
                  <a
                    href="https://classroom.github.com/a/Ikojcd6a"
                    target="_blank">Assignment {assignment}</a
                  >
                {:else if assignment === 2}
                  <a href={fixupLink("/assignments/assign2")}
                    >Assignment {assignment}</a
                  >
                {:else if assignment === 3}
                  <a href={fixupLink("/assignments/assign3")}
                    >Assignment {assignment}</a
                  >
                {:else}
                  <span>Assignment {assignment}</span>
                {/if}
              {/each}
            </Assignments>
          {:else}
            <Assignments />
          {/if}
        </Day>
      {/each}
    </Week>
  {/each}
</div>

<style>
  .calendar {
    margin-top: 20px;
  }
</style>
