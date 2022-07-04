try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    ROBOT = False
except Exception:
    ROBOT = False

@keyword("fibinacci of a number")
def fibinaaci(n):
    BuiltIn().log_to_console(f"input: {n}, output: {series}")
    if n<=1:
        return n
    else:
        return fibinaaci(n-1)+fibinaaci(n-2)
num=int(input())
series = []
for i in range(num):
    series.append(fibinaaci(i))




