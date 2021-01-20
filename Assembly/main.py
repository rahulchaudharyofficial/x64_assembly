with open("main.o","rb") as f:
    byte = f.read(1)
    cache = []
    while byte != b"":
        cache.append(byte)
        byte = f.read(1)

    print(cache)
        