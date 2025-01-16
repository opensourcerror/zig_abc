const std = @import("std");

// (1+2)^2
pub fn square_of_sum(nr: u64) u64 {
    var n: u64 = nr;
    var sum: u64 = 0;
    while (n > 0) {
        sum = sum + n;
        n = n - 1;
    }
    return sum * sum;
}

//  1^2 + 2^2
pub fn sum_of_square(nr: u64) u64 {
    var sum: u64 = 0;
    var n: u64 = nr;
    while (n > 0) {
        sum = sum + n * n;
        n = n - 1;
    }
    return sum;
}

pub fn main() void {
    //std.debug.print("Hello, {s}!\n", .{"World"});

    const sof_ten: u64 = square_of_sum(10);
    std.debug.print("3025:  {d}\n", .{sof_ten});

    const soq_ten: u64 = sum_of_square(10);
    std.debug.print("385:  {d}\n", .{soq_ten});

    const diff: u64 = square_of_sum(10) - sum_of_square(10);
    std.debug.print("2640:  {d}\n", .{diff});

    const diff_1: u64 = square_of_sum(1) - sum_of_square(1);
    std.debug.print("1:  {d}\n", .{diff_1});

    const diff_5: u64 = square_of_sum(5) - sum_of_square(5);
    std.debug.print("5:  {d}\n", .{diff_5});

    const diff_100: u64 = square_of_sum(100) - sum_of_square(100);
    std.debug.print("100:  {d}\n", .{diff_100});
}
