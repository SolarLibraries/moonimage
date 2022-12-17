package = "moonimage"
version = "dev-1"
source = {
    url = "git+https://github.com/SolarLibraries/moonimage.git"
}
description = {
    detailed = [[
MoonImage is a Lua image loading library based on Sean Barrett's 
[STB libraries](https://github.com/nothings/stb).]],
    homepage = "https://github.com/SolarLibraries/moonimage",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.1, < 5.5"
}
build = {
    type = "builtin",
    modules = {
        ["moonimage"] = {
            sources = {
                "src/main.c",
                "src/load.c",
                "src/perlin.c",
                "src/utils.c",
                "src/write.c",
                "src/compat-5.3.c"
            },

            defines = {
                "COMPAT53_PREFIX=moonimage_compat_"
            },

            incdirs = {
                "src/",
                "src/include/"
            }
        }
    }
}
