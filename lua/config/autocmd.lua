vim.api.nvim_create_autocmd({ 'InsertLeave', 'TextChanged' }, {
  pattern = '*.*',
  command = 'update',
})


vim.api.nvim_create_autocmd('VimEnter', {
  pattern = '*',
  callback = function()
    local formatters = require('config.formatters')
    local linters = require('config.linters')

    local function mason_autoinstall(packages)
      local registry = require 'mason-registry'

      for _, pkg_name in ipairs(packages) do
        if type(pkg_name) == 'table' then
          pkg_name = pkg_name.name
        end

        local ok, pkg = pcall(registry.get_package, pkg_name)

        if ok then
          if not pkg:is_installed() then
            pkg:install()
          else
            pkg:check_new_version(function(success)
              if success then
                pkg:install()
              end
            end)
          end
        end
      end
    end


    mason_autoinstall(formatters)
    mason_autoinstall(linters)
  end,
})
