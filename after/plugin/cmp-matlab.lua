local ok, cmp = pcall(require, "cmp")

if ok then
	cmp.register_source("cmp_matlab", require("cmp-matlab").new())
end
