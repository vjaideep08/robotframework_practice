try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    ROBOT = False
except Exception:
    ROBOT = False



import math



@keyword("custom keyword")
def factorial(n):
    #BuiltIn().log_to_console()
    return(math.factorial(n))
