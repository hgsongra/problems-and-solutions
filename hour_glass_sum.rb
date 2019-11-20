# Find the max hourglassSum


def hourglassSum(arr)
  sumArr = []
  for i in 0..3 do
    for j in 0..3 do
      hourGlass = []
      for k in 0..2 do
        hourGlass << arr[i+k].slice(j,3)
      end
      sumArr << [hourGlass[0].reduce(:+), hourGlass[1][1], hourGlass[2].reduce(:+)].reduce(:+)
    end
  end
  sumArr.max
end

arr = [
  [1, 1, 1, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [1, 1, 1, 0, 0, 0],
  [0, 0, 2, 4, 4, 0],
  [0, 0, 0, 2, 0, 0],
  [0, 0, 1, 2, 4, 0],
]

hourglassSum(arr)