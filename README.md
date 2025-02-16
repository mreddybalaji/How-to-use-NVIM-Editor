# How-to-use-NVIM-Editor



Neovim (`nvim`) is a powerful text editor that extends Vim's capabilities. Here’s how to use it efficiently in a Linux terminal for file operations:  


### **1. Opening Files**
- Open a file:  
  ```bash
  nvim filename.txt
  ```
- Open multiple files:  
  ```bash
  nvim file1.txt file2.txt
  ```
- Open Neovim without a file (scratch mode):  
  ```bash
  nvim
  ```

### **2. Basic Navigation**
- Move cursor: Use **arrow keys** or  
  - `h` → Left  
  - `l` → Right  
  - `j` → Down  
  - `k` → Up  
- Move by word:  
  - `w` → Next word  
  - `b` → Previous word  

### **3. Editing Modes**
- **Normal Mode (default):** Press `Esc`  
- **Insert Mode (for typing text):** Press `i` or `a`  
- **Command Mode (for saving, exiting, etc.):** Press `:`  

### **4. Saving & Exiting**
- Save: `:w`  
- Save & Exit: `:wq` or `ZZ`  
- Exit without saving: `:q!`  
- Save As: `:w newfile.txt`  

### **5. File Operations**
- Open a new file in the same window:  
  ```bash
  :e filename.txt
  ```
- Open a new tab:  
  ```bash
  :tabnew filename.txt
  ```
- Close current file:  
  ```bash
  :q
  ```
- Split window (horizontal & vertical):  
  ```bash
  :split filename.txt   # Horizontal
  :vsplit filename.txt  # Vertical
  ```
- Switch between splits:  
  - `Ctrl + w` then `h` (left), `l` (right), `j` (down), `k` (up)  

### **6. Searching & Replacing**
- Search: `/word` then `Enter` (Use `n` to go to the next match)  
- Replace:  
  ```bash
  :%s/old/new/g   # Replace all occurrences in the file
  :%s/old/new/gc  # Ask for confirmation before replacing
  ```

### **7. Undo & Redo**
- Undo: `u`  
- Redo: `Ctrl + r`  

### **8. Copy, Cut & Paste**
- Copy a line: `yy`  
- Cut a line: `dd`  
- Paste: `p`  
- Copy a block: `v` (visual mode) → select text → `y`  
- Cut a block: `v` → select text → `d`  

