# https://www.fe-siken.com/kakomon/sample20220425/b4.html

def transformSparseMatrix(matrix)
  sparseMatrix = [[], [], []]
  matrix.size.times do |i|
    matrix[0].size.times do |j|
      if matrix[i][j] != 0
        sparseMatrix[0] << i + 1
        sparseMatrix[1] << j + 1
        sparseMatrix[2] << matrix[i][j]
      end
    end
  end
  sparseMatrix
end

pp transformSparseMatrix([[3, 0, 0, 0, 0], [0, 2, 2, 0, 0], [0, 0, 0, 1, 3], [0, 0, 0, 2, 0], [0, 0, 0, 0, 1]])