add_rules("mode.debug", "mode.release")
add_rules("plugin.compile_commands.autoupdate")
add_moduledirs("modules")
add_requires("glfw", "bgfx")



target("Maniazuki")
    set_kind("binary")
          

    -- 先单独添加包含 main 函数的文件
    add_files("helloworld_mt.cpp")

    -- 然后，添加所有其他 .cpp 文件，并明确排除 main.cpp
    --add_files("helloworld.cpp")
    set_languages("cxx20")
    add_packages("glfw", "bgfx")
    --add_packages("ffmpeg")
    on_config(function (target)
       --import("binary.bar")
       --print("binary: 1 + 1 = %s", bar.add(1, 1))
       --print("binary: 1 - 1 = %s", bar.sub(1, 1))
    end)
    