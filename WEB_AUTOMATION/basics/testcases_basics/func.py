try:
    from robot.libraries.BuiltIn import BuiltIn
    from robot.libraries.BuiltIn import _Misc
    import robot.api.logger as logger
    from robot.api.deco import keyword
    ROBOT = False
except Exception:
    ROBOT = False

@keyword("custom keyword")

def add_one(n):
    BuiltIn().log_to_console(f"input: {n}, output: {n+1}")
    return n+1
