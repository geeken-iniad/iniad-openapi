namespace INIAD.EduIot.Models;

@doc("部屋番号 (4 桁の数字)")
@pattern("^[0-9]{4}$")
@example("3201")
scalar RoomNumber extends string;
