function c = add_numbers(a, b)
%ADD_NUMBERS Add two numbers with basic input validation.
%   c = ADD_NUMBERS(a, b) returns a + b. Accepts scalars or arrays of
%   compatible size. Throws if inputs are non-numeric.

    arguments
        a {mustBeNumeric}
        b {mustBeNumeric}
    end

    c = a + b;
end