<template>
  <div>
    hi
    {{content}}
  </div>
</template>

<script>
  export default {
    props: ['initialContent'],
    data() {
      return {
        content: this.initialContent
      }
    }
  }
</script>
