function solved = SolveSudoku(unsolvedBoard)
    solved = solveSudoku(unsolvedBoard);
end

function solvedBoard = solveSudoku(board)
    emptyInd = find(isnan(board));
    solvedBoard = solverec(board, emptyInd, 1, false);
end

function candidates = getCandidates(board, row, col)
    subrow = board(row, :);
    subcol = board(:, col);
    subSquareRow = (1:3) + 3 * (ceil(row / 3) - 1);
    subSquareCol = (1:3) + 3 * (ceil(col / 3) - 1);
    subBoard = board(subSquareRow, subSquareCol);
    subBoard = subBoard(:);
    refval = 1:9;
    cdrow = setdiff(refval, subrow);
    cdcol = setdiff(refval, subcol);
    cdsqr = setdiff(refval, subBoard);
    candidates = intersect(intersect(cdrow, cdcol), cdsqr);
end

function [res, solved, noSolutionFound] = solverec(board, emptyInd, ind, solved)
    if nargin < 4; solved = false; end
    noSolutionFound = false;
    if ind > numel(emptyInd);
        solved = true;
    end
    if solved
        res = board;
        return;
    end
    num = emptyInd(ind);
    column = ceil(num / 9);
    row = num - ((column - 1) * 9);
    cd = getCandidates(board, row, column);
    ncd = numel(cd);
    if ncd == 0
        noSolutionFound = true;
    else
        for k = 1:ncd;
            board(num) = cd(k);
            [res, solved, noSolutionFound] = solverec(board, emptyInd, ind + 1, solved);
            if solved; 
                return; 
            end
            if noSolutionFound
                board(num) = NaN;
            end
        end
    end
    if noSolutionFound
        board(num) = NaN;
        res = board;
        return
    end
end
