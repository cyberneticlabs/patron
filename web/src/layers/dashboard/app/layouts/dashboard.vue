<template>
  <div class="flex h-screen overflow-hidden bg-neutral-950">
    <DashboardSidebar />
    <div class="flex flex-col flex-1 md:ml-[260px] h-screen overflow-hidden">
      <DashboardTopBar />
      <main class="flex-1 overflow-y-auto px-4 py-4 md:px-8 md:py-8">
        <slot />
      </main>
    </div>
  </div>
</template>

<script setup lang="ts">
useHead({
  link: [
    {
      rel: 'stylesheet',
      href: 'https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200&display=swap'
    }
  ]
})
</script>
