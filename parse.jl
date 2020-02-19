
# Parses something like this
# [0, 0, 0] black
function parsecolorline(s::AbstractString) :: (Array{UInt8}, String)
    s = s[2:end]
    (values, color) = split(s, "] ")

    values = split(values, ", ") .|> s -> Base.parse(UInt8, s)

    (
     values,
     color
    )
end
