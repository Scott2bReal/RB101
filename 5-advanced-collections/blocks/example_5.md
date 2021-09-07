`[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end
# => [[2, 4], [6, 8]]
`

| Line | Action            | Object                         | Side Effect | Return Value         | Return value used?                     |
| ---  | ---               | ---                            | ---         | ---                  | ---                                    |
| 1    | method call (map) | nested array                   | none        | new array            | no, but shown                          |
| 1-4  | block execution   | each sub-array                 | none        | new                  | yes, used by map to make new array     |
| 2    | method call (map) | each element of each sub-array | none        | new array            | yes, but first map call                |
| 2-4  | block execution   | "                              | none        | each element doubled | yes, by map to populate returned array |
