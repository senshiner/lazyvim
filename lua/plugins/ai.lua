return {
  {
    'codota/tabnine-nvim',
    build = "./dl_binaries.sh", -- Script untuk mengunduh binary TabNine
    config = function()
      -- Konfigurasi opsional
      require('tabnine').setup({
        disable_auto_trigger = false, -- Aktifkan saran otomatis
        max_num_results = 5, -- Jumlah maksimal saran
      })
    end,
  },
}
