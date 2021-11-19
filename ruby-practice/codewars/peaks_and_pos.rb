=begin

In this kata, you will write a function that returns the positions and the
values of the "peaks" (or local maxima) of a numeric array.

For example, the array arr = [0, 1, 2, 5, 1, 0] has a peak at position 3 with a
value of 5 (since arr[3] equals 5).

The output will be returned as an object with two properties: pos and peaks.
Both of these properties should be arrays. If there is no peak in the given
array, then the output should be {pos: [], peaks: []}.

Example: pickPeaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]) should return {pos: [3,
7], peaks: [6, 3]} (or equivalent in other languages)

All input arrays will be valid integer arrays (although it could still be
empty), so you won't need to validate the input.

The first and last elements of the array will not be considered as peaks (in the
context of a mathematical function, we don't know what is after and before and
therefore, we don't know if it is a peak or not).

Also, beware of plateaus !!! [1, 2, 2, 2, 1] has a peak while [1, 2, 2, 2, 3]
and [1, 2, 2, 2, 2] do not. In case of a plateau-peak, please only return the
position and value of the beginning of the plateau. For example: pickPeaks([1,
2, 2, 2, 1]) returns {pos: [1], peaks: [2]} (or equivalent in other languages)

Have fun!

Input: Array of integers
Output: Hash, keys: peaks and pos, values are arrays

Rules:
  All input will be arrays of integers, but could be empty
  First and last elements don't count
  Return first element of plateaus

Data Structure: Array, Hash

Algorithm: (original almost gets it, must account for plateaus continuing to end
of array though)

  init pos = []
  init peaks = []
  for each num in input array (with index)
    if idx is in range of 1..second to last index of array
      if num > num at previous index and num at next index isn't bigger
        push idx to pos and num to peaks
  return hash

  final_plateau_check(array, num, idx)

=end

def fake_plateau?(array, num, idx)
  array[idx..-1].each do |number|
    return false if number < num || number.nil?
    return true if number > num || number.nil?
  end
end

def pick_peaks(array)
  pos = []
  peaks = []
  p array
  array.each_with_index do |num, idx|
    if (1..array.size - 2).include?(idx)
      if (num > array[idx - 1]) && (array[idx + 1] < num)
        pos << idx
        peaks << num
      elsif (num > array[idx - 1]) && (array[idx + 1] == num)
        pos << idx unless fake_plateau?(array, num, idx)
        peaks << num unless fake_plateau?(array, num, idx)
      end
    end
  end
  { 'pos' => pos, 'peaks' => peaks }
end

p pick_peaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]) == { 'pos' => [3, 7], 'peaks' => [6, 3] }