### **9. Plugin Management (Optional)**
If you want to extend Neovim with plugins, use a plugin manager like [vim-plug](https://github.com/junegunn/vim-plug).  


# SETTING UP A NEOVIM CONFIG FOR A BETTER WORKFLOW? 🚀

Yes! Let's customize Neovim to enhance your workflow: 

## **Step 1: Create a Neovim Config Directory**
Neovim uses `~/.config/nvim/init.vim` (or `~/.config/nvim/init.lua` for Lua-based configs).  
Create the config folder if it doesn't exist:  

```bash
mkdir -p ~/.config/nvim
```

## **Step 2: Create a Config File**
For a **Vim-based config**, create `init.vim`:
```bash
nvim ~/.config/nvim/init.vim
```
For a **Lua-based config**, create `init.lua`:
```bash
nvim ~/.config/nvim/init.lua
```

---

## **Step 3: Add Custom Configurations**
### **Basic Settings (Add to `init.vim` or `init.lua`)**
#### **Vim Script (`init.vim`):**
```vim
" Enable syntax highlighting
syntax on

" Enable line numbers
set number

" Enable relative line numbers
set relativenumber

" Enable auto-indentation
set autoindent
set smartindent

" Set tab width to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Enable mouse support
set mouse=a

" Enable search highlighting
set hlsearch
set incsearch

" Show matching parentheses
set showmatch

" Set better colorscheme
colorscheme desert

" Enable clipboard support (Copy/Paste to system clipboard)
set clipboard=unnamedplus
```

#### **Lua Script (`init.lua`):**
```lua
vim.opt.syntax = "on"

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.mouse = "a"

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.showmatch = true

vim.cmd("colorscheme desert")

vim.opt.clipboard = "unnamedplus"
```

---

## **Step 4: Install a Plugin Manager (vim-plug)**
Neovim doesn’t have built-in plugin management, so we’ll use [vim-plug](https://github.com/junegunn/vim-plug).  

### **Install `vim-plug`**
```bash
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### **Step 5: Add Plugins to Your Config (`init.vim`)**
Edit `~/.config/nvim/init.vim` and add:
```vim
call plug#begin('~/.vim/plugged')

" File explorer
Plug 'preservim/nerdtree'

" Status line
Plug 'vim-airline/vim-airline'

" Syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Fuzzy Finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Git Integration
Plug 'tpope/vim-fugitive'

call plug#end()
```

### **For `init.lua` (Lua-based Config)**
```lua
vim.cmd [[
call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'

call plug#end()
]]
```

---

## **Step 6: Install Plugins**
Open Neovim and run:
```vim
:PlugInstall
```

---

## **Step 7: Test It!**
Now restart Neovim and check:  
- `:NERDTreeToggle` → Opens file explorer  
- `:AirlineToggle` → Enables a cool status bar  
- `:FZF` → Opens fuzzy finder for quick file searching  

---

🚀 **Done!** You now have a better Neovim setup with syntax highlighting, auto-indentation, plugins, and a modern UI.  

# WOULD YOU LIKE MORE CUSTOMIZATION (KEYBINDINGS, LSP, AUTOCOMPLETE..)

Let's supercharge your Neovim setup with **keybindings, LSP, autocompletion, and additional enhancements**! 🚀  

---

# **🔹 Step 1: Add Keybindings**  
These shortcuts will make Neovim feel smoother.  

### **For `init.vim` (Vim-based config)**  
```vim
" Map space as leader key
let mapleader=" "

" Save file with Ctrl+S
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

" Exit Neovim with Ctrl+Q
nnoremap <C-q> :q!<CR>

" Toggle NERDTree with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>

" Split windows easily
nnoremap <leader>h :split<CR>
nnoremap <leader>v :vsplit<CR>

" Move between splits easily
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" FZF shortcut for fast file searching
nnoremap <leader>f :FZF<CR>
```

---

### **For `init.lua` (Lua-based config)**
```lua
vim.g.mapleader = " "

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

keymap("n", "<C-s>", ":w<CR>", opts)
keymap("i", "<C-s>", "<Esc>:w<CR>a", opts)
keymap("n", "<C-q>", ":q!<CR>", opts)
keymap("n", "<C-n>", ":NERDTreeToggle<CR>", opts)
keymap("n", "<leader>h", ":split<CR>", opts)
keymap("n", "<leader>v", ":vsplit<CR>", opts)
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<leader>f", ":FZF<CR>", opts)
```

---

# **🔹 Step 2: Install Language Server Protocol (LSP) for Code Intelligence**  
LSP adds **autocomplete, hover info, and real-time error checking** for multiple programming languages.

### **Install LSP Plugin**  
Add this to `init.vim`:
```vim
Plug 'neovim/nvim-lspconfig'
```

Or in `init.lua`:
```lua
vim.cmd [[ Plug 'neovim/nvim-lspconfig' ]]
```

Then **install the plugin**:  
```vim
:PlugInstall
```

---

### **Step 3: Configure LSP for C, C++, Python, and More**  
Add this to `init.lua`:
```lua
local lspconfig = require("lspconfig")

-- Enable LSP for Python
lspconfig.pyright.setup{}

-- Enable LSP for C and C++
lspconfig.clangd.setup{}

-- Enable LSP for JavaScript/TypeScript
lspconfig.tsserver.setup{}

-- Enable LSP for Rust
lspconfig.rust_analyzer.setup{}

-- Enable LSP for Bash scripts
lspconfig.bashls.setup{}
```

For `init.vim`, you need to install `coc.nvim`:
```vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
```
Then restart Neovim and run:
```vim
:PlugInstall
```

---

# **🔹 Step 4: Install Auto-Completion (nvim-cmp)**
Auto-completion will make coding smoother.

### **Install Plugins (Add to `init.vim` or `init.lua`)**
```vim
Plug 'hrsh7th/nvim-cmp'  " Main completion plugin
Plug 'hrsh7th/cmp-nvim-lsp'  " LSP completion
Plug 'hrsh7th/cmp-buffer'  " Buffer completion
Plug 'hrsh7th/cmp-path'  " Path completion
Plug 'hrsh7th/cmp-cmdline'  " Command-line completion
Plug 'L3MON4D3/LuaSnip'  " Snippet engine
```

Then install plugins:
```vim
:PlugInstall
```

### **Configure Auto-Completion in `init.lua`**
```lua
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        { name = 'path' },
    })
})
```

---

# **🔹 Step 5: Install a Better Status Line**
Install **lualine** for a modern status bar.

### **Add Plugin (`init.vim` or `init.lua`)**
```vim
Plug 'nvim-lualine/lualine.nvim'
```
Then install it:
```vim
:PlugInstall
```

### **Configure in `init.lua`**
```lua
require('lualine').setup {
    options = {
        theme = 'gruvbox',
        section_separators = '',
        component_separators = '',
    }
}
```

---

# **🔹 Step 6: Install a Better File Explorer**
Use **nvim-tree** instead of NERDTree.

### **Add Plugin**
```vim
Plug 'kyazdani42/nvim-tree.lua'
```
Then install it:
```vim
:PlugInstall
```

### **Configure nvim-tree in `init.lua`**
```lua
require("nvim-tree").setup()
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
```

---

# **🔹 Step 7: Install a Colorscheme**
Use **gruvbox** for a modern look.

### **Add Plugin**
```vim
Plug 'morhetz/gruvbox'
```
Then install it:
```vim
:PlugInstall
```

### **Enable Gruvbox**
```vim
colorscheme gruvbox
set background=dark
```

---

# **🎯 Final Steps**
1. **Restart Neovim**
2. Run `:PlugInstall`  
3. Test features:
   - **File Explorer**: Press `Ctrl + n`
   - **Autocomplete**: Start typing code
   - **LSP**: Hover over variables  
   - **Fuzzy Finder**: Press `<leader> f`

---

🚀 **Neovim is now a fully-featured IDE!** 😃

## **Summary of Files**
| File Name               | Path                         | Purpose |
|-------------------------|-----------------------------|---------|
| `example.txt`          | `~/example.txt`             | Sample data file |
| `init.vim`             | `~/.config/nvim/init.vim`   | Neovim configuration |
| `install_vim_plug.sh`  | `~/install_vim_plug.sh`     | Script to install vim-plug |
