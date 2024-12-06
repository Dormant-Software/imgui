project "imgui"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
        targetdir ("Binaries/Windows" .. "/%{prj.name}")
        objdir ("Binaries/Intermediates/Windows" .. "/%{prj.name}")

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
        targetdir ("Binaries/Linux" .. "/%{prj.name}")
        objdir ("Binaries/Intermediates/Linux" .. "/%{prj.name}")

    filter "system:macosx"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
        targetdir ("Binaries/MacOS" .. "/%{prj.name}")
        objdir ("Binaries/Intermediates/MacOS" .. "/%{prj.name}")

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"
