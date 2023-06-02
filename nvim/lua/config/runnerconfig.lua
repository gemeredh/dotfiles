require('code_runner').setup({
  mode = "toggleterm",
  startinsert = true,
  term ={
    size = 6

  },
  -- put here the commands by filetype
  filetype = {
    java = {
      "cd $dir &&",
      "javac $fileName &&",
      "java $fileNameWithoutExt"
    },
    python = "python3 -u",
    typescript = "deno run",
    rust = {
      "cd $dir &&",
      "rustc $fileName &&",
      "$dir$fileNameWithoutExt"
    },
    go = "go run $fileName"
  },
})
