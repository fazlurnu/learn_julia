### A Pluto.jl notebook ###
# v0.11.12

using Markdown
using InteractiveUtils

# ╔═╡ 2808e18c-f10b-11ea-0b91-0388565c59b3
md"""
 # Recursion in Julia
"""

# ╔═╡ bc35ae4a-f10a-11ea-016d-53bbaa057481
function fibb(n)
	if (n <= 1)
		return n
	else
		return (fibb(n-1) + fibb(n-2))
	end
end

# ╔═╡ 60d346d8-f10b-11ea-2f93-d723a0de7bdc
mod(12, 10)

# ╔═╡ e0cb6218-f10a-11ea-1e40-19cff949f8aa
function sum_digit(x)
	if (x == 0)
		return x
	else
		return (mod(x, 10) + sum_digit(x ÷ 10))
	end
end

# ╔═╡ Cell order:
# ╠═2808e18c-f10b-11ea-0b91-0388565c59b3
# ╠═bc35ae4a-f10a-11ea-016d-53bbaa057481
# ╠═60d346d8-f10b-11ea-2f93-d723a0de7bdc
# ╠═e0cb6218-f10a-11ea-1e40-19cff949f8aa
