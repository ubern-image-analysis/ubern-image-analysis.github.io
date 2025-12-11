<!-- NavBar shown at the top of all pages -->
<script>
  import { base, slack, github } from '$lib/constants';
  import NavbarBase from '$lib/Navbar/NavbarBase.svelte';
  import NavList from '$lib/Navbar/NavList.svelte';
  import NavListItem from '$lib/Navbar/NavListItem.svelte';
</script>

<NavbarBase>
  <NavList>
    <NavListItem href={base || '/'} big>Image Analysis</NavListItem>
  </NavList>
  <NavList>
    <NavListItem href="{base}/lectures">Lectures</NavListItem>
    <NavListItem href="{base}/assignments">Assignments</NavListItem>
    <NavListItem href="{base}/course_info">Course Info</NavListItem>
    <NavListItem href={slack} external>Slack</NavListItem>
    <NavListItem href={github} external>GitHub Classroom</NavListItem>
  </NavList>
</NavbarBase>
