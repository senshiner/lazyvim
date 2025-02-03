local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    -- Tambahkan LazyVim dan impor plugin-nya
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- Impor/override dengan plugin kustom Anda
    { import = "plugins" }, -- Ini akan mengimpor file `plugins/`
  },
  defaults = {
    -- Secara default, hanya plugin LazyVim yang akan di-load secara lazy.
    -- Plugin kustom Anda akan di-load saat startup.
    -- Jika Anda yakin, Anda bisa mengatur ini ke `true` untuk membuat semua plugin kustom di-load secara lazy.
    lazy = false,
    -- Disarankan untuk tetap menggunakan `version=false` untuk sekarang,
    -- karena banyak plugin yang mendukung versioning memiliki rilis yang sudah kedaluwarsa,
    -- yang dapat merusak instalasi Neovim Anda.
    version = false, -- selalu gunakan commit git terbaru
    -- version = "*", -- coba instal versi stabil terbaru untuk plugin yang mendukung semver
  },
  checker = {
    enabled = true, -- periksa pembaruan plugin secara berkala
    notify = false, -- beri tahu saat ada pembaruan
  }, -- secara otomatis memeriksa pembaruan plugin
  performance = {
    rtp = {
      -- nonaktifkan beberapa plugin rtp
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
