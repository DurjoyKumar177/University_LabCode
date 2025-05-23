% ✅ Base Case:
% 0 এর factorial হচ্ছে 1
factorial(0, 1).

% ✅ Recursive Case:
% N > 0 হলে:
% - N1 = N - 1
% - factorial(N1, F1) → আগের সংখ্যার factorial বের করি
% - F is N * F1 → বর্তমান সংখ্যার সাথে গুন করি
factorial(N, F) :-
    N > 0,                         % N যেন 0-এর কম না হয়
    N1 is N - 1,                   % N এর এক ধাপ কম সংখ্যা বের করি
    factorial(N1, F1),             % রিকার্সিভ কল করে আগের সংখ্যার factorial বের করি
    F is N * F1.                   % বর্তমান সংখ্যার সাথে গুন করে ফলাফল বের করি

%sample: factorial(4,Result).
