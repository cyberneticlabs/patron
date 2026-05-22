<template>
  <nav
    class="hidden md:flex fixed left-0 top-0 h-full w-[260px] flex-col bg-neutral-800 border-r border-neutral-300/30 z-40 py-6"
  >
    <!-- Logo -->
    <div class="px-6 mb-8 flex items-center space-x-3">
      <div class="w-8 h-8 rounded bg-primary-400 flex items-center justify-center text-neutral-900">
        <span class="material-symbols-outlined" style="font-variation-settings: 'FILL' 1; font-size: 20px;">dataset</span>
      </div>
      <div>
        <div class="text-lg font-semibold text-neutral-50">Patron OSS</div>
        <div class="text-neutral-100 text-xs opacity-70">V0.4.2-alpha</div>
      </div>
    </div>

    <!-- Nav sections -->
    <div class="flex-1 overflow-y-auto px-4 space-y-6">
      <!-- WORKSPACE -->
      <div>
        <p class="text-xs font-semibold uppercase tracking-widest text-neutral-100 opacity-60 mb-3 px-3">Workspace</p>
        <ul class="space-y-1">
          <li>
            <a
              class="flex items-center space-x-3 px-3 py-2 rounded-lg font-semibold bg-[var(--patron-secondary-container)] text-[var(--patron-on-secondary-container)] transition-all duration-100 cursor-pointer"
              href="#"
            >
              <span class="material-symbols-outlined text-[20px]">dashboard</span>
              <span>Overview</span>
            </a>
          </li>
          <li>
            <a
              class="flex items-center justify-between px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-all duration-100 cursor-pointer"
              href="#"
            >
              <div class="flex items-center space-x-3">
                <span class="material-symbols-outlined text-[20px]">assignment_late</span>
                <span>Active tasks</span>
              </div>
              <span class="bg-neutral-400 text-neutral-100 text-xs px-2 py-0.5 rounded-full">7</span>
            </a>
          </li>
          <li>
            <a
              class="flex items-center space-x-3 px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-all duration-100 cursor-pointer"
              href="#"
            >
              <span class="material-symbols-outlined text-[20px]">history</span>
              <span>Task history</span>
            </a>
          </li>
          <li>
            <a
              class="flex items-center space-x-3 px-3 py-2 text-primary-400 rounded-lg hover:bg-neutral-600 transition-all duration-100 cursor-pointer opacity-90"
              href="#"
            >
              <span class="material-symbols-outlined text-[20px]">add_box</span>
              <span>New task</span>
            </a>
          </li>
        </ul>
      </div>

      <!-- PLATFORM -->
      <div>
        <p class="text-xs font-semibold uppercase tracking-widest text-neutral-100 opacity-60 mb-3 px-3">Platform</p>
        <ul class="space-y-1">
          <li>
            <a
              class="flex items-center space-x-3 px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-all duration-100 cursor-pointer"
              href="#"
            >
              <span class="material-symbols-outlined text-[20px]">smart_toy</span>
              <span>Employee pool</span>
            </a>
          </li>
          <li>
            <a
              class="flex items-center space-x-3 px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-all duration-100 cursor-pointer"
              href="#"
            >
              <span class="material-symbols-outlined text-[20px]">hub</span>
              <span>SynkVault</span>
            </a>
          </li>
          <li>
            <a
              class="flex items-center justify-between px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-all duration-100 cursor-pointer"
              href="#"
            >
              <div class="flex items-center space-x-3">
                <span class="material-symbols-outlined text-[20px]">model_training</span>
                <span>Models</span>
              </div>
              <span
                class="text-xs px-2 py-0.5 rounded-full flex items-center space-x-1 border"
                style="background: color-mix(in srgb, var(--patron-tertiary-container) 20%, transparent); color: var(--patron-tertiary-container); border-color: color-mix(in srgb, var(--patron-tertiary-container) 30%, transparent);"
              >
                <span class="w-1.5 h-1.5 rounded-full inline-block" style="background: var(--patron-tertiary-container);"></span>
                <span>1 warn</span>
              </span>
            </a>
          </li>
          <li>
            <a
              class="flex items-center space-x-3 px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-all duration-100 cursor-pointer"
              href="#"
            >
              <span class="material-symbols-outlined text-[20px]">payments</span>
              <span>Cost tracker</span>
            </a>
          </li>
        </ul>
      </div>

      <!-- ADMIN -->
      <div>
        <p class="text-xs font-semibold uppercase tracking-widest text-neutral-100 opacity-60 mb-3 px-3">Admin</p>
        <ul class="space-y-1">
          <li>
            <a
              class="flex items-center space-x-3 px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-all duration-100 cursor-pointer"
              href="#"
            >
              <span class="material-symbols-outlined text-[20px]">group</span>
              <span>Team &amp; RBAC</span>
            </a>
          </li>
          <li>
            <a
              class="flex items-center space-x-3 px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-all duration-100 cursor-pointer"
              href="#"
            >
              <span class="material-symbols-outlined text-[20px]">lock</span>
              <span>Secrets vault</span>
            </a>
          </li>
          <li>
            <a
              class="flex items-center space-x-3 px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-all duration-100 cursor-pointer"
              href="#"
            >
              <span class="material-symbols-outlined text-[20px]">receipt_long</span>
              <span>Audit log</span>
            </a>
          </li>
        </ul>
      </div>
    </div>

    <!-- Footer -->
    <div class="px-4 mt-auto pt-4 border-t border-neutral-300/30">
      <ul class="space-y-1">
        <li>
          <a
            class="flex items-center space-x-3 px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-colors cursor-pointer"
            href="#"
          >
            <span class="material-symbols-outlined text-[20px]">settings</span>
            <span>Settings</span>
          </a>
        </li>
        <li>
          <a
            class="flex items-center space-x-3 px-3 py-2 text-neutral-100 rounded-lg hover:bg-neutral-600 transition-colors cursor-pointer"
            href="#"
          >
            <span class="material-symbols-outlined text-[20px]">description</span>
            <span>Documentation</span>
          </a>
        </li>
      </ul>
    </div>
  </nav>
</template>
