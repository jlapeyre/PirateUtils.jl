module PirateUtils

"""
    (f^n)

Return a function that makes `n` calls to function `f`. When calling
`f^n`, the output
of each call to `f` is passed as the first argument to the next call.
Remaining arguments are passed unchanged on each iteration

# Examples
Find a solution to `x == cos(x)`

```
julia> x = (cos^100)(1.0)
0.7390851332151607

julia> cos(x) == x
true
```
"""
function Base.:(^)(f::Function, n::Integer)
    iszero(n) && return (x, args...) -> x
    n < 0 && throw(DomainError(n, "n must be non-negative"))
    return function(x, args...)
        for i in 1:n
            x=f(x, args...)
        end
        x
    end
end


(g::Base.Generator)(f=identity) = foreach(identity, g)

end
