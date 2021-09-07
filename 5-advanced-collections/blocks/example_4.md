`my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
# 18
# 7
# 12
# [[18, 7], [3, 12]]`

| Line | Action             | Object                         | Side Effect | Return Value                   | Return value used?                                       |
| ---  | ---                | ---                            | ---         | ---                            | ---                                                      |
| 1    | assignment         | nested array                   | none        | object assigned to my_arr      | no                                                       |
| 1    | method call (each) | nested array                   | none        | original array                 | no                                                       |
| 1-7  | block execution    | each sub-array                 | none        | each sub-array                 | no                                                       |
| 2    | method call (each) | each element of each sub-array | none        | each element of each sub-array | no                                                       |
| 2-5  | block exectuion    | "                              | none        | "                              | no                                                       |
| 3    | conditional        | "                              | none        | boolean                        | yes, to determine if code inside conditional is executed |
| 4    | method call (puts) | "                              | none        | nil                            | no                                                       |
