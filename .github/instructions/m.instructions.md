---
applyTo: "**/*.m"
---

# Writing MATLAB files in this workspace

This workspace follows a simple structure for clarity:

- `matlab/functions/` — function files (`.m`) with one primary function per file. The file name should match the function name.
- `matlab/examples/` — scripts (`.m`) showing usage. Scripts execute top-to-bottom and don’t define function signatures.
- `matlab/tests/` — MATLAB unit tests using `matlab.unittest` and the `runtests` runner.

## Function template (save as `matlab/functions/add_numbers.m`)

```matlab
function c = add_numbers(a, b)
%ADD_NUMBERS Add two numbers with basic input validation.
%   c = ADD_NUMBERS(a, b) returns a + b. Throws if inputs are non-numeric
%   or empty. Accepts scalars or arrays of compatible size.

    arguments
        a {mustBeNumeric}
        b {mustBeNumeric}
    end

    c = a + b;
end
```

## Example script (save as `matlab/examples/demo_add_numbers.m`)

```matlab
% Demo: add_numbers
addpath(fullfile(fileparts(mfilename('fullpath')), '..', 'functions'));

A = 10; B = 32;
C = add_numbers(A, B);
fprintf('A + B = %g\n', C);
```

Run it in MATLAB:

- In MATLAB: open the script and press Run.
- From CLI: `matlab -batch "run('matlab/examples/demo_add_numbers.m')"`

## Unit test (save as `matlab/tests/test_add_numbers.m`)

```matlab
classdef test_add_numbers < matlab.unittest.TestCase
    methods (Test)
        function addsScalars(testCase)
            addpath(fullfile(fileparts(mfilename('fullpath')), '..', 'functions'));
            testCase.verifyEqual(add_numbers(2,3), 5);
        end
        function addsArrays(testCase)
            addpath(fullfile(fileparts(mfilename('fullpath')), '..', 'functions'));
            testCase.verifyEqual(add_numbers([1 2],[3 4]), [4 6]);
        end
    end
end
```

Run tests:

- In MATLAB: `runtests('matlab/tests')`
- From CLI: `matlab -batch "results = runtests('matlab/tests'); disp(table(results)); assertSuccess(results);"`

## Style guidelines

- One primary function per file; supporting local functions can go at the end of the same file.
- Use `arguments` blocks for validation when possible.
- Prefer vectorized operations over loops, unless clarity suffers.
- Include short header comments for purpose, inputs, outputs, and edge cases.
