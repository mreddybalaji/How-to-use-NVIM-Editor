# How-to-use-NVIM-Editor



Neovim (`nvim`) is a powerful text editor that extends Vim's capabilities. Here’s how to use it efficiently in a Linux terminal for file operations:  
setting up a Neovim config for a better workflow? 🚀

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

setting up a Neovim config for a better workflow? 🚀
