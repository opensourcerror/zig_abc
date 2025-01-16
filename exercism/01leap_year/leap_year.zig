const std = @import("std");

// a leap year occurs:
// In every year that is evenly divisible by 4.
// Unless the year is evenly divisible by 100, in which case it's only a leap year
// if the year is also evenly divisible by 400.

// fn is_leap_year(year: u32) bool {
//     if (year % 100 == 0) &&(year % 400 == 0){return true} else if (year % 4) {
//         return true;
//     } else {
//         return false;
//     }
// }

fn divisible_by_four(year: u32) bool {
    return year % 4 == 0;
}

fn div_by_100_and_400(year: u32) bool {
    return year % 100 == 0 and year % 400 == 0;
}

fn is_leap_year(year: u32) bool {
    return div_by_100_and_400(year) and divisible_by_four(year);
}

pub fn main() void {
    std.debug.print("1997 is div by 100 and 400:   {}\n", .{div_by_100_and_400(400)});
    std.debug.print("1900 is div by 100 and 400:   {}\n", .{div_by_100_and_400(100)});
    std.debug.print("2000 is div by 100 and 400:   {}\n", .{div_by_100_and_400(100)});

    // std.debug.print("{d}\n{d}", .{ 4 % 2, 3 % 2 });

    std.debug.print("4 is div by 4:   {}\n", .{divisible_by_four(4)});
    std.debug.print("3 is div by 4:   {}\n", .{divisible_by_four(3)});
}
// 1997 was not a leap year as it's not divisible by 4.
// 1900 was not a leap year as it's not divisible by 400.
// 2000 was a leap year!
