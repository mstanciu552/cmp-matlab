# nvim-cmp matlab source

This is a simple nvim-cmp source for Matlab Completion.

# How to install
## Using `Packer`
```lua
		use({
			"hrsh7th/nvim-cmp",
			requires = {
				"mstanciu552/cmp-matlab"
			},
		})
    
    -- Or
    use "mstanciu552/cmp-matlab"
```

# How to use
Simply add as a source for `nvim-cmp`
```lua
sources = {
  { name = "cmp_matlab" },
}

```

# Todo
- [ ] Add sources for more Matlab Packages
- [ ] Add Documentation for each function
