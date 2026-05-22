<template>
  <header class="bg-neutral-900 border-b border-neutral-300/30 flex justify-between items-center h-16 px-6 w-full z-50 shrink-0">
    <div class="flex items-center space-x-8">
      <!-- Mobile menu -->
      <button class="md:hidden text-neutral-50">
        <span class="material-symbols-outlined">menu</span>
      </button>

      <!-- Nav links -->
      <nav class="hidden md:flex items-center space-x-6 h-16">
        <a class="h-full flex items-center text-neutral-50 font-semibold border-b-2 border-primary-400 opacity-80 transition-opacity cursor-pointer" href="#">
          Dashboard
        </a>
        <a class="h-full flex items-center text-neutral-100 hover:text-primary-400 transition-colors cursor-pointer" href="#">Tasks</a>
        <a class="h-full flex items-center text-neutral-100 hover:text-primary-400 transition-colors cursor-pointer" href="#">Employees</a>
        <a class="h-full flex items-center text-neutral-100 hover:text-primary-400 transition-colors cursor-pointer" href="#">Memory</a>
        <a class="h-full flex items-center text-neutral-100 hover:text-primary-400 transition-colors cursor-pointer" href="#">Models</a>
      </nav>
    </div>

    <div class="flex items-center space-x-6">
      <!-- System status -->
      <div class="hidden lg:flex items-center space-x-2 text-sm text-neutral-100">
        <div class="w-2 h-2 rounded-full bg-primary-400 animate-pulse"></div>
        <span>All systems operational</span>
      </div>

      <!-- Search -->
      <div class="relative hidden md:flex items-center">
        <span class="material-symbols-outlined absolute left-3 text-neutral-100 text-[20px] pointer-events-none">search</span>
        <input
          class="bg-neutral-700 border border-neutral-300/50 text-neutral-50 rounded-lg pl-10 pr-4 py-1.5 focus:outline-none focus:border-primary-400/50 focus:ring-1 focus:ring-primary-400/50 text-sm w-48 lg:w-64 placeholder-neutral-100/50 transition-colors"
          placeholder="Search..."
          type="text"
        />
      </div>

      <!-- Theme toggle -->
      <button class="text-neutral-100 hover:text-neutral-50 transition-colors flex items-center">
        <span class="material-symbols-outlined">light_mode</span>
      </button>

      <!-- Right actions -->
      <div class="flex items-center space-x-4 border-l border-neutral-300/30 pl-6">
        <button class="text-neutral-100 hover:text-neutral-50 transition-colors">
          <span class="material-symbols-outlined">grid_view</span>
        </button>
        <button class="text-neutral-100 hover:text-neutral-50 transition-colors relative">
          <span class="material-symbols-outlined">notifications</span>
          <span class="absolute top-0 right-0 w-2 h-2 bg-primary-400 rounded-full border border-neutral-900"></span>
        </button>
        <div class="w-8 h-8 rounded-full bg-[var(--patron-secondary-container)] text-[var(--patron-on-secondary-container)] flex items-center justify-center font-bold text-sm cursor-pointer border border-neutral-300/30">
          JD
        </div>
      </div>
    </div>
  </header>
</template>
