<template>
  <div class="space-y-6">
    <!-- Stats row -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
      <div class="bg-neutral-800 rounded-xl p-6 border border-neutral-300/20">
        <p class="text-neutral-100 text-sm mb-1">Active Tasks</p>
        <p class="text-3xl font-bold text-neutral-50">142</p>
      </div>
      <div class="bg-neutral-800 rounded-xl p-6 border border-neutral-300/20">
        <p class="text-neutral-100 text-sm mb-1">Employees</p>
        <p class="text-3xl font-bold text-neutral-50">38</p>
      </div>
      <div class="bg-neutral-800 rounded-xl p-6 border border-neutral-300/20">
        <p class="text-neutral-100 text-sm mb-1">Models</p>
        <p class="text-3xl font-bold text-neutral-50">7</p>
      </div>
      <div class="bg-neutral-800 rounded-xl p-6 border border-neutral-300/20">
        <p class="text-neutral-100 text-sm mb-1">Uptime</p>
        <p class="text-3xl font-bold text-primary-400">99.9%</p>
      </div>
    </div>

    <!-- Main content -->
    <div class="bg-neutral-800 rounded-xl p-6 border border-neutral-300/20">
      <h2 class="text-xl font-semibold text-neutral-50 mb-4">Dashboard</h2>
      <p class="text-neutral-100">Welcome to the Patron admin portal.</p>
    </div>
  </div>
</template>

<script setup lang="ts">
definePageMeta({
  layout: 'dashboard'
})
</script>
