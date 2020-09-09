function fibb(n)
    if (n<=1)
        return n
    else
        return (fibb(n-1) + fibb(n-2))
    end
end

for i in 1:25
    @time fibb(30)
end