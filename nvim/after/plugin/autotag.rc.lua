local status, autotag = pcall(require, "nvim-ts-autotag")
if (not status) then return end

--autotag.setup({
  --filetypes = {
    --'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
    --'xml',
    --'php',
    --'markdown',
    --'astro', 'glimmer', 'handlebars', 'hbs'
  --},
  --skip_tags = {
    --'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'slot',
    --'input', 'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr','menuitem'
  --}
--})

autotag.setup({})
