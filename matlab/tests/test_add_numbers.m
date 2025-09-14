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
