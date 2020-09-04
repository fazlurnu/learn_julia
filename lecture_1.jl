### A Pluto.jl notebook ###
# v0.11.12

using Markdown
using InteractiveUtils

# ╔═╡ 2896ea04-ee54-11ea-262b-157742a08d0f
begin
	using Images
	philip = load("philip.jpg")
end

# ╔═╡ 12e9205a-ee54-11ea-345e-9312dd2600f3
url = "https://i.imgur.com/VGPeJ6s.jpg"

# ╔═╡ 2408ed7c-ee54-11ea-07ce-9db89f4ed78b
download(url, "philip.jpg")

# ╔═╡ 30fc3320-ee54-11ea-2a7e-2d3713090ebd
typeof(philip)

# ╔═╡ 28bb5eec-ee55-11ea-17f2-4b03aa0e424b
size(philip)

# ╔═╡ 56b231ae-ee55-11ea-2ec0-55bb6c94534a
philip[1:1000,1:1000]

# ╔═╡ 80d71df0-ee55-11ea-0f7b-b5f40b69e852
begin
	(h, w) = size(philip)
	head = philip[h÷2:h, (w÷10):(9w÷10)]
end

# ╔═╡ c9329a16-ee55-11ea-3f43-31727ff7935c
[head head; head head]

# ╔═╡ d94fe052-ee55-11ea-026a-ef1890aaaa8b
[
	head reverse(head, dims=2);
 	reverse(head, dims=1) reverse(reverse(head,dims=1), dims=2)
]

# ╔═╡ 1e09cf5a-ee56-11ea-0354-91d2c9bac071
new_head = copy(head)

# ╔═╡ 437087a2-ee56-11ea-0151-ad1173439bd8
red = RGB(1,0,0)

# ╔═╡ 32636ce0-ee56-11ea-37ac-cb24e506d523
for i in 1:100
	for j in 1:300
		new_head[i,j] = red
	end
end

# ╔═╡ 649413f2-ee56-11ea-2395-c3b5098c0beb
new_head

# ╔═╡ 748ad09a-ee56-11ea-2cb9-15cefa0e1c7d
begin
	new_head_2 = copy(new_head)
	new_head_2[100:200, 1:500] .= RGB(0,0,1)
	new_head_2
end

# ╔═╡ ac8a8760-ee56-11ea-2f18-b32384a6dfde
function redify(color)
	return RGB(color.r, 0, 0)
end

# ╔═╡ cb545ebe-ee56-11ea-03d0-fb003339dfdf
begin
	color = RGB(0.9, 0.5, 0.9)
	[color, redify(color)]
end

# ╔═╡ faa0edd6-ee56-11ea-1e01-6d68eb4a77ae
redify.(philip)

# ╔═╡ 3d592396-ee57-11ea-0190-4ba69cf7369b
function blur(size)
	value = 1/(size^2)
	return ones(size, size).*value
end

# ╔═╡ 62adbb98-ee57-11ea-09e4-3f6c71d66f45
blur(10)

# ╔═╡ Cell order:
# ╠═12e9205a-ee54-11ea-345e-9312dd2600f3
# ╠═2408ed7c-ee54-11ea-07ce-9db89f4ed78b
# ╠═2896ea04-ee54-11ea-262b-157742a08d0f
# ╠═30fc3320-ee54-11ea-2a7e-2d3713090ebd
# ╠═28bb5eec-ee55-11ea-17f2-4b03aa0e424b
# ╠═56b231ae-ee55-11ea-2ec0-55bb6c94534a
# ╠═80d71df0-ee55-11ea-0f7b-b5f40b69e852
# ╠═c9329a16-ee55-11ea-3f43-31727ff7935c
# ╠═d94fe052-ee55-11ea-026a-ef1890aaaa8b
# ╠═1e09cf5a-ee56-11ea-0354-91d2c9bac071
# ╠═437087a2-ee56-11ea-0151-ad1173439bd8
# ╠═32636ce0-ee56-11ea-37ac-cb24e506d523
# ╠═649413f2-ee56-11ea-2395-c3b5098c0beb
# ╠═748ad09a-ee56-11ea-2cb9-15cefa0e1c7d
# ╠═ac8a8760-ee56-11ea-2f18-b32384a6dfde
# ╠═cb545ebe-ee56-11ea-03d0-fb003339dfdf
# ╠═faa0edd6-ee56-11ea-1e01-6d68eb4a77ae
# ╠═3d592396-ee57-11ea-0190-4ba69cf7369b
# ╠═62adbb98-ee57-11ea-09e4-3f6c71d66f45
