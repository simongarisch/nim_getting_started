# nim compile --run module1.nim
import module2  # which exports x
# alternatively
# import module2 except add
# from module2 import x, add

# The include statement does something fundamentally different than importing a module: it merely includes the contents of a file.
# include fileA, fileB, fileC

when isMainModule:
    echo x  # 1 from module2
    echo module2.x  # 1
    echo add(1, 2)  # 3
