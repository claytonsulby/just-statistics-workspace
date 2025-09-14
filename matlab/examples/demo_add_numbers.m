% Demo: add_numbers
addpath(fullfile(fileparts(mfilename('fullpath')), '..', 'functions'));

A = 10; B = 32;
C = add_numbers(A, B);
fprintf('A + B = %g\n', C);
