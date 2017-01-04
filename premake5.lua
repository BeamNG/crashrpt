project "crashrpt"
  kind "StaticLib"
  buildoptions {
  }
  defines {
    'CrashRpt_EXPORTS',
  }

  includedirs {
    'include',
    'thirdparty/wtl',
  }
  files {
    "reporting/crashrpt/**",
  }

project "crashsender"
  kind "WindowedApp"
  buildoptions {
  }
  defines {
  }
  links {
    'crashrpt',
    'WS2_32.lib',
    'Dnsapi.lib',
    'wininet.lib',
    'Rpcrt4.lib',
    'Gdi32.lib',
    'Comdlg32.lib',
    'version.lib',
    'psapi.lib',
  }

  includedirs {
    'include',
    'reporting/crashrpt',
    'reporting/crashsender',
    'thirdparty/wtl',
    'thirdparty/jpeg',
    'thirdparty/libogg/include',
    'thirdparty/libpng',
    'thirdparty/libtheora/include',
    'thirdparty/minizip',
    'thirdparty/tinyxml',
    'thirdparty/zlib',
  }
  files {
    "reporting/crashsender/**",
    "thirdparty/jpeg/**",
    "thirdparty/libogg/src/**",
    "thirdparty/libpng/**",
    "thirdparty/libtheora/lib/**",
    "thirdparty/minizip/**",
    "thirdparty/tinyxml/**",
    "thirdparty/zlib/**",
  }
