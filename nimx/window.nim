# Platform specific implementations follow
import abstract_window
when defined(js):
    import private.windows.js_canvas_window
    export startAnimation
elif defined(emscripten):
    import private.windows.emscripten_window
elif defined(macosx) and not defined(ios) and defined(nimxAvoidSDL):
    import private.windows.appkit_window
elif defined(android):
    import private.windows.android_window
    export getAndroidAssetManager, getAndroidActivity
else:
    import private.windows.sdl_window
    export runUntilQuit

export runApplication

export abstract_window
