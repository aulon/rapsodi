%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Matlab function 'out_to_prob' %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% @parameters:
%   - x: output vector generated by the network
% @return:
%   - y: output vector converted into a probability vector

% This function converts a network output to a probability vector

function y = out_to_prob(x)
  F = 4;   % favor factor
  y = zeros(length(x),1);
  for i=1:length(x)
      if x(i) < 0
          x(i) = 0;
      else
          x(i) = x(i)^F;
      end
  end
  s = sum(x(:));
  y(:) = (1/s)*x(:);
end