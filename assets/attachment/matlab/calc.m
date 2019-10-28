% calc the precise result of 2^167. 
clear all; clear;

N  = 167;
result_len  = floor(log10(2^N))+1; % calc the digit of the result
result      = zeros(1, result_len); % create a blank matrix to store the result
result(1)   = 1; % 2^0 initialized result

str_result  = cell(1,N); % create N string cell to store the result of every step
last = 1; % initialized the digit of the result
fid  =fopen('result.txt','w'); % create a file (result.txt) to print the result
fprintf(fid,['## result of 2^', num2str(N),'\n']);
%
for idx = 1:N
    % multiply by 2 in every step
    result = result * 2;   
    for k = 1:last
        % advances to the higher one for every decimal one
        result(k+1) = result(k+1) + mod(floor(result(k)/10),10);
        result(k)   = mod(result(k),10);
        % store the digit of the result
        if(result(k+1) ~= 0)
            last = k + 1;
        end
    end
    % store the result via string
    str_result{idx} = strrep(num2str(result(last:-1:1)),' ', '');
    % print the result to the file (result.txt)
    fprintf(fid,['2^', num2str(idx),' = %s\n'],str_result{idx});
end
fclose(fid);

% display the finnal result
disp(['2^', num2str(idx),' = ', str_result{end}]);