Launching lib/main.dart on sdk gphone64 arm64 in debug mode...
Running Gradle task 'assembleDebug'...
Your project is configured with Android NDK 26.3.11579264, but the following plugin(s) depend on a different Android NDK version:
- connectivity_plus requires Android NDK 27.0.12077973
- firebase_core requires Android NDK 27.0.12077973
- flutter_secure_storage requires Android NDK 27.0.12077973
- fluttertoast requires Android NDK 27.0.12077973
- path_provider_android requires Android NDK 27.0.12077973
- shared_preferences_android requires Android NDK 27.0.12077973
- url_launcher_android requires Android NDK 27.0.12077973
- webview_flutter_android requires Android NDK 27.0.12077973
  Fix this issue by using the highest Android NDK version (they are backward compatible).
  Add the following to /Users/moali/AndroidStudioProjects/mobile_app/android/app/build.gradle.kts:

  android {
  ndkVersion = "27.0.12077973"
  ...
  }

✓ Built build/app/outputs/flutter-apk/app-debug.apk
Installing build/app/outputs/flutter-apk/app-debug.apk...
I/flutter ( 6040): [IMPORTANT:flutter/shell/platform/android/android_context_gl_impeller.cc(94)] Using the Impeller rendering backend (OpenGLES).
Debug service listening on ws://127.0.0.1:64798/1PjdDsuLERg=/ws
Syncing files to device sdk gphone64 arm64...
E/libEGL  ( 6040): called unimplemented OpenGL ES API
D/WindowLayoutComponentImpl( 6040): Register WindowLayoutInfoListener on Context=com.example.basic_diet.MainActivity@34b3c13, of which baseContext=android.app.ContextImpl@8703f7c
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Localization initialized
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Start
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Init state
I/flutter ( 6040): [🌎 Easy Localization] [INFO] Saved locale loaded ar_SA
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Build
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Init Localization Delegate
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Init provider
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Load Localization Delegate
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Load asset from assets/translations
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Build
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Init Localization Delegate
I/flutter ( 6040): [🌎 Easy Localization] [DEBUG] Init provider
E/libEGL  ( 6040): called unimplemented OpenGL ES API
D/InsetsController( 6040): hide(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:4bbfd57c: onCancelled at PHASE_CLIENT_ALREADY_HIDDEN
D/ProfileInstaller( 6040): Installing profile for com.example.basic_diet
W/WindowOnBackDispatcher( 6040): OnBackInvokedCallback is not enabled for the application.
W/WindowOnBackDispatcher( 6040): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
W/WindowOnBackDispatcher( 6040): OnBackInvokedCallback is not enabled for the application.
W/WindowOnBackDispatcher( 6040): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onCreate -- RegisterBloc
I/mple.basic_diet( 6040): AssetManager2(0xb400007d179774d8) locale list changing from [] to [en-US]
W/WindowOnBackDispatcher( 6040): OnBackInvokedCallback is not enabled for the application.
W/WindowOnBackDispatcher( 6040): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/ImeTracker( 6040): com.example.basic_diet:11ed1f9e: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
D/InsetsController( 6040): Setting requestedVisibleTypes to -1 (was -9)
D/InputConnectionAdaptor( 6040): The input method toggled cursor monitoring on
W/InteractionJankMonitor( 6040): Initializing without READ_DEVICE_CONFIG permission. enabled=false, interval=1, missedFrameThreshold=3, frameTimeThreshold=64, package=com.example.basic_diet
I/ImeTracker( 6040): com.example.basic_diet:11ed1f9e: onShown
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , , , , ), nextState: RegisterFormInitialState(, , 2, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , 2, Phone is too short, , ), nextState: RegisterFormInitialState(, , , Phone is required, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , , Phone is required, , ), nextState: RegisterFormInitialState(, , +, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +, Phone is too short, , ), nextState: RegisterFormInitialState(, , +2, Phone is too short, , ) }
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +2, Phone is too short, , ), nextState: RegisterFormInitialState(, , +20, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +20, Phone is too short, , ), nextState: RegisterFormInitialState(, , +201, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/ImeTracker( 6040): com.example.basic_diet:6ecf7535: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:6ecf7535: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
I/ImeTracker( 6040): com.example.basic_diet:7ea08f5c: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:7ea08f5c: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
I/ImeTracker( 6040): com.example.basic_diet:58a6982c: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:58a6982c: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
I/ImeTracker( 6040): com.example.basic_diet:96213dd1: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:96213dd1: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
I/ImeTracker( 6040): com.example.basic_diet:8a9fa66e: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:8a9fa66e: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/ImeTracker( 6040): com.example.basic_diet:ccf3ffef: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:ccf3ffef: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
I/ImeTracker( 6040): com.example.basic_diet:63a83396: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:63a83396: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
I/ImeTracker( 6040): com.example.basic_diet:648f9382: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:648f9382: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +201, Phone is too short, , ), nextState: RegisterFormInitialState(, , +, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +, Phone is too short, , ), nextState: RegisterFormInitialState(, , +2, Phone is too short, , ) }
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +2, Phone is too short, , ), nextState: RegisterFormInitialState(, , +20, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +20, Phone is too short, , ), nextState: RegisterFormInitialState(, , +201, Phone is too short, , ) }
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +201, Phone is too short, , ), nextState: RegisterFormInitialState(, , +2010, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +2010, Phone is too short, , ), nextState: RegisterFormInitialState(, , +20109, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +20109, Phone is too short, , ), nextState: RegisterFormInitialState(, , +201093, Phone is too short, , ) }
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +201093, Phone is too short, , ), nextState: RegisterFormInitialState(, , +2010930, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +2010930, Phone is too short, , ), nextState: RegisterFormInitialState(, , +20109308, , , ) }
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +20109308, , , ), nextState: RegisterFormInitialState(, , +201093089, , , ) }
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +201093089, , , ), nextState: RegisterFormInitialState(, , +2010930891, , , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +2010930891, , , ), nextState: RegisterFormInitialState(, , +20109308916, , , ) }
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +20109308916, , , ), nextState: RegisterFormInitialState(, , +201093089160, , , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterFormInitialState(, , +201093089160, , , ), nextState: RegisterLoadingState(, , +201093089160, , , ) }
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Request ║ POST
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/auth/register/request-otp
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ accept: application/json
I/flutter ( 6040): ╟ content-type: application/json
I/flutter ( 6040): ╟ Accept-Language: ar
I/flutter ( 6040): ╟ contentType: application/json
I/flutter ( 6040): ╟ responseType: ResponseType.json
I/flutter ( 6040): ╟ followRedirects: true
I/flutter ( 6040): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ╟ phoneE164: +201093089160
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ║ {phoneE164: +201093089160}
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
D/InsetsController( 6040): Setting requestedVisibleTypes to -9 (was -1)
W/WindowOnBackDispatcher( 6040): sendCancelIfRunning: isInProgress=false callback=android.view.ImeBackAnimationController@36b69e0
I/ImeTracker( 6040): com.example.basic_diet:d4c68f9a: onRequestHide at ORIGIN_CLIENT reason HIDE_SOFT_INPUT_REQUEST_HIDE_WITH_CONTROL fromUser true
D/InsetsController( 6040): hide(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:d4c68f9a: onCancelled at PHASE_CLIENT_ALREADY_HIDDEN
I/ImeTracker( 6040): system_server:27deb4ea: onCancelled at PHASE_CLIENT_ON_CONTROLS_CHANGED
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onCreate -- LoginBloc
W/WindowOnBackDispatcher( 6040): OnBackInvokedCallback is not enabled for the application.
W/WindowOnBackDispatcher( 6040): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
I/ImeTracker( 6040): com.example.basic_diet:2c7010eb: onRequestHide at ORIGIN_CLIENT reason HIDE_SOFT_INPUT fromUser false
D/InsetsController( 6040): hide(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:2c7010eb: onCancelled at PHASE_CLIENT_ALREADY_HIDDEN
I/ImeTracker( 6040): com.example.basic_diet:2f4418c6: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
D/InsetsController( 6040): Setting requestedVisibleTypes to -1 (was -9)
E/libEGL  ( 6040): called unimplemented OpenGL ES API
D/InputConnectionAdaptor( 6040): The input method toggled cursor monitoring on
I/ImeTracker( 6040): com.example.basic_diet:2f4418c6: onShown
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(, , , ), nextState: LoginFormInitialState(+, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+, Phone is too short, , ), nextState: LoginFormInitialState(+2, Phone is too short, , ) }
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+2, Phone is too short, , ), nextState: LoginFormInitialState(+20, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+20, Phone is too short, , ), nextState: LoginFormInitialState(+201, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201, Phone is too short, , ), nextState: LoginFormInitialState(+2010, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+2010, Phone is too short, , ), nextState: LoginFormInitialState(+20109, Phone is too short, , ) }
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+20109, Phone is too short, , ), nextState: LoginFormInitialState(+201093, Phone is too short, , ) }
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093, Phone is too short, , ), nextState: LoginFormInitialState(+2010930, Phone is too short, , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+2010930, Phone is too short, , ), nextState: LoginFormInitialState(+20109308, , , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+20109308, , , ), nextState: LoginFormInitialState(+201093089, , , ) }
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089, , , ), nextState: LoginFormInitialState(+2010930891, , , ) }
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+2010930891, , , ), nextState: LoginFormInitialState(+20109308916, , , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+20109308916, , , ), nextState: LoginFormInitialState(+201093089160, , , ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/ImeTracker( 6040): com.example.basic_diet:a2812126: onRequestShow at ORIGIN_CLIENT reason SHOW_SOFT_INPUT fromUser false
D/InsetsController( 6040): show(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:a2812126: onCancelled at PHASE_CLIENT_APPLY_ANIMATION
D/InputConnectionAdaptor( 6040): The input method toggled cursor monitoring on
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089160, , , ), nextState: LoginFormInitialState(+201093089160, , 1, Password is too short) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089160, , 1, Password is too short), nextState: LoginFormInitialState(+201093089160, , 12, Password is too short) }
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089160, , 12, Password is too short), nextState: LoginFormInitialState(+201093089160, , 123, Password is too short) }
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089160, , 123, Password is too short), nextState: LoginFormInitialState(+201093089160, , 1234, Password is too short) }
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089160, , 1234, Password is too short), nextState: LoginFormInitialState(+201093089160, , 12345, Password is too short) }
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089160, , 12345, Password is too short), nextState: LoginFormInitialState(+201093089160, , 123456, Password is too short) }
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089160, , 123456, Password is too short), nextState: LoginFormInitialState(+201093089160, , 1234567, Password is too short) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089160, , 1234567, Password is too short), nextState: LoginFormInitialState(+201093089160, , 12345678, ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089160, , 12345678, ), nextState: LoginFormInitialState(+201093089160, , 12345678a, ) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
D/InsetsController( 6040): Setting requestedVisibleTypes to -9 (was -1)
W/WindowOnBackDispatcher( 6040): sendCancelIfRunning: isInProgress=false callback=android.view.ImeBackAnimationController@36b69e0
I/ImeTracker( 6040): com.example.basic_diet:ff208402: onRequestHide at ORIGIN_CLIENT reason HIDE_SOFT_INPUT_REQUEST_HIDE_WITH_CONTROL fromUser true
D/InsetsController( 6040): hide(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:ff208402: onCancelled at PHASE_CLIENT_ALREADY_HIDDEN
I/ImeTracker( 6040): system_server:221b09d5: onCancelled at PHASE_CLIENT_ON_CONTROLS_CHANGED
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginFormInitialState(+201093089160, , 12345678a, ), nextState: LoginLoadingState(+201093089160, , 12345678a, ) }
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Request ║ POST
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/auth/login
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ accept: application/json
I/flutter ( 6040): ╟ content-type: application/json
I/flutter ( 6040): ╟ Accept-Language: ar
I/flutter ( 6040): ╟ contentType: application/json
I/flutter ( 6040): ╟ responseType: ResponseType.json
I/flutter ( 6040): ╟ followRedirects: true
I/flutter ( 6040): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ╟ phoneE164: +201093089160
I/flutter ( 6040): ╟ password: 12345678a
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ║ {phoneE164: +201093089160, password: 12345678a}
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ DioError ║ Status: 409 Conflict ║ Time: 31770 ms
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/auth/register/request-otp
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ DioExceptionType.badResponse
I/flutter ( 6040): ║    {
I/flutter ( 6040): ║         "ok": false,
I/flutter ( 6040): ║         "error": {
I/flutter ( 6040): ║             "code": "USER_ALREADY_REGISTERED",
I/flutter ( 6040): ║             "message": "User already registered. Please login with phone and password."
I/flutter ( 6040): ║        }
I/flutter ( 6040): ║    }
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040):
I/flutter ( 6040): onChange -- RegisterBloc, Change { currentState: RegisterLoadingState(, , +201093089160, , , ), nextState: RegisterErrorState(, , +201093089160, , , , User already registered. Please login with phone and password.) }
D/CompatChangeReporter( 6040): Compat change id reported: 63938206; UID 10220; state: ENABLED
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Response ║ POST ║ Status: 200 OK  ║ Time: 4721 ms
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/auth/login
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ ratelimit-limit: [20]
I/flutter ( 6040): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6040): ╟ x-render-origin-server: [Render]
I/flutter ( 6040): ╟ date: [Tue, 19 May 2026 09:50:17 GMT]
I/flutter ( 6040): ╟ transfer-encoding: [chunked]
I/flutter ( 6040): ╟ content-encoding: [gzip]
I/flutter ( 6040): ╟ origin-agent-cluster: [?1]
I/flutter ( 6040): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 6040): ╟ ratelimit-remaining: [19]
I/flutter ( 6040): ╟ ratelimit-policy: [20;w=900]
I/flutter ( 6040): ╟ server: [cloudflare]
I/flutter ( 6040): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6040): ╟ cf-ray: [9fe232320c18e1e8-MRS]
I/flutter ( 6040): ╟ etag: [W/"20c-345P4/eDjZW9WYQArwby2G3cLPs"]
I/flutter ( 6040): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6040): ╟ content-security-policy:
I/flutter ( 6040): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6040): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6040): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6040): ╟ connection: [keep-alive]
I/flutter ( 6040): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6040): ╟ referrer-policy: [no-referrer]
I/flutter ( 6040): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 6040): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6040): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6040): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6040): ╟ x-xss-protection: [0]
I/flutter ( 6040): ╟ rndr-id: [0f41db7f-f241-4acb]
I/flutter ( 6040): ╟ access-control-allow-credentials: [true]
I/flutter ( 6040): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 6040): ╟ x-download-options: [noopen]
I/flutter ( 6040): ╟ x-content-type-options: [nosniff]
I/flutter ( 6040): ╟ ratelimit-reset: [900]
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ║
I/flutter ( 6040): ║    {
I/flutter ( 6040): ║         "ok": true,
I/flutter ( 6040): ║         "status": "logged_in",
I/flutter ( 6040): ║         "accessToken": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTA4YTA3OWFjNjJhMWRmMWVlMWYy
I/flutter ( 6040): ║          ODgiLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3OTE4NDIxNy
I/flutter ( 6040): ║          wiZXhwIjoxNzc5MTg1MTE3fQ.k8vh5Kp-PXAHf9GqutYj1AWIrGG3YUzz3QKFvx5GnZQ"
I/flutter ( 6040): ║         "refreshToken": "RhA-hRTf4KDeWJ6q10V5_tSFQ_uhgB5GoGX-_rxZe9X-4gLOO57Jp-ImwLGBsPsi",
I/flutter ( 6040): ║         "expiresIn": 900,
I/flutter ( 6040): ║         "refreshExpiresIn": 2592000,
I/flutter ( 6040): ║         "user": {
I/flutter ( 6040): ║             "id": "6a08a079ac62a1df1ee1f288",
I/flutter ( 6040): ║             "fullName": null,
I/flutter ( 6040): ║             "email": null,
I/flutter ( 6040): ║             "phoneE164": "+201093089160",
I/flutter ( 6040): ║             "phoneVerified": true
I/flutter ( 6040): ║        }
I/flutter ( 6040): ║    }
I/flutter ( 6040): ║
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): onChange -- LoginBloc, Change { currentState: LoginLoadingState(+201093089160, , 12345678a, ), nextState: LoginSuccessState(+201093089160, , 12345678a, ) }
I/flutter ( 6040): onCreate -- MainBloc
I/flutter ( 6040): onCreate -- HomeBloc
I/flutter ( 6040): onClose -- LoginBloc
I/flutter ( 6040): onClose -- RegisterBloc
W/WindowOnBackDispatcher( 6040): OnBackInvokedCallback is not enabled for the application.
W/WindowOnBackDispatcher( 6040): Set 'android:enableOnBackInvokedCallback="true"' in the application manifest.
I/ImeTracker( 6040): com.example.basic_diet:2133a930: onRequestHide at ORIGIN_CLIENT reason HIDE_SOFT_INPUT fromUser false
D/InsetsController( 6040): hide(ime(), fromIme=false)
I/ImeTracker( 6040): com.example.basic_diet:2133a930: onCancelled at PHASE_CLIENT_ALREADY_HIDDEN
W/WindowOnBackDispatcher( 6040): sendCancelIfRunning: isInProgress=false callback=android.view.ViewRootImpl$$ExternalSyntheticLambda13@265a82e
E/libEGL  ( 6040): called unimplemented OpenGL ES API
W/WindowOnBackDispatcher( 6040): sendCancelIfRunning: isInProgress=false callback=android.view.ViewRootImpl$$ExternalSyntheticLambda13@325af1d
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- MainBloc, Change { currentState: MainInitialState(0), nextState: MainIndexChangedState(1) }
I/flutter ( 6040): onCreate -- MenuBloc
I/flutter ( 6040): onChange -- MenuBloc, Change { currentState: MenuInitial(), nextState: MenuLoading() }
I/flutter ( 6040): onClose -- HomeBloc
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Request ║ GET
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ accept: application/json
I/flutter ( 6040): ╟ content-type: application/json
I/flutter ( 6040): ╟ authorization:
I/flutter ( 6040): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTA4YTA3OWFjNjJhMWRmMWVlMWYyOD
I/flutter ( 6040): ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3OTE4NDIxNywiZXhwIjox
I/flutter ( 6040): ║ Nzc5MTg1MTE3fQ.k8vh5Kp-PXAHf9GqutYj1AWIrGG3YUzz3QKFvx5GnZQ
I/flutter ( 6040): ╟ Accept-Language: ar
I/flutter ( 6040): ╟ contentType: application/json
I/flutter ( 6040): ╟ responseType: ResponseType.json
I/flutter ( 6040): ╟ followRedirects: true
I/flutter ( 6040): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 1364 ms
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6040): ╟ x-render-origin-server: [Render]
I/flutter ( 6040): ╟ date: [Tue, 19 May 2026 09:50:23 GMT]
I/flutter ( 6040): ╟ transfer-encoding: [chunked]
I/flutter ( 6040): ╟ origin-agent-cluster: [?1]
I/flutter ( 6040): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 6040): ╟ content-encoding: [gzip]
I/flutter ( 6040): ╟ server: [cloudflare]
I/flutter ( 6040): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6040): ╟ cf-ray: [9fe2326b693397b3-MRS]
I/flutter ( 6040): ╟ etag: [W/"9cd1-OYdTHDCI4NIIlP1inyUWlB8kuVg"]
I/flutter ( 6040): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6040): ╟ content-security-policy:
I/flutter ( 6040): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6040): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6040): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6040): ╟ connection: [keep-alive]
I/flutter ( 6040): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6040): ╟ referrer-policy: [no-referrer]
I/flutter ( 6040): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 6040): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6040): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6040): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6040): ╟ rndr-id: [20ba5692-bb2d-4ca7]
I/flutter ( 6040): ╟ x-xss-protection: [0]
I/flutter ( 6040): ╟ access-control-allow-credentials: [true]
I/flutter ( 6040): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 6040): ╟ x-download-options: [noopen]
I/flutter ( 6040): ╟ x-content-type-options: [nosniff]
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ║
I/flutter ( 6040): ║    {
I/flutter ( 6040): ║         "status": true,
I/flutter ( 6040): ║         "data": {
I/flutter ( 6040): ║             "source": "one_time_order",
I/flutter ( 6040): ║             "fulfillmentMethod": "pickup",
I/flutter ( 6040): ║             "currency": "SAR",
I/flutter ( 6040): ║             "vatIncluded": true,
I/flutter ( 6040): ║             "vatPercentage": 15,
I/flutter ( 6040): ║             "itemTypes": [
I/flutter ( 6040): ║                     basic_salad,
I/flutter ( 6040): ║                     basic_meal,
I/flutter ( 6040): ║                     fruit_salad,
I/flutter ( 6040): ║                     greek_yogurt,
I/flutter ( 6040): ║                     green_salad,
I/flutter ( 6040): ║                     cold_sandwich,
I/flutter ( 6040): ║                     sourdough,
I/flutter ( 6040): ║                     dessert,
I/flutter ( 6040): ║                     juice,
I/flutter ( 6040): ║                     drink,
I/flutter ( 6040): ║                     ice_cream,
I/flutter ( 6040): ║                     product
I/flutter ( 6040): ║             ],
I/flutter ( 6040): ║             "categories": [
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                     "key": "custom_order",
I/flutter ( 6040): ║                     "name": "اطلب على مزاجك",
I/flutter ( 6040): ║                     "nameI18n": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 10,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb649936d002eb74445f66",
I/flutter ( 6040): ║                             "key": "basic_salad",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "سلطة بيسك",
I/flutter ( 6040): ║                             "nameI18n": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "https://cdn1.foodviva.com/static-content/food-images/salad-re
I/flutter ( 6040): ║                              cipes/vegetable-salad-recipe/vegetable-salad-recipe.jpg"
I/flutter ( 6040): ║                             "itemType": "basic_salad",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 3000,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 100,
I/flutter ( 6040): ║                             "minWeightGrams": 100,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 10,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "key": "fruits",
I/flutter ( 6040): ║                                     "name": "فواكه",
I/flutter ( 6040): ║                                     "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6040): ║                                     "minSelections": 0,
I/flutter ( 6040): ║                                     "maxSelections": 1,
I/flutter ( 6040): ║                                     "isRequired": false,
I/flutter ( 6040): ║                                     "sortOrder": 30,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_strawberry"
I/flutter ( 6040): ║                                             "name": "فراولة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 500
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 1
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64ee36d002eb74445ffe",
I/flutter ( 6040): ║                             "key": "basic_meal",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "وجبة بيسك",
I/flutter ( 6040): ║                             "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "basic_meal",
I/flutter ( 6040): ║                             "pricingModel": "per_100g",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 100,
I/flutter ( 6040): ║                             "minWeightGrams": 100,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 20,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                     "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                     "key": "carbs",
I/flutter ( 6040): ║                                     "name": "كارب",
I/flutter ( 6040): ║                                     "nameI18n": {ar: كارب, en: Carbs},
I/flutter ( 6040): ║                                     "minSelections": 3,
I/flutter ( 6040): ║                                     "maxSelections": 3,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 10,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5e7"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5e7"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_white_rice"
I/flutter ( 6040): ║                                             "name": "رز ابيض"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رز ابيض, en: White Rice},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5e8"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5e8"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_turmeric_rice"
I/flutter ( 6040): ║                                             "name": "رز بالكركم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5e9"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5e9"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_biryani_rice"
I/flutter ( 6040): ║                                             "name": "رز برياني"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رز برياني, en: Biryani Rice},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5ea"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5ea"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_quinoa"
I/flutter ( 6040): ║                                             "name": "كينوا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: كينوا, en: Quinoa},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5eb"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5eb"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_alfredo_pasta"
I/flutter ( 6040): ║                                             "name": "باستا الفريدو"
I/flutter ( 6040): ║                                             "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ec"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ec"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_red_sauce_pasta"
I/flutter ( 6040): ║                                             "name": "باستا بالصوص الأحمر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: باستا بالصوص الأحمر, en: Red Sauce Pasta},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ed"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ed"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_roasted_potato"
I/flutter ( 6040): ║                                             "name": "بطاطس مشوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطاطس مشوي, en: Roasted Potato},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ee"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ee"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_sweet_potato"
I/flutter ( 6040): ║                                             "name": "بطاطا حلوة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ef"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ef"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_mixed_grilled_vegetables"
I/flutter ( 6040): ║                                             "name": "خضار مشكل مشوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: خضار مشكل مشوي, en: Mixed Grilled Vegetables},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                },
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                     "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                     "key": "proteins",
I/flutter ( 6040): ║                                     "name": "بروتينات",
I/flutter ( 6040): ║                                     "nameI18n": {ar: بروتينات, en: Proteins},
I/flutter ( 6040): ║                                     "minSelections": 1,
I/flutter ( 6040): ║                                     "maxSelections": 1,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 20,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5c1"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5c1"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_boiled_egg"
I/flutter ( 6040): ║                                             "name": "بيض مسلوق"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c2"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c2"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_tuna"
I/flutter ( 6040): ║                                             "name": "تونا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c3"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c3"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_fajita"
I/flutter ( 6040): ║                                             "name": "فاهيتا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فاهيتا, en: Fajita},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d3"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d3"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_butter_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج زبدة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج زبدة, en: Butter Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d5"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d5"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_cream_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج كريمة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج كريمة, en: Cream Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d6"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d6"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_coconut_curry_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج كاري وجوز الهند"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج كاري وجوز الهند, en: Coconut Curry Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c4"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c4"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_spicy_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج سبايسي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c5"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c5"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_italian_herb_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج توابل إيطالية"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Herb Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c6"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c6"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_chicken_tikka"
I/flutter ( 6040): ║                                             "name": "دجاج تكا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ab36d002eb7445b5c8"
I/flutter ( 6040): ║                                             "optionId": "69fd36ab36d002eb7445b5c8"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_asian_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج آسيوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 100
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ab36d002eb7445b5c9"
I/flutter ( 6040): ║                                             "optionId": "69fd36ab36d002eb7445b5c9"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_chicken_strips"
I/flutter ( 6040): ║                                             "name": "استربس"
I/flutter ( 6040): ║                                             "nameI18n": {ar: استربس, en: Chicken Strips},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 110
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ab36d002eb7445b5cb"
I/flutter ( 6040): ║                                             "optionId": "69fd36ab36d002eb7445b5cb"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_grilled_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج مشوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 120
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5cc"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5cc"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_mexican_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج مكسيكي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 130
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5cd"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5cd"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_meatballs"
I/flutter ( 6040): ║                                             "name": "كرات لحم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: كرات لحم, en: Meatballs},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 300
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 600
I/flutter ( 6040): ║                                             "sortOrder": 140
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5ce"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5ce"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_beef_stroganoff"
I/flutter ( 6040): ║                                             "name": "لحم استرغانوف"
I/flutter ( 6040): ║                                             "nameI18n": {ar: لحم استرغانوف, en: Beef Stroganoff},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 300
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 600
I/flutter ( 6040): ║                                             "sortOrder": 150
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5cf"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5cf"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_steak"
I/flutter ( 6040): ║                                             "name": "ستيك لحم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: ستيك لحم, en: Steak},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 2000
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 1000
I/flutter ( 6040): ║                                             "sortOrder": 160
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5d0"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5d0"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_shrimp"
I/flutter ( 6040): ║                                             "name": "جمبري"
I/flutter ( 6040): ║                                             "nameI18n": {ar: جمبري, en: Shrimp},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 2000
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 1000
I/flutter ( 6040): ║                                             "sortOrder": 170
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d1"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d1"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_fish_fillet"
I/flutter ( 6040): ║                                             "name": "سمك فيليه"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 180
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d2"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d2"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_salmon"
I/flutter ( 6040): ║                                             "name": "سالمون"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سالمون, en: Salmon},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 2000
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 1000
I/flutter ( 6040): ║                                             "sortOrder": 190
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64f436d002eb74446009",
I/flutter ( 6040): ║                             "key": "fruit_salad",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "سلطة فواكه",
I/flutter ( 6040): ║                             "nameI18n": {ar: سلطة فواكه, en: Fruit Salad},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "fruit_salad",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1700,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 150,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 30,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "key": "fruits",
I/flutter ( 6040): ║                                     "name": "فواكه",
I/flutter ( 6040): ║                                     "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6040): ║                                     "minSelections": 9,
I/flutter ( 6040): ║                                     "maxSelections": 9,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 10,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_mango"
I/flutter ( 6040): ║                                             "name": "مانجا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: مانجا, en: Mango},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_green_apple"
I/flutter ( 6040): ║                                             "name": "تفاح اخضر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_pomegranate"
I/flutter ( 6040): ║                                             "name": "رمان"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_strawberry"
I/flutter ( 6040): ║                                             "name": "فراولة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_blueberry"
I/flutter ( 6040): ║                                             "name": "توت ازرق"
I/flutter ( 6040): ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_watermelon"
I/flutter ( 6040): ║                                             "name": "بطيخ"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_cantaloupe"
I/flutter ( 6040): ║                                             "name": "شمام"
I/flutter ( 6040): ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_dates"
I/flutter ( 6040): ║                                             "name": "تمر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تمر, en: Dates},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_honey"
I/flutter ( 6040): ║                                             "name": "عسل"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عسل, en: Honey},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64f636d002eb7444600c",
I/flutter ( 6040): ║                             "key": "greek_yogurt",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "زبادي يوناني",
I/flutter ( 6040): ║                             "nameI18n": {ar: زبادي يوناني, en: Greek Yogurt},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "greek_yogurt",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1700,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 200,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 40,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "key": "fruits",
I/flutter ( 6040): ║                                     "name": "فواكه",
I/flutter ( 6040): ║                                     "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6040): ║                                     "minSelections": 5,
I/flutter ( 6040): ║                                     "maxSelections": 5,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 10,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_mango"
I/flutter ( 6040): ║                                             "name": "مانجا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: مانجا, en: Mango},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_green_apple"
I/flutter ( 6040): ║                                             "name": "تفاح اخضر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_pomegranate"
I/flutter ( 6040): ║                                             "name": "رمان"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_strawberry"
I/flutter ( 6040): ║                                             "name": "فراولة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_blueberry"
I/flutter ( 6040): ║                                             "name": "توت ازرق"
I/flutter ( 6040): ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_watermelon"
I/flutter ( 6040): ║                                             "name": "بطيخ"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_cantaloupe"
I/flutter ( 6040): ║                                             "name": "شمام"
I/flutter ( 6040): ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_dates"
I/flutter ( 6040): ║                                             "name": "تمر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تمر, en: Dates},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_honey"
I/flutter ( 6040): ║                                             "name": "عسل"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عسل, en: Honey},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                },
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                     "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                     "key": "nuts",
I/flutter ( 6040): ║                                     "name": "المكسرات",
I/flutter ( 6040): ║                                     "nameI18n": {ar: المكسرات, en: Nuts},
I/flutter ( 6040): ║                                     "minSelections": 0,
I/flutter ( 6040): ║                                     "maxSelections": 3,
I/flutter ( 6040): ║                                     "isRequired": false,
I/flutter ( 6040): ║                                     "sortOrder": 20,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b336d002eb7445b5f0"
I/flutter ( 6040): ║                                             "optionId": "69fd36b336d002eb7445b5f0"
I/flutter ( 6040): ║                                             "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                             "key": "nuts_cashew"
I/flutter ( 6040): ║                                             "name": "كاجو"
I/flutter ( 6040): ║                                             "nameI18n": {ar: كاجو, en: Cashew},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b336d002eb7445b5f1"
I/flutter ( 6040): ║                                             "optionId": "69fd36b336d002eb7445b5f1"
I/flutter ( 6040): ║                                             "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                             "key": "nuts_walnut"
I/flutter ( 6040): ║                                             "name": "عين الجمل"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عين الجمل, en: Walnut},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b336d002eb7445b5f2"
I/flutter ( 6040): ║                                             "optionId": "69fd36b336d002eb7445b5f2"
I/flutter ( 6040): ║                                             "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                             "key": "nuts_sesame"
I/flutter ( 6040): ║                                             "name": "سمسم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سمسم, en: Sesame},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64fa36d002eb7444600e",
I/flutter ( 6040): ║                             "key": "green_salad",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "سلطة خضرا",
I/flutter ( 6040): ║                             "nameI18n": {ar: سلطة خضرا, en: Green Salad},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "green_salad",
I/flutter ( 6040): ║                             "pricingModel": "per_100g",
I/flutter ( 6040): ║                             "priceHalala": 1500,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 100,
I/flutter ( 6040): ║                             "minWeightGrams": 100,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 50,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                     "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                     "key": "sauces",
I/flutter ( 6040): ║                                     "name": "الصوصات",
I/flutter ( 6040): ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
I/flutter ( 6040): ║                                     "minSelections": 1,
I/flutter ( 6040): ║                                     "maxSelections": 1,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 30,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36af36d002eb7445b5dd"
I/flutter ( 6040): ║                                             "optionId": "69fd36af36d002eb7445b5dd"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_ranch"
I/flutter ( 6040): ║                                             "name": "رانش"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رانش, en: Ranch},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36af36d002eb7445b5de"
I/flutter ( 6040): ║                                             "optionId": "69fd36af36d002eb7445b5de"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_spicy_ranch"
I/flutter ( 6040): ║                                             "name": "سبايسي رانش"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e0"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e0"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_pesto_sauce"
I/flutter ( 6040): ║                                             "name": "صوص بيستو"
I/flutter ( 6040): ║                                             "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e1"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e1"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_balsamic"
I/flutter ( 6040): ║                                             "name": "بالسميك"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بالسميك, en: Balsamic},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e2"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e2"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_caesar"
I/flutter ( 6040): ║                                             "name": "سيزر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سيزر, en: Caesar},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e3"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e3"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_honey_mustard"
I/flutter ( 6040): ║                                             "name": "هاني ماستر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e4"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e4"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_mint_yogurt"
I/flutter ( 6040): ║                                             "name": "زبادي بالنعناع"
I/flutter ( 6040): ║                                             "nameI18n": {ar: زبادي بالنعناع, en: Mint Yogurt},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e6"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e6"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_honey_garlic"
I/flutter ( 6040): ║                                             "name": "عسل بالثوم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عسل بالثوم, en: Honey Garlic},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                     "key": "cold_sandwiches",
I/flutter ( 6040): ║                     "name": "الساندويتش البارد",
I/flutter ( 6040): ║                     "nameI18n": {ar: الساندويتش البارد, en: Cold Sandwiches},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 30,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650036d002eb74446014",
I/flutter ( 6040): ║                             "key": "boiled_egg_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "بيض مسلوق",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 60,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650136d002eb74446015",
I/flutter ( 6040): ║                             "key": "turkey_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "تركي",
I/flutter ( 6040): ║                             "nameI18n": {ar: تركي, en: Turkey},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 70,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650136d002eb74446017",
I/flutter ( 6040): ║                             "key": "classic_halloumi_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "حلوم كلاسيكي",
I/flutter ( 6040): ║                             "nameI18n": {ar: حلوم كلاسيكي, en: Classic Halloumi},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 80,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650236d002eb7444601a",
I/flutter ( 6040): ║                             "key": "tuna_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "تونا",
I/flutter ( 6040): ║                             "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 90,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650336d002eb7444601b",
I/flutter ( 6040): ║                             "key": "scrambled_egg_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "بيض اسكرامبل",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيض اسكرامبل, en: Scrambled Egg},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 100,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650336d002eb7444601d",
I/flutter ( 6040): ║                             "key": "chicken_fajita_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "دجاج فاهيتا",
I/flutter ( 6040): ║                             "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 110,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650436d002eb7444601f",
I/flutter ( 6040): ║                             "key": "mexican_chicken_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "دجاج مكسيكي",
I/flutter ( 6040): ║                             "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 120,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650436d002eb74446020",
I/flutter ( 6040): ║                             "key": "grilled_chicken_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "دجاج مشوي",
I/flutter ( 6040): ║                             "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 130,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                     "key": "sourdough",
I/flutter ( 6040): ║                     "name": "الساندويشات",
I/flutter ( 6040): ║                     "nameI18n": {ar: الساندويشات, en: Sourdough Sandwiches},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 40,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650536d002eb74446021",
I/flutter ( 6040): ║                             "key": "halloumi_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو حلومي",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو حلومي, en: Halloumi Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 140,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650536d002eb74446022",
I/flutter ( 6040): ║                             "key": "turkey_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو تركي",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو تركي, en: Turkey Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 150,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650636d002eb74446023",
I/flutter ( 6040): ║                             "key": "tuna_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو تونا",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو تونا, en: Tuna Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 160,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650736d002eb74446024",
I/flutter ( 6040): ║                             "key": "grilled_chicken_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو دجاج مشوي",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو دجاج مشوي, en: Grilled Chicken Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 170,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                     "key": "desserts",
I/flutter ( 6040): ║                     "name": "الحلويات",
I/flutter ( 6040): ║                     "nameI18n": {ar: الحلويات, en: Desserts},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 50,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650736d002eb74446025",
I/flutter ( 6040): ║                             "key": "apple_cinnamon_muffin_2pcs",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "مافن التفاح بالقرفة (قطعتين)",
I/flutter ( 6040): ║                             "nameI18n": {ar: مافن التفاح بالقرفة (قطعتين), en: Apple Cinnamon Muffin (2 pcs)},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1200,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 180,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650836d002eb7444602a",
I/flutter ( 6040): ║                             "key": "berry_cheesecake",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "تشيز كيك بالتوت",
I/flutter ( 6040): ║                             "nameI18n": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 190,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650836d002eb7444602b",
I/flutter ( 6040): ║                             "key": "strawberry_cheesecake",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "تشيز كيك بالفراولة",
I/flutter ( 6040): ║                             "nameI18n": {ar: تشيز كيك بالفراولة, en: Strawberry Cheesecake},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 200,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650936d002eb7444602c",
I/flutter ( 6040): ║                             "key": "dark_brownies",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "براونيز داكن",
I/flutter ( 6040): ║                             "nameI18n": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 210,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650936d002eb7444602d",
I/flutter ( 6040): ║                             "key": "protein_bar",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "بروتين بار",
I/flutter ( 6040): ║                             "nameI18n": {ar: بروتين بار, en: Protein Bar},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1500,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 220,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650a36d002eb7444602f",
I/flutter ( 6040): ║                             "key": "basic_classic",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "بيسك كلاسيك",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيسك كلاسيك, en: Basic Classic},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1400,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 230,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650b36d002eb74446030",
I/flutter ( 6040): ║                             "key": "protein_chocolate_cake",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "كيك شوكولاتة بروتين",
I/flutter ( 6040): ║                             "nameI18n": {ar: كيك شوكولاتة بروتين, en: Protein Chocolate Cake},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 240,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                     "key": "juices",
I/flutter ( 6040): ║                     "name": "العصائر",
I/flutter ( 6040): ║                     "nameI18n": {ar: العصائر, en: Juices},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 60,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650b36d002eb74446032",
I/flutter ( 6040): ║                             "key": "berry_blast",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "بيري بلاست",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيري بلاست, en: Berry Blast},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 250,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650c36d002eb74446033",
I/flutter ( 6040): ║                             "key": "berry_prot",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "بيري بروت",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيري بروت, en: Berry Prot},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 260,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650c36d002eb74446035",
I/flutter ( 6040): ║                             "key": "classic_green",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "كلاسيك جرين",
I/flutter ( 6040): ║                             "nameI18n": {ar: كلاسيك جرين, en: Classic Green},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 270,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650d36d002eb74446037",
I/flutter ( 6040): ║                             "key": "orange_carrot",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "برتقال وجزر",
I/flutter ( 6040): ║                             "nameI18n": {ar: برتقال وجزر, en: Orange & Carrot},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 290,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650e36d002eb74446038",
I/flutter ( 6040): ║                             "key": "watermelon_mint",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "بطيخ بالنعناع",
I/flutter ( 6040): ║                             "nameI18n": {ar: بطيخ بالنعناع, en: Watermelon Mint},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 300,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                     "key": "drinks",
I/flutter ( 6040): ║                     "name": "المشروبات",
I/flutter ( 6040): ║                     "nameI18n": {ar: المشروبات, en: Drinks},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 70,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650e36d002eb7444603a",
I/flutter ( 6040): ║                             "key": "protein_drink",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "مشروب بروتين",
I/flutter ( 6040): ║                             "nameI18n": {ar: مشروب بروتين, en: Protein Drink},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 310,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650f36d002eb7444603b",
I/flutter ( 6040): ║                             "key": "diet_iced_tea",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "ايس تى دايت",
I/flutter ( 6040): ║                             "nameI18n": {ar: ايس تى دايت, en: Diet Iced Tea},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 400,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 320,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650f36d002eb7444603d",
I/flutter ( 6040): ║                             "key": "diet_soda",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "صودا دايت",
I/flutter ( 6040): ║                             "nameI18n": {ar: صودا دايت, en: Diet Soda},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 330,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651036d002eb7444603e",
I/flutter ( 6040): ║                             "key": "water",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "مياه عادية",
I/flutter ( 6040): ║                             "nameI18n": {ar: مياه عادية, en: Water},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 200,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 340,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                     "key": "ice_cream",
I/flutter ( 6040): ║                     "name": "الايس كريم",
I/flutter ( 6040): ║                     "nameI18n": {ar: الايس كريم, en: Ice Cream},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 80,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651036d002eb7444603f",
I/flutter ( 6040): ║                             "key": "vanilla_ice_cream",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                             "name": "ايس كريم فانيليا",
I/flutter ( 6040): ║                             "nameI18n": {ar: ايس كريم فانيليا, en: Vanilla Ice Cream},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "ice_cream",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 350,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651136d002eb74446041",
I/flutter ( 6040): ║                             "key": "chocolate_ice_cream",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                             "name": "ايس كريم شوكولا",
I/flutter ( 6040): ║                             "nameI18n": {ar: ايس كريم شوكولا, en: Chocolate Ice Cream},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "ice_cream",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 360,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651136d002eb74446043",
I/flutter ( 6040): ║                             "key": "ice_cream_add_on",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                             "name": "إضافة ايس كريم",
I/flutter ( 6040): ║                             "nameI18n": {ar: إضافة ايس كريم, en: Ice Cream Add-on},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "ice_cream",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 700,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 370,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                }
I/flutter ( 6040): ║             ],
I/flutter ( 6040): ║             "restaurantHours": {
I/flutter ( 6040): ║                 "openTime": "10:00",
I/flutter ( 6040): ║                 "closeTime": "23:00",
I/flutter ( 6040): ║                 "isOpenNow": false,
I/flutter ( 6040): ║                 "reason": "RESTAURANT_CLOSED",
I/flutter ( 6040): ║                 "message": "Restaurant is currently closed",
I/flutter ( 6040): ║                 "messageAr": "المطعم مغلق حاليا. يمكنك الطلب خلال ساعات العمل.",
I/flutter ( 6040): ║                 "messageEn": "Restaurant is currently closed. Please order during working hours."
I/flutter ( 6040): ║                 "businessDate": "2026-05-19",
I/flutter ( 6040): ║                 "businessTomorrow": "2026-05-20",
I/flutter ( 6040): ║                 "fulfillmentMethod": "pickup"
I/flutter ( 6040): ║            }
I/flutter ( 6040): ║        }
I/flutter ( 6040): ║    }
I/flutter ( 6040): ║
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): onChange -- MenuBloc, Change { currentState: MenuLoading(), nextState: MenuError(defaultError) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- MainBloc, Change { currentState: MainIndexChangedState(1), nextState: MainIndexChangedState(2) }
I/flutter ( 6040): onCreate -- FulfillmentStatusCubit
I/flutter ( 6040): onCreate -- PlansBloc
I/flutter ( 6040): onChange -- PlansBloc, Change { currentState: PlansInitial(null, null), nextState: PlansLoading(null, null) }
I/flutter ( 6040): onClose -- MenuBloc
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Request ║ GET
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/subscriptions/current/overview
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ accept: application/json
I/flutter ( 6040): ╟ content-type: application/json
I/flutter ( 6040): ╟ authorization:
I/flutter ( 6040): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTA4YTA3OWFjNjJhMWRmMWVlMWYyOD
I/flutter ( 6040): ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3OTE4NDIxNywiZXhwIjox
I/flutter ( 6040): ║ Nzc5MTg1MTE3fQ.k8vh5Kp-PXAHf9GqutYj1AWIrGG3YUzz3QKFvx5GnZQ
I/flutter ( 6040): ╟ Accept-Language: ar
I/flutter ( 6040): ╟ contentType: application/json
I/flutter ( 6040): ╟ responseType: ResponseType.json
I/flutter ( 6040): ╟ followRedirects: true
I/flutter ( 6040): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 418 ms
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/subscriptions/current/overview
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6040): ╟ x-render-origin-server: [Render]
I/flutter ( 6040): ╟ date: [Tue, 19 May 2026 09:50:24 GMT]
I/flutter ( 6040): ╟ transfer-encoding: [chunked]
I/flutter ( 6040): ╟ origin-agent-cluster: [?1]
I/flutter ( 6040): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 6040): ╟ server: [cloudflare]
I/flutter ( 6040): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6040): ╟ cf-ray: [9fe232786a9e97b3-MRS]
I/flutter ( 6040): ╟ etag: [W/"1b-BQ4wsTbGhkgrMnOKvzDkIbXIV3Q"]
I/flutter ( 6040): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6040): ╟ content-security-policy:
I/flutter ( 6040): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6040): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6040): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6040): ╟ connection: [keep-alive]
I/flutter ( 6040): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6040): ╟ referrer-policy: [no-referrer]
I/flutter ( 6040): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 6040): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6040): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6040): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6040): ╟ rndr-id: [9711cb74-50d2-49f0]
I/flutter ( 6040): ╟ x-xss-protection: [0]
I/flutter ( 6040): ╟ access-control-allow-credentials: [true]
I/flutter ( 6040): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 6040): ╟ x-download-options: [noopen]
I/flutter ( 6040): ╟ x-content-type-options: [nosniff]
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ║
I/flutter ( 6040): ║    {
I/flutter ( 6040): ║         "status": true,
I/flutter ( 6040): ║         "data": null
I/flutter ( 6040): ║    }
I/flutter ( 6040): ║
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): onChange -- PlansBloc, Change { currentState: PlansLoading(null, null), nextState: PlansError(defaultError, null, null) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- MainBloc, Change { currentState: MainIndexChangedState(2), nextState: MainIndexChangedState(3) }
I/flutter ( 6040): onCreate -- OrdersBloc
I/flutter ( 6040): onClose -- FulfillmentStatusCubit
I/flutter ( 6040): onChange -- OrdersBloc, Change { currentState: OrdersInitial(), nextState: OrdersLoading() }
I/flutter ( 6040): onClose -- PlansBloc
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Request ║ GET
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/orders?page=1&limit=20
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Query Parameters
I/flutter ( 6040): ╟ page: 1
I/flutter ( 6040): ╟ limit: 20
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ accept: application/json
I/flutter ( 6040): ╟ content-type: application/json
I/flutter ( 6040): ╟ authorization:
I/flutter ( 6040): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTA4YTA3OWFjNjJhMWRmMWVlMWYyOD
I/flutter ( 6040): ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3OTE4NDIxNywiZXhwIjox
I/flutter ( 6040): ║ Nzc5MTg1MTE3fQ.k8vh5Kp-PXAHf9GqutYj1AWIrGG3YUzz3QKFvx5GnZQ
I/flutter ( 6040): ╟ Accept-Language: ar
I/flutter ( 6040): ╟ contentType: application/json
I/flutter ( 6040): ╟ responseType: ResponseType.json
I/flutter ( 6040): ╟ followRedirects: true
I/flutter ( 6040): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 419 ms
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/orders?page=1&limit=20
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6040): ╟ x-render-origin-server: [Render]
I/flutter ( 6040): ╟ date: [Tue, 19 May 2026 09:50:25 GMT]
I/flutter ( 6040): ╟ transfer-encoding: [chunked]
I/flutter ( 6040): ╟ origin-agent-cluster: [?1]
I/flutter ( 6040): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 6040): ╟ content-encoding: [gzip]
I/flutter ( 6040): ╟ server: [cloudflare]
I/flutter ( 6040): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6040): ╟ cf-ray: [9fe23281ed8897b3-MRS]
I/flutter ( 6040): ╟ etag: [W/"5a-YGkjNHMkV3iVQ79jDdCqxj6YPXg"]
I/flutter ( 6040): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6040): ╟ content-security-policy:
I/flutter ( 6040): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6040): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6040): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6040): ╟ connection: [keep-alive]
I/flutter ( 6040): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6040): ╟ referrer-policy: [no-referrer]
I/flutter ( 6040): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 6040): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6040): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6040): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6040): ╟ rndr-id: [955c2f03-51cb-4d1b]
I/flutter ( 6040): ╟ x-xss-protection: [0]
I/flutter ( 6040): ╟ access-control-allow-credentials: [true]
I/flutter ( 6040): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 6040): ╟ x-download-options: [noopen]
I/flutter ( 6040): ╟ x-content-type-options: [nosniff]
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ║
I/flutter ( 6040): ║    {
I/flutter ( 6040): ║         "status": true,
I/flutter ( 6040): ║         "data": {
I/flutter ( 6040): ║             "items": []
I/flutter ( 6040): ║             "pagination": {page: 1, limit: 20, total: 0, pages: 0}
I/flutter ( 6040): ║        }
I/flutter ( 6040): ║    }
I/flutter ( 6040): ║
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): onChange -- OrdersBloc, Change { currentState: OrdersLoading(), nextState: OrdersError(defaultError) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- MainBloc, Change { currentState: MainIndexChangedState(3), nextState: MainIndexChangedState(4) }
I/flutter ( 6040): onClose -- OrdersBloc
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- MainBloc, Change { currentState: MainIndexChangedState(4), nextState: MainIndexChangedState(2) }
I/flutter ( 6040): onCreate -- FulfillmentStatusCubit
I/flutter ( 6040): onCreate -- PlansBloc
I/flutter ( 6040): onChange -- PlansBloc, Change { currentState: PlansInitial(null, null), nextState: PlansLoading(null, null) }
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Request ║ GET
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/subscriptions/current/overview
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ accept: application/json
I/flutter ( 6040): ╟ content-type: application/json
I/flutter ( 6040): ╟ authorization:
I/flutter ( 6040): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTA4YTA3OWFjNjJhMWRmMWVlMWYyOD
I/flutter ( 6040): ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3OTE4NDIxNywiZXhwIjox
I/flutter ( 6040): ║ Nzc5MTg1MTE3fQ.k8vh5Kp-PXAHf9GqutYj1AWIrGG3YUzz3QKFvx5GnZQ
I/flutter ( 6040): ╟ Accept-Language: ar
I/flutter ( 6040): ╟ contentType: application/json
I/flutter ( 6040): ╟ responseType: ResponseType.json
I/flutter ( 6040): ╟ followRedirects: true
I/flutter ( 6040): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 685 ms
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/subscriptions/current/overview
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6040): ╟ x-render-origin-server: [Render]
I/flutter ( 6040): ╟ date: [Tue, 19 May 2026 09:50:33 GMT]
I/flutter ( 6040): ╟ transfer-encoding: [chunked]
I/flutter ( 6040): ╟ origin-agent-cluster: [?1]
I/flutter ( 6040): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 6040): ╟ server: [cloudflare]
I/flutter ( 6040): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6040): ╟ cf-ray: [9fe232afafa7c6a5-MRS]
I/flutter ( 6040): ╟ etag: [W/"1b-BQ4wsTbGhkgrMnOKvzDkIbXIV3Q"]
I/flutter ( 6040): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6040): ╟ content-security-policy:
I/flutter ( 6040): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6040): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6040): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6040): ╟ connection: [keep-alive]
I/flutter ( 6040): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6040): ╟ referrer-policy: [no-referrer]
I/flutter ( 6040): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 6040): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6040): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6040): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6040): ╟ rndr-id: [050ac2af-bbf5-4ad2]
I/flutter ( 6040): ╟ x-xss-protection: [0]
I/flutter ( 6040): ╟ access-control-allow-credentials: [true]
I/flutter ( 6040): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 6040): ╟ x-download-options: [noopen]
I/flutter ( 6040): ╟ x-content-type-options: [nosniff]
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ║
I/flutter ( 6040): ║    {
I/flutter ( 6040): ║         "status": true,
I/flutter ( 6040): ║         "data": null
I/flutter ( 6040): ║    }
I/flutter ( 6040): ║
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): onChange -- PlansBloc, Change { currentState: PlansLoading(null, null), nextState: PlansError(defaultError, null, null) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- MainBloc, Change { currentState: MainIndexChangedState(2), nextState: MainIndexChangedState(3) }
I/flutter ( 6040): onCreate -- OrdersBloc
I/flutter ( 6040): onClose -- FulfillmentStatusCubit
I/flutter ( 6040): onChange -- OrdersBloc, Change { currentState: OrdersInitial(), nextState: OrdersLoading() }
I/flutter ( 6040): onClose -- PlansBloc
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Request ║ GET
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/orders?page=1&limit=20
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Query Parameters
I/flutter ( 6040): ╟ page: 1
I/flutter ( 6040): ╟ limit: 20
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ accept: application/json
I/flutter ( 6040): ╟ content-type: application/json
I/flutter ( 6040): ╟ authorization:
I/flutter ( 6040): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTA4YTA3OWFjNjJhMWRmMWVlMWYyOD
I/flutter ( 6040): ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3OTE4NDIxNywiZXhwIjox
I/flutter ( 6040): ║ Nzc5MTg1MTE3fQ.k8vh5Kp-PXAHf9GqutYj1AWIrGG3YUzz3QKFvx5GnZQ
I/flutter ( 6040): ╟ Accept-Language: ar
I/flutter ( 6040): ╟ contentType: application/json
I/flutter ( 6040): ╟ responseType: ResponseType.json
I/flutter ( 6040): ╟ followRedirects: true
I/flutter ( 6040): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 447 ms
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/orders?page=1&limit=20
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6040): ╟ x-render-origin-server: [Render]
I/flutter ( 6040): ╟ date: [Tue, 19 May 2026 09:50:34 GMT]
I/flutter ( 6040): ╟ transfer-encoding: [chunked]
I/flutter ( 6040): ╟ origin-agent-cluster: [?1]
I/flutter ( 6040): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 6040): ╟ content-encoding: [gzip]
I/flutter ( 6040): ╟ server: [cloudflare]
I/flutter ( 6040): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6040): ╟ cf-ray: [9fe232b79fdbc6a5-MRS]
I/flutter ( 6040): ╟ etag: [W/"5a-YGkjNHMkV3iVQ79jDdCqxj6YPXg"]
I/flutter ( 6040): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6040): ╟ content-security-policy:
I/flutter ( 6040): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6040): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6040): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6040): ╟ connection: [keep-alive]
I/flutter ( 6040): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6040): ╟ referrer-policy: [no-referrer]
I/flutter ( 6040): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 6040): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6040): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6040): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6040): ╟ rndr-id: [49692268-cc30-4033]
I/flutter ( 6040): ╟ x-xss-protection: [0]
I/flutter ( 6040): ╟ access-control-allow-credentials: [true]
I/flutter ( 6040): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 6040): ╟ x-download-options: [noopen]
I/flutter ( 6040): ╟ x-content-type-options: [nosniff]
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ║
I/flutter ( 6040): ║    {
I/flutter ( 6040): ║         "status": true,
I/flutter ( 6040): ║         "data": {
I/flutter ( 6040): ║             "items": []
I/flutter ( 6040): ║             "pagination": {page: 1, limit: 20, total: 0, pages: 0}
I/flutter ( 6040): ║        }
I/flutter ( 6040): ║    }
I/flutter ( 6040): ║
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): onChange -- OrdersBloc, Change { currentState: OrdersLoading(), nextState: OrdersError(defaultError) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- MainBloc, Change { currentState: MainIndexChangedState(3), nextState: MainIndexChangedState(1) }
I/flutter ( 6040): onCreate -- MenuBloc
I/flutter ( 6040): onChange -- MenuBloc, Change { currentState: MenuInitial(), nextState: MenuLoading() }
I/flutter ( 6040): onClose -- OrdersBloc
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Request ║ GET
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ accept: application/json
I/flutter ( 6040): ╟ content-type: application/json
I/flutter ( 6040): ╟ authorization:
I/flutter ( 6040): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTA4YTA3OWFjNjJhMWRmMWVlMWYyOD
I/flutter ( 6040): ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3OTE4NDIxNywiZXhwIjox
I/flutter ( 6040): ║ Nzc5MTg1MTE3fQ.k8vh5Kp-PXAHf9GqutYj1AWIrGG3YUzz3QKFvx5GnZQ
I/flutter ( 6040): ╟ Accept-Language: ar
I/flutter ( 6040): ╟ contentType: application/json
I/flutter ( 6040): ╟ responseType: ResponseType.json
I/flutter ( 6040): ╟ followRedirects: true
I/flutter ( 6040): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 738 ms
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6040): ╟ x-render-origin-server: [Render]
I/flutter ( 6040): ╟ date: [Tue, 19 May 2026 09:50:35 GMT]
I/flutter ( 6040): ╟ transfer-encoding: [chunked]
I/flutter ( 6040): ╟ origin-agent-cluster: [?1]
I/flutter ( 6040): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 6040): ╟ content-encoding: [gzip]
I/flutter ( 6040): ╟ server: [cloudflare]
I/flutter ( 6040): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6040): ╟ cf-ray: [9fe232be0cd8c6a5-MRS]
I/flutter ( 6040): ╟ etag: [W/"9cd1-OYdTHDCI4NIIlP1inyUWlB8kuVg"]
I/flutter ( 6040): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6040): ╟ content-security-policy:
I/flutter ( 6040): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6040): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6040): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6040): ╟ connection: [keep-alive]
I/flutter ( 6040): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6040): ╟ referrer-policy: [no-referrer]
I/flutter ( 6040): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 6040): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6040): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6040): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6040): ╟ rndr-id: [aa1836c8-b8f5-4be0]
I/flutter ( 6040): ╟ x-xss-protection: [0]
I/flutter ( 6040): ╟ access-control-allow-credentials: [true]
I/flutter ( 6040): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 6040): ╟ x-download-options: [noopen]
I/flutter ( 6040): ╟ x-content-type-options: [nosniff]
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ║
I/flutter ( 6040): ║    {
I/flutter ( 6040): ║         "status": true,
I/flutter ( 6040): ║         "data": {
I/flutter ( 6040): ║             "source": "one_time_order",
I/flutter ( 6040): ║             "fulfillmentMethod": "pickup",
I/flutter ( 6040): ║             "currency": "SAR",
I/flutter ( 6040): ║             "vatIncluded": true,
I/flutter ( 6040): ║             "vatPercentage": 15,
I/flutter ( 6040): ║             "itemTypes": [
I/flutter ( 6040): ║                     basic_salad,
I/flutter ( 6040): ║                     basic_meal,
I/flutter ( 6040): ║                     fruit_salad,
I/flutter ( 6040): ║                     greek_yogurt,
I/flutter ( 6040): ║                     green_salad,
I/flutter ( 6040): ║                     cold_sandwich,
I/flutter ( 6040): ║                     sourdough,
I/flutter ( 6040): ║                     dessert,
I/flutter ( 6040): ║                     juice,
I/flutter ( 6040): ║                     drink,
I/flutter ( 6040): ║                     ice_cream,
I/flutter ( 6040): ║                     product
I/flutter ( 6040): ║             ],
I/flutter ( 6040): ║             "categories": [
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                     "key": "custom_order",
I/flutter ( 6040): ║                     "name": "اطلب على مزاجك",
I/flutter ( 6040): ║                     "nameI18n": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 10,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb649936d002eb74445f66",
I/flutter ( 6040): ║                             "key": "basic_salad",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "سلطة بيسك",
I/flutter ( 6040): ║                             "nameI18n": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "https://cdn1.foodviva.com/static-content/food-images/salad-re
I/flutter ( 6040): ║                              cipes/vegetable-salad-recipe/vegetable-salad-recipe.jpg"
I/flutter ( 6040): ║                             "itemType": "basic_salad",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 3000,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 100,
I/flutter ( 6040): ║                             "minWeightGrams": 100,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 10,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "key": "fruits",
I/flutter ( 6040): ║                                     "name": "فواكه",
I/flutter ( 6040): ║                                     "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6040): ║                                     "minSelections": 0,
I/flutter ( 6040): ║                                     "maxSelections": 1,
I/flutter ( 6040): ║                                     "isRequired": false,
I/flutter ( 6040): ║                                     "sortOrder": 30,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_strawberry"
I/flutter ( 6040): ║                                             "name": "فراولة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 500
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 1
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64ee36d002eb74445ffe",
I/flutter ( 6040): ║                             "key": "basic_meal",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "وجبة بيسك",
I/flutter ( 6040): ║                             "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "basic_meal",
I/flutter ( 6040): ║                             "pricingModel": "per_100g",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 100,
I/flutter ( 6040): ║                             "minWeightGrams": 100,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 20,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                     "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                     "key": "carbs",
I/flutter ( 6040): ║                                     "name": "كارب",
I/flutter ( 6040): ║                                     "nameI18n": {ar: كارب, en: Carbs},
I/flutter ( 6040): ║                                     "minSelections": 3,
I/flutter ( 6040): ║                                     "maxSelections": 3,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 10,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5e7"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5e7"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_white_rice"
I/flutter ( 6040): ║                                             "name": "رز ابيض"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رز ابيض, en: White Rice},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5e8"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5e8"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_turmeric_rice"
I/flutter ( 6040): ║                                             "name": "رز بالكركم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5e9"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5e9"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_biryani_rice"
I/flutter ( 6040): ║                                             "name": "رز برياني"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رز برياني, en: Biryani Rice},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5ea"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5ea"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_quinoa"
I/flutter ( 6040): ║                                             "name": "كينوا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: كينوا, en: Quinoa},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5eb"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5eb"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_alfredo_pasta"
I/flutter ( 6040): ║                                             "name": "باستا الفريدو"
I/flutter ( 6040): ║                                             "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ec"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ec"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_red_sauce_pasta"
I/flutter ( 6040): ║                                             "name": "باستا بالصوص الأحمر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: باستا بالصوص الأحمر, en: Red Sauce Pasta},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ed"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ed"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_roasted_potato"
I/flutter ( 6040): ║                                             "name": "بطاطس مشوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطاطس مشوي, en: Roasted Potato},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ee"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ee"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_sweet_potato"
I/flutter ( 6040): ║                                             "name": "بطاطا حلوة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ef"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ef"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_mixed_grilled_vegetables"
I/flutter ( 6040): ║                                             "name": "خضار مشكل مشوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: خضار مشكل مشوي, en: Mixed Grilled Vegetables},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                },
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                     "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                     "key": "proteins",
I/flutter ( 6040): ║                                     "name": "بروتينات",
I/flutter ( 6040): ║                                     "nameI18n": {ar: بروتينات, en: Proteins},
I/flutter ( 6040): ║                                     "minSelections": 1,
I/flutter ( 6040): ║                                     "maxSelections": 1,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 20,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5c1"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5c1"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_boiled_egg"
I/flutter ( 6040): ║                                             "name": "بيض مسلوق"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c2"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c2"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_tuna"
I/flutter ( 6040): ║                                             "name": "تونا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c3"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c3"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_fajita"
I/flutter ( 6040): ║                                             "name": "فاهيتا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فاهيتا, en: Fajita},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d3"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d3"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_butter_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج زبدة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج زبدة, en: Butter Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d5"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d5"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_cream_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج كريمة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج كريمة, en: Cream Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d6"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d6"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_coconut_curry_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج كاري وجوز الهند"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج كاري وجوز الهند, en: Coconut Curry Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c4"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c4"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_spicy_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج سبايسي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c5"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c5"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_italian_herb_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج توابل إيطالية"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Herb Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c6"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c6"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_chicken_tikka"
I/flutter ( 6040): ║                                             "name": "دجاج تكا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ab36d002eb7445b5c8"
I/flutter ( 6040): ║                                             "optionId": "69fd36ab36d002eb7445b5c8"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_asian_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج آسيوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 100
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ab36d002eb7445b5c9"
I/flutter ( 6040): ║                                             "optionId": "69fd36ab36d002eb7445b5c9"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_chicken_strips"
I/flutter ( 6040): ║                                             "name": "استربس"
I/flutter ( 6040): ║                                             "nameI18n": {ar: استربس, en: Chicken Strips},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 110
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ab36d002eb7445b5cb"
I/flutter ( 6040): ║                                             "optionId": "69fd36ab36d002eb7445b5cb"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_grilled_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج مشوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 120
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5cc"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5cc"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_mexican_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج مكسيكي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 130
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5cd"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5cd"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_meatballs"
I/flutter ( 6040): ║                                             "name": "كرات لحم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: كرات لحم, en: Meatballs},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 300
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 600
I/flutter ( 6040): ║                                             "sortOrder": 140
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5ce"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5ce"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_beef_stroganoff"
I/flutter ( 6040): ║                                             "name": "لحم استرغانوف"
I/flutter ( 6040): ║                                             "nameI18n": {ar: لحم استرغانوف, en: Beef Stroganoff},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 300
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 600
I/flutter ( 6040): ║                                             "sortOrder": 150
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5cf"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5cf"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_steak"
I/flutter ( 6040): ║                                             "name": "ستيك لحم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: ستيك لحم, en: Steak},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 2000
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 1000
I/flutter ( 6040): ║                                             "sortOrder": 160
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5d0"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5d0"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_shrimp"
I/flutter ( 6040): ║                                             "name": "جمبري"
I/flutter ( 6040): ║                                             "nameI18n": {ar: جمبري, en: Shrimp},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 2000
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 1000
I/flutter ( 6040): ║                                             "sortOrder": 170
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d1"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d1"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_fish_fillet"
I/flutter ( 6040): ║                                             "name": "سمك فيليه"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 180
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d2"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d2"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_salmon"
I/flutter ( 6040): ║                                             "name": "سالمون"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سالمون, en: Salmon},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 2000
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 1000
I/flutter ( 6040): ║                                             "sortOrder": 190
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64f436d002eb74446009",
I/flutter ( 6040): ║                             "key": "fruit_salad",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "سلطة فواكه",
I/flutter ( 6040): ║                             "nameI18n": {ar: سلطة فواكه, en: Fruit Salad},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "fruit_salad",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1700,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 150,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 30,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "key": "fruits",
I/flutter ( 6040): ║                                     "name": "فواكه",
I/flutter ( 6040): ║                                     "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6040): ║                                     "minSelections": 9,
I/flutter ( 6040): ║                                     "maxSelections": 9,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 10,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_mango"
I/flutter ( 6040): ║                                             "name": "مانجا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: مانجا, en: Mango},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_green_apple"
I/flutter ( 6040): ║                                             "name": "تفاح اخضر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_pomegranate"
I/flutter ( 6040): ║                                             "name": "رمان"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_strawberry"
I/flutter ( 6040): ║                                             "name": "فراولة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_blueberry"
I/flutter ( 6040): ║                                             "name": "توت ازرق"
I/flutter ( 6040): ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_watermelon"
I/flutter ( 6040): ║                                             "name": "بطيخ"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_cantaloupe"
I/flutter ( 6040): ║                                             "name": "شمام"
I/flutter ( 6040): ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_dates"
I/flutter ( 6040): ║                                             "name": "تمر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تمر, en: Dates},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_honey"
I/flutter ( 6040): ║                                             "name": "عسل"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عسل, en: Honey},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64f636d002eb7444600c",
I/flutter ( 6040): ║                             "key": "greek_yogurt",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "زبادي يوناني",
I/flutter ( 6040): ║                             "nameI18n": {ar: زبادي يوناني, en: Greek Yogurt},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "greek_yogurt",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1700,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 200,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 40,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "key": "fruits",
I/flutter ( 6040): ║                                     "name": "فواكه",
I/flutter ( 6040): ║                                     "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6040): ║                                     "minSelections": 5,
I/flutter ( 6040): ║                                     "maxSelections": 5,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 10,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_mango"
I/flutter ( 6040): ║                                             "name": "مانجا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: مانجا, en: Mango},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_green_apple"
I/flutter ( 6040): ║                                             "name": "تفاح اخضر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_pomegranate"
I/flutter ( 6040): ║                                             "name": "رمان"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_strawberry"
I/flutter ( 6040): ║                                             "name": "فراولة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_blueberry"
I/flutter ( 6040): ║                                             "name": "توت ازرق"
I/flutter ( 6040): ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_watermelon"
I/flutter ( 6040): ║                                             "name": "بطيخ"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_cantaloupe"
I/flutter ( 6040): ║                                             "name": "شمام"
I/flutter ( 6040): ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_dates"
I/flutter ( 6040): ║                                             "name": "تمر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تمر, en: Dates},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_honey"
I/flutter ( 6040): ║                                             "name": "عسل"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عسل, en: Honey},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                },
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                     "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                     "key": "nuts",
I/flutter ( 6040): ║                                     "name": "المكسرات",
I/flutter ( 6040): ║                                     "nameI18n": {ar: المكسرات, en: Nuts},
I/flutter ( 6040): ║                                     "minSelections": 0,
I/flutter ( 6040): ║                                     "maxSelections": 3,
I/flutter ( 6040): ║                                     "isRequired": false,
I/flutter ( 6040): ║                                     "sortOrder": 20,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b336d002eb7445b5f0"
I/flutter ( 6040): ║                                             "optionId": "69fd36b336d002eb7445b5f0"
I/flutter ( 6040): ║                                             "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                             "key": "nuts_cashew"
I/flutter ( 6040): ║                                             "name": "كاجو"
I/flutter ( 6040): ║                                             "nameI18n": {ar: كاجو, en: Cashew},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b336d002eb7445b5f1"
I/flutter ( 6040): ║                                             "optionId": "69fd36b336d002eb7445b5f1"
I/flutter ( 6040): ║                                             "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                             "key": "nuts_walnut"
I/flutter ( 6040): ║                                             "name": "عين الجمل"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عين الجمل, en: Walnut},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b336d002eb7445b5f2"
I/flutter ( 6040): ║                                             "optionId": "69fd36b336d002eb7445b5f2"
I/flutter ( 6040): ║                                             "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                             "key": "nuts_sesame"
I/flutter ( 6040): ║                                             "name": "سمسم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سمسم, en: Sesame},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64fa36d002eb7444600e",
I/flutter ( 6040): ║                             "key": "green_salad",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "سلطة خضرا",
I/flutter ( 6040): ║                             "nameI18n": {ar: سلطة خضرا, en: Green Salad},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "green_salad",
I/flutter ( 6040): ║                             "pricingModel": "per_100g",
I/flutter ( 6040): ║                             "priceHalala": 1500,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 100,
I/flutter ( 6040): ║                             "minWeightGrams": 100,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 50,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                     "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                     "key": "sauces",
I/flutter ( 6040): ║                                     "name": "الصوصات",
I/flutter ( 6040): ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
I/flutter ( 6040): ║                                     "minSelections": 1,
I/flutter ( 6040): ║                                     "maxSelections": 1,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 30,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36af36d002eb7445b5dd"
I/flutter ( 6040): ║                                             "optionId": "69fd36af36d002eb7445b5dd"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_ranch"
I/flutter ( 6040): ║                                             "name": "رانش"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رانش, en: Ranch},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36af36d002eb7445b5de"
I/flutter ( 6040): ║                                             "optionId": "69fd36af36d002eb7445b5de"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_spicy_ranch"
I/flutter ( 6040): ║                                             "name": "سبايسي رانش"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e0"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e0"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_pesto_sauce"
I/flutter ( 6040): ║                                             "name": "صوص بيستو"
I/flutter ( 6040): ║                                             "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e1"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e1"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_balsamic"
I/flutter ( 6040): ║                                             "name": "بالسميك"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بالسميك, en: Balsamic},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e2"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e2"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_caesar"
I/flutter ( 6040): ║                                             "name": "سيزر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سيزر, en: Caesar},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e3"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e3"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_honey_mustard"
I/flutter ( 6040): ║                                             "name": "هاني ماستر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e4"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e4"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_mint_yogurt"
I/flutter ( 6040): ║                                             "name": "زبادي بالنعناع"
I/flutter ( 6040): ║                                             "nameI18n": {ar: زبادي بالنعناع, en: Mint Yogurt},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e6"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e6"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_honey_garlic"
I/flutter ( 6040): ║                                             "name": "عسل بالثوم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عسل بالثوم, en: Honey Garlic},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                     "key": "cold_sandwiches",
I/flutter ( 6040): ║                     "name": "الساندويتش البارد",
I/flutter ( 6040): ║                     "nameI18n": {ar: الساندويتش البارد, en: Cold Sandwiches},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 30,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650036d002eb74446014",
I/flutter ( 6040): ║                             "key": "boiled_egg_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "بيض مسلوق",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 60,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650136d002eb74446015",
I/flutter ( 6040): ║                             "key": "turkey_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "تركي",
I/flutter ( 6040): ║                             "nameI18n": {ar: تركي, en: Turkey},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 70,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650136d002eb74446017",
I/flutter ( 6040): ║                             "key": "classic_halloumi_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "حلوم كلاسيكي",
I/flutter ( 6040): ║                             "nameI18n": {ar: حلوم كلاسيكي, en: Classic Halloumi},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 80,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650236d002eb7444601a",
I/flutter ( 6040): ║                             "key": "tuna_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "تونا",
I/flutter ( 6040): ║                             "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 90,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650336d002eb7444601b",
I/flutter ( 6040): ║                             "key": "scrambled_egg_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "بيض اسكرامبل",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيض اسكرامبل, en: Scrambled Egg},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 100,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650336d002eb7444601d",
I/flutter ( 6040): ║                             "key": "chicken_fajita_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "دجاج فاهيتا",
I/flutter ( 6040): ║                             "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 110,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650436d002eb7444601f",
I/flutter ( 6040): ║                             "key": "mexican_chicken_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "دجاج مكسيكي",
I/flutter ( 6040): ║                             "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 120,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650436d002eb74446020",
I/flutter ( 6040): ║                             "key": "grilled_chicken_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "دجاج مشوي",
I/flutter ( 6040): ║                             "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 130,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                     "key": "sourdough",
I/flutter ( 6040): ║                     "name": "الساندويشات",
I/flutter ( 6040): ║                     "nameI18n": {ar: الساندويشات, en: Sourdough Sandwiches},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 40,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650536d002eb74446021",
I/flutter ( 6040): ║                             "key": "halloumi_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو حلومي",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو حلومي, en: Halloumi Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 140,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650536d002eb74446022",
I/flutter ( 6040): ║                             "key": "turkey_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو تركي",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو تركي, en: Turkey Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 150,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650636d002eb74446023",
I/flutter ( 6040): ║                             "key": "tuna_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو تونا",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو تونا, en: Tuna Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 160,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650736d002eb74446024",
I/flutter ( 6040): ║                             "key": "grilled_chicken_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو دجاج مشوي",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو دجاج مشوي, en: Grilled Chicken Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 170,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                     "key": "desserts",
I/flutter ( 6040): ║                     "name": "الحلويات",
I/flutter ( 6040): ║                     "nameI18n": {ar: الحلويات, en: Desserts},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 50,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650736d002eb74446025",
I/flutter ( 6040): ║                             "key": "apple_cinnamon_muffin_2pcs",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "مافن التفاح بالقرفة (قطعتين)",
I/flutter ( 6040): ║                             "nameI18n": {ar: مافن التفاح بالقرفة (قطعتين), en: Apple Cinnamon Muffin (2 pcs)},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1200,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 180,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650836d002eb7444602a",
I/flutter ( 6040): ║                             "key": "berry_cheesecake",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "تشيز كيك بالتوت",
I/flutter ( 6040): ║                             "nameI18n": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 190,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650836d002eb7444602b",
I/flutter ( 6040): ║                             "key": "strawberry_cheesecake",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "تشيز كيك بالفراولة",
I/flutter ( 6040): ║                             "nameI18n": {ar: تشيز كيك بالفراولة, en: Strawberry Cheesecake},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 200,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650936d002eb7444602c",
I/flutter ( 6040): ║                             "key": "dark_brownies",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "براونيز داكن",
I/flutter ( 6040): ║                             "nameI18n": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 210,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650936d002eb7444602d",
I/flutter ( 6040): ║                             "key": "protein_bar",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "بروتين بار",
I/flutter ( 6040): ║                             "nameI18n": {ar: بروتين بار, en: Protein Bar},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1500,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 220,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650a36d002eb7444602f",
I/flutter ( 6040): ║                             "key": "basic_classic",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "بيسك كلاسيك",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيسك كلاسيك, en: Basic Classic},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1400,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 230,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650b36d002eb74446030",
I/flutter ( 6040): ║                             "key": "protein_chocolate_cake",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "كيك شوكولاتة بروتين",
I/flutter ( 6040): ║                             "nameI18n": {ar: كيك شوكولاتة بروتين, en: Protein Chocolate Cake},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 240,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                     "key": "juices",
I/flutter ( 6040): ║                     "name": "العصائر",
I/flutter ( 6040): ║                     "nameI18n": {ar: العصائر, en: Juices},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 60,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650b36d002eb74446032",
I/flutter ( 6040): ║                             "key": "berry_blast",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "بيري بلاست",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيري بلاست, en: Berry Blast},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 250,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650c36d002eb74446033",
I/flutter ( 6040): ║                             "key": "berry_prot",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "بيري بروت",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيري بروت, en: Berry Prot},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 260,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650c36d002eb74446035",
I/flutter ( 6040): ║                             "key": "classic_green",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "كلاسيك جرين",
I/flutter ( 6040): ║                             "nameI18n": {ar: كلاسيك جرين, en: Classic Green},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 270,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650d36d002eb74446037",
I/flutter ( 6040): ║                             "key": "orange_carrot",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "برتقال وجزر",
I/flutter ( 6040): ║                             "nameI18n": {ar: برتقال وجزر, en: Orange & Carrot},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 290,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650e36d002eb74446038",
I/flutter ( 6040): ║                             "key": "watermelon_mint",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "بطيخ بالنعناع",
I/flutter ( 6040): ║                             "nameI18n": {ar: بطيخ بالنعناع, en: Watermelon Mint},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 300,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                     "key": "drinks",
I/flutter ( 6040): ║                     "name": "المشروبات",
I/flutter ( 6040): ║                     "nameI18n": {ar: المشروبات, en: Drinks},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 70,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650e36d002eb7444603a",
I/flutter ( 6040): ║                             "key": "protein_drink",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "مشروب بروتين",
I/flutter ( 6040): ║                             "nameI18n": {ar: مشروب بروتين, en: Protein Drink},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 310,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650f36d002eb7444603b",
I/flutter ( 6040): ║                             "key": "diet_iced_tea",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "ايس تى دايت",
I/flutter ( 6040): ║                             "nameI18n": {ar: ايس تى دايت, en: Diet Iced Tea},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 400,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 320,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650f36d002eb7444603d",
I/flutter ( 6040): ║                             "key": "diet_soda",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "صودا دايت",
I/flutter ( 6040): ║                             "nameI18n": {ar: صودا دايت, en: Diet Soda},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 330,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651036d002eb7444603e",
I/flutter ( 6040): ║                             "key": "water",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "مياه عادية",
I/flutter ( 6040): ║                             "nameI18n": {ar: مياه عادية, en: Water},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 200,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 340,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                     "key": "ice_cream",
I/flutter ( 6040): ║                     "name": "الايس كريم",
I/flutter ( 6040): ║                     "nameI18n": {ar: الايس كريم, en: Ice Cream},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 80,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651036d002eb7444603f",
I/flutter ( 6040): ║                             "key": "vanilla_ice_cream",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                             "name": "ايس كريم فانيليا",
I/flutter ( 6040): ║                             "nameI18n": {ar: ايس كريم فانيليا, en: Vanilla Ice Cream},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "ice_cream",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 350,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651136d002eb74446041",
I/flutter ( 6040): ║                             "key": "chocolate_ice_cream",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                             "name": "ايس كريم شوكولا",
I/flutter ( 6040): ║                             "nameI18n": {ar: ايس كريم شوكولا, en: Chocolate Ice Cream},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "ice_cream",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 360,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651136d002eb74446043",
I/flutter ( 6040): ║                             "key": "ice_cream_add_on",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                             "name": "إضافة ايس كريم",
I/flutter ( 6040): ║                             "nameI18n": {ar: إضافة ايس كريم, en: Ice Cream Add-on},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "ice_cream",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 700,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 370,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                }
I/flutter ( 6040): ║             ],
I/flutter ( 6040): ║             "restaurantHours": {
I/flutter ( 6040): ║                 "openTime": "10:00",
I/flutter ( 6040): ║                 "closeTime": "23:00",
I/flutter ( 6040): ║                 "isOpenNow": false,
I/flutter ( 6040): ║                 "reason": "RESTAURANT_CLOSED",
I/flutter ( 6040): ║                 "message": "Restaurant is currently closed",
I/flutter ( 6040): ║                 "messageAr": "المطعم مغلق حاليا. يمكنك الطلب خلال ساعات العمل.",
I/flutter ( 6040): ║                 "messageEn": "Restaurant is currently closed. Please order during working hours."
I/flutter ( 6040): ║                 "businessDate": "2026-05-19",
I/flutter ( 6040): ║                 "businessTomorrow": "2026-05-20",
I/flutter ( 6040): ║                 "fulfillmentMethod": "pickup"
I/flutter ( 6040): ║            }
I/flutter ( 6040): ║        }
I/flutter ( 6040): ║    }
I/flutter ( 6040): ║
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): onChange -- MenuBloc, Change { currentState: MenuLoading(), nextState: MenuError(defaultError) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- MainBloc, Change { currentState: MainIndexChangedState(1), nextState: MainIndexChangedState(0) }
I/flutter ( 6040): onCreate -- HomeBloc
I/flutter ( 6040): onClose -- MenuBloc
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- MainBloc, Change { currentState: MainIndexChangedState(0), nextState: MainIndexChangedState(1) }
I/flutter ( 6040): onCreate -- MenuBloc
I/flutter ( 6040): onChange -- MenuBloc, Change { currentState: MenuInitial(), nextState: MenuLoading() }
I/flutter ( 6040): onClose -- HomeBloc
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Request ║ GET
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ accept: application/json
I/flutter ( 6040): ╟ content-type: application/json
I/flutter ( 6040): ╟ authorization:
I/flutter ( 6040): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTA4YTA3OWFjNjJhMWRmMWVlMWYyOD
I/flutter ( 6040): ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3OTE4NDIxNywiZXhwIjox
I/flutter ( 6040): ║ Nzc5MTg1MTE3fQ.k8vh5Kp-PXAHf9GqutYj1AWIrGG3YUzz3QKFvx5GnZQ
I/flutter ( 6040): ╟ Accept-Language: ar
I/flutter ( 6040): ╟ contentType: application/json
I/flutter ( 6040): ╟ responseType: ResponseType.json
I/flutter ( 6040): ╟ followRedirects: true
I/flutter ( 6040): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 1564 ms
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/orders/menu
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6040): ╟ x-render-origin-server: [Render]
I/flutter ( 6040): ╟ date: [Tue, 19 May 2026 09:51:06 GMT]
I/flutter ( 6040): ╟ transfer-encoding: [chunked]
I/flutter ( 6040): ╟ origin-agent-cluster: [?1]
I/flutter ( 6040): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 6040): ╟ content-encoding: [gzip]
I/flutter ( 6040): ╟ server: [cloudflare]
I/flutter ( 6040): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6040): ╟ cf-ray: [9fe2337ace4ee1e9-MRS]
I/flutter ( 6040): ╟ etag: [W/"9cd1-OYdTHDCI4NIIlP1inyUWlB8kuVg"]
I/flutter ( 6040): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6040): ╟ content-security-policy:
I/flutter ( 6040): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6040): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6040): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6040): ╟ connection: [keep-alive]
I/flutter ( 6040): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6040): ╟ referrer-policy: [no-referrer]
I/flutter ( 6040): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 6040): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6040): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6040): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6040): ╟ rndr-id: [75638e56-0412-475f]
I/flutter ( 6040): ╟ x-xss-protection: [0]
I/flutter ( 6040): ╟ access-control-allow-credentials: [true]
I/flutter ( 6040): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 6040): ╟ x-download-options: [noopen]
I/flutter ( 6040): ╟ x-content-type-options: [nosniff]
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ║
I/flutter ( 6040): ║    {
I/flutter ( 6040): ║         "status": true,
I/flutter ( 6040): ║         "data": {
I/flutter ( 6040): ║             "source": "one_time_order",
I/flutter ( 6040): ║             "fulfillmentMethod": "pickup",
I/flutter ( 6040): ║             "currency": "SAR",
I/flutter ( 6040): ║             "vatIncluded": true,
I/flutter ( 6040): ║             "vatPercentage": 15,
I/flutter ( 6040): ║             "itemTypes": [
I/flutter ( 6040): ║                     basic_salad,
I/flutter ( 6040): ║                     basic_meal,
I/flutter ( 6040): ║                     fruit_salad,
I/flutter ( 6040): ║                     greek_yogurt,
I/flutter ( 6040): ║                     green_salad,
I/flutter ( 6040): ║                     cold_sandwich,
I/flutter ( 6040): ║                     sourdough,
I/flutter ( 6040): ║                     dessert,
I/flutter ( 6040): ║                     juice,
I/flutter ( 6040): ║                     drink,
I/flutter ( 6040): ║                     ice_cream,
I/flutter ( 6040): ║                     product
I/flutter ( 6040): ║             ],
I/flutter ( 6040): ║             "categories": [
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                     "key": "custom_order",
I/flutter ( 6040): ║                     "name": "اطلب على مزاجك",
I/flutter ( 6040): ║                     "nameI18n": {ar: اطلب على مزاجك, en: Custom Order},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 10,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb649936d002eb74445f66",
I/flutter ( 6040): ║                             "key": "basic_salad",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "سلطة بيسك",
I/flutter ( 6040): ║                             "nameI18n": {ar: سلطة بيسك, en: Basic Salad},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "https://cdn1.foodviva.com/static-content/food-images/salad-re
I/flutter ( 6040): ║                              cipes/vegetable-salad-recipe/vegetable-salad-recipe.jpg"
I/flutter ( 6040): ║                             "itemType": "basic_salad",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 3000,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 100,
I/flutter ( 6040): ║                             "minWeightGrams": 100,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 10,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "key": "fruits",
I/flutter ( 6040): ║                                     "name": "فواكه",
I/flutter ( 6040): ║                                     "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6040): ║                                     "minSelections": 0,
I/flutter ( 6040): ║                                     "maxSelections": 1,
I/flutter ( 6040): ║                                     "isRequired": false,
I/flutter ( 6040): ║                                     "sortOrder": 30,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_strawberry"
I/flutter ( 6040): ║                                             "name": "فراولة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 500
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 1
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64ee36d002eb74445ffe",
I/flutter ( 6040): ║                             "key": "basic_meal",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "وجبة بيسك",
I/flutter ( 6040): ║                             "nameI18n": {ar: وجبة بيسك, en: Basic Meal},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "basic_meal",
I/flutter ( 6040): ║                             "pricingModel": "per_100g",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 100,
I/flutter ( 6040): ║                             "minWeightGrams": 100,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 20,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                     "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                     "key": "carbs",
I/flutter ( 6040): ║                                     "name": "كارب",
I/flutter ( 6040): ║                                     "nameI18n": {ar: كارب, en: Carbs},
I/flutter ( 6040): ║                                     "minSelections": 3,
I/flutter ( 6040): ║                                     "maxSelections": 3,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 10,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5e7"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5e7"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_white_rice"
I/flutter ( 6040): ║                                             "name": "رز ابيض"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رز ابيض, en: White Rice},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5e8"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5e8"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_turmeric_rice"
I/flutter ( 6040): ║                                             "name": "رز بالكركم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رز بالكركم, en: Turmeric Rice},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5e9"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5e9"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_biryani_rice"
I/flutter ( 6040): ║                                             "name": "رز برياني"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رز برياني, en: Biryani Rice},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b136d002eb7445b5ea"
I/flutter ( 6040): ║                                             "optionId": "69fd36b136d002eb7445b5ea"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_quinoa"
I/flutter ( 6040): ║                                             "name": "كينوا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: كينوا, en: Quinoa},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5eb"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5eb"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_alfredo_pasta"
I/flutter ( 6040): ║                                             "name": "باستا الفريدو"
I/flutter ( 6040): ║                                             "nameI18n": {ar: باستا الفريدو, en: Alfredo Pasta},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ec"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ec"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_red_sauce_pasta"
I/flutter ( 6040): ║                                             "name": "باستا بالصوص الأحمر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: باستا بالصوص الأحمر, en: Red Sauce Pasta},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ed"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ed"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_roasted_potato"
I/flutter ( 6040): ║                                             "name": "بطاطس مشوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطاطس مشوي, en: Roasted Potato},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ee"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ee"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_sweet_potato"
I/flutter ( 6040): ║                                             "name": "بطاطا حلوة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطاطا حلوة, en: Sweet Potato},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b236d002eb7445b5ef"
I/flutter ( 6040): ║                                             "optionId": "69fd36b236d002eb7445b5ef"
I/flutter ( 6040): ║                                             "groupId": "69fb649736d002eb74445f5e"
I/flutter ( 6040): ║                                             "key": "carbs_mixed_grilled_vegetables"
I/flutter ( 6040): ║                                             "name": "خضار مشكل مشوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: خضار مشكل مشوي, en: Mixed Grilled Vegetables},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                },
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                     "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                     "key": "proteins",
I/flutter ( 6040): ║                                     "name": "بروتينات",
I/flutter ( 6040): ║                                     "nameI18n": {ar: بروتينات, en: Proteins},
I/flutter ( 6040): ║                                     "minSelections": 1,
I/flutter ( 6040): ║                                     "maxSelections": 1,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 20,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5c1"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5c1"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_boiled_egg"
I/flutter ( 6040): ║                                             "name": "بيض مسلوق"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c2"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c2"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_tuna"
I/flutter ( 6040): ║                                             "name": "تونا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c3"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c3"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_fajita"
I/flutter ( 6040): ║                                             "name": "فاهيتا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فاهيتا, en: Fajita},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d3"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d3"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_butter_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج زبدة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج زبدة, en: Butter Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d5"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d5"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_cream_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج كريمة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج كريمة, en: Cream Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d6"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d6"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_coconut_curry_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج كاري وجوز الهند"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج كاري وجوز الهند, en: Coconut Curry Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c4"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c4"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_spicy_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج سبايسي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج سبايسي, en: Spicy Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c5"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c5"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_italian_herb_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج توابل إيطالية"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج توابل إيطالية, en: Italian Herb Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36aa36d002eb7445b5c6"
I/flutter ( 6040): ║                                             "optionId": "69fd36aa36d002eb7445b5c6"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_chicken_tikka"
I/flutter ( 6040): ║                                             "name": "دجاج تكا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج تكا, en: Chicken Tikka},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ab36d002eb7445b5c8"
I/flutter ( 6040): ║                                             "optionId": "69fd36ab36d002eb7445b5c8"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_asian_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج آسيوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج آسيوي, en: Asian Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 100
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ab36d002eb7445b5c9"
I/flutter ( 6040): ║                                             "optionId": "69fd36ab36d002eb7445b5c9"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_chicken_strips"
I/flutter ( 6040): ║                                             "name": "استربس"
I/flutter ( 6040): ║                                             "nameI18n": {ar: استربس, en: Chicken Strips},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 110
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ab36d002eb7445b5cb"
I/flutter ( 6040): ║                                             "optionId": "69fd36ab36d002eb7445b5cb"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_grilled_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج مشوي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 120
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5cc"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5cc"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_mexican_chicken"
I/flutter ( 6040): ║                                             "name": "دجاج مكسيكي"
I/flutter ( 6040): ║                                             "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 500
I/flutter ( 6040): ║                                             "sortOrder": 130
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5cd"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5cd"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_meatballs"
I/flutter ( 6040): ║                                             "name": "كرات لحم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: كرات لحم, en: Meatballs},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 300
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 600
I/flutter ( 6040): ║                                             "sortOrder": 140
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5ce"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5ce"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_beef_stroganoff"
I/flutter ( 6040): ║                                             "name": "لحم استرغانوف"
I/flutter ( 6040): ║                                             "nameI18n": {ar: لحم استرغانوف, en: Beef Stroganoff},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 300
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 600
I/flutter ( 6040): ║                                             "sortOrder": 150
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5cf"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5cf"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_steak"
I/flutter ( 6040): ║                                             "name": "ستيك لحم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: ستيك لحم, en: Steak},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 2000
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 1000
I/flutter ( 6040): ║                                             "sortOrder": 160
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ac36d002eb7445b5d0"
I/flutter ( 6040): ║                                             "optionId": "69fd36ac36d002eb7445b5d0"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_shrimp"
I/flutter ( 6040): ║                                             "name": "جمبري"
I/flutter ( 6040): ║                                             "nameI18n": {ar: جمبري, en: Shrimp},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 2000
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 1000
I/flutter ( 6040): ║                                             "sortOrder": 170
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d1"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d1"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_fish_fillet"
I/flutter ( 6040): ║                                             "name": "سمك فيليه"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سمك فيليه, en: Fish Fillet},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 180
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36ad36d002eb7445b5d2"
I/flutter ( 6040): ║                                             "optionId": "69fd36ad36d002eb7445b5d2"
I/flutter ( 6040): ║                                             "groupId": "69fb649036d002eb74445f51"
I/flutter ( 6040): ║                                             "key": "proteins_salmon"
I/flutter ( 6040): ║                                             "name": "سالمون"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سالمون, en: Salmon},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 2000
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 50,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 1000
I/flutter ( 6040): ║                                             "sortOrder": 190
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64f436d002eb74446009",
I/flutter ( 6040): ║                             "key": "fruit_salad",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "سلطة فواكه",
I/flutter ( 6040): ║                             "nameI18n": {ar: سلطة فواكه, en: Fruit Salad},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "fruit_salad",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1700,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 150,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 30,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "key": "fruits",
I/flutter ( 6040): ║                                     "name": "فواكه",
I/flutter ( 6040): ║                                     "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6040): ║                                     "minSelections": 9,
I/flutter ( 6040): ║                                     "maxSelections": 9,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 10,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_mango"
I/flutter ( 6040): ║                                             "name": "مانجا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: مانجا, en: Mango},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_green_apple"
I/flutter ( 6040): ║                                             "name": "تفاح اخضر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_pomegranate"
I/flutter ( 6040): ║                                             "name": "رمان"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_strawberry"
I/flutter ( 6040): ║                                             "name": "فراولة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_blueberry"
I/flutter ( 6040): ║                                             "name": "توت ازرق"
I/flutter ( 6040): ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_watermelon"
I/flutter ( 6040): ║                                             "name": "بطيخ"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_cantaloupe"
I/flutter ( 6040): ║                                             "name": "شمام"
I/flutter ( 6040): ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_dates"
I/flutter ( 6040): ║                                             "name": "تمر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تمر, en: Dates},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_honey"
I/flutter ( 6040): ║                                             "name": "عسل"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عسل, en: Honey},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64f636d002eb7444600c",
I/flutter ( 6040): ║                             "key": "greek_yogurt",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "زبادي يوناني",
I/flutter ( 6040): ║                             "nameI18n": {ar: زبادي يوناني, en: Greek Yogurt},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "greek_yogurt",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1700,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 200,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 40,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                     "key": "fruits",
I/flutter ( 6040): ║                                     "name": "فواكه",
I/flutter ( 6040): ║                                     "nameI18n": {ar: فواكه, en: Fruits},
I/flutter ( 6040): ║                                     "minSelections": 5,
I/flutter ( 6040): ║                                     "maxSelections": 5,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 10,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b8"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_mango"
I/flutter ( 6040): ║                                             "name": "مانجا"
I/flutter ( 6040): ║                                             "nameI18n": {ar: مانجا, en: Mango},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "optionId": "69fd36a736d002eb7445b5b9"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_green_apple"
I/flutter ( 6040): ║                                             "name": "تفاح اخضر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تفاح اخضر, en: Green Apple},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5ba"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_pomegranate"
I/flutter ( 6040): ║                                             "name": "رمان"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رمان, en: Pomegranate},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bb"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_strawberry"
I/flutter ( 6040): ║                                             "name": "فراولة"
I/flutter ( 6040): ║                                             "nameI18n": {ar: فراولة, en: Strawberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bc"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_blueberry"
I/flutter ( 6040): ║                                             "name": "توت ازرق"
I/flutter ( 6040): ║                                             "nameI18n": {ar: توت ازرق, en: Blueberry},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "optionId": "69fd36a836d002eb7445b5bd"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_watermelon"
I/flutter ( 6040): ║                                             "name": "بطيخ"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بطيخ, en: Watermelon},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5be"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_cantaloupe"
I/flutter ( 6040): ║                                             "name": "شمام"
I/flutter ( 6040): ║                                             "nameI18n": {ar: شمام, en: Cantaloupe},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5bf"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_dates"
I/flutter ( 6040): ║                                             "name": "تمر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: تمر, en: Dates},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "optionId": "69fd36a936d002eb7445b5c0"
I/flutter ( 6040): ║                                             "groupId": "69fb648e36d002eb74445f48"
I/flutter ( 6040): ║                                             "key": "fruits_honey"
I/flutter ( 6040): ║                                             "name": "عسل"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عسل, en: Honey},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 90
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                },
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                     "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                     "key": "nuts",
I/flutter ( 6040): ║                                     "name": "المكسرات",
I/flutter ( 6040): ║                                     "nameI18n": {ar: المكسرات, en: Nuts},
I/flutter ( 6040): ║                                     "minSelections": 0,
I/flutter ( 6040): ║                                     "maxSelections": 3,
I/flutter ( 6040): ║                                     "isRequired": false,
I/flutter ( 6040): ║                                     "sortOrder": 20,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b336d002eb7445b5f0"
I/flutter ( 6040): ║                                             "optionId": "69fd36b336d002eb7445b5f0"
I/flutter ( 6040): ║                                             "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                             "key": "nuts_cashew"
I/flutter ( 6040): ║                                             "name": "كاجو"
I/flutter ( 6040): ║                                             "nameI18n": {ar: كاجو, en: Cashew},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b336d002eb7445b5f1"
I/flutter ( 6040): ║                                             "optionId": "69fd36b336d002eb7445b5f1"
I/flutter ( 6040): ║                                             "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                             "key": "nuts_walnut"
I/flutter ( 6040): ║                                             "name": "عين الجمل"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عين الجمل, en: Walnut},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b336d002eb7445b5f2"
I/flutter ( 6040): ║                                             "optionId": "69fd36b336d002eb7445b5f2"
I/flutter ( 6040): ║                                             "groupId": "69fb649936d002eb74445f64"
I/flutter ( 6040): ║                                             "key": "nuts_sesame"
I/flutter ( 6040): ║                                             "name": "سمسم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سمسم, en: Sesame},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb64fa36d002eb7444600e",
I/flutter ( 6040): ║                             "key": "green_salad",
I/flutter ( 6040): ║                             "categoryId": "69fd36a036d002eb7445b59e",
I/flutter ( 6040): ║                             "name": "سلطة خضرا",
I/flutter ( 6040): ║                             "nameI18n": {ar: سلطة خضرا, en: Green Salad},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "green_salad",
I/flutter ( 6040): ║                             "pricingModel": "per_100g",
I/flutter ( 6040): ║                             "priceHalala": 1500,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 100,
I/flutter ( 6040): ║                             "minWeightGrams": 100,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 50,
I/flutter ( 6040): ║                             "requiresBuilder": true,
I/flutter ( 6040): ║                             "canAddDirectly": false,
I/flutter ( 6040): ║                             "optionGroups": [
I/flutter ( 6040): ║                                {
I/flutter ( 6040): ║                                     "id": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                     "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                     "key": "sauces",
I/flutter ( 6040): ║                                     "name": "الصوصات",
I/flutter ( 6040): ║                                     "nameI18n": {ar: الصوصات, en: Sauces},
I/flutter ( 6040): ║                                     "minSelections": 1,
I/flutter ( 6040): ║                                     "maxSelections": 1,
I/flutter ( 6040): ║                                     "isRequired": true,
I/flutter ( 6040): ║                                     "sortOrder": 30,
I/flutter ( 6040): ║                                     "options": [
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36af36d002eb7445b5dd"
I/flutter ( 6040): ║                                             "optionId": "69fd36af36d002eb7445b5dd"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_ranch"
I/flutter ( 6040): ║                                             "name": "رانش"
I/flutter ( 6040): ║                                             "nameI18n": {ar: رانش, en: Ranch},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 10
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36af36d002eb7445b5de"
I/flutter ( 6040): ║                                             "optionId": "69fd36af36d002eb7445b5de"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_spicy_ranch"
I/flutter ( 6040): ║                                             "name": "سبايسي رانش"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سبايسي رانش, en: Spicy Ranch},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 20
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e0"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e0"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_pesto_sauce"
I/flutter ( 6040): ║                                             "name": "صوص بيستو"
I/flutter ( 6040): ║                                             "nameI18n": {ar: صوص بيستو, en: Pesto Sauce},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 30
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e1"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e1"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_balsamic"
I/flutter ( 6040): ║                                             "name": "بالسميك"
I/flutter ( 6040): ║                                             "nameI18n": {ar: بالسميك, en: Balsamic},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 40
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e2"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e2"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_caesar"
I/flutter ( 6040): ║                                             "name": "سيزر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: سيزر, en: Caesar},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 50
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e3"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e3"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_honey_mustard"
I/flutter ( 6040): ║                                             "name": "هاني ماستر"
I/flutter ( 6040): ║                                             "nameI18n": {ar: هاني ماستر, en: Honey Mustard},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 60
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e4"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e4"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_mint_yogurt"
I/flutter ( 6040): ║                                             "name": "زبادي بالنعناع"
I/flutter ( 6040): ║                                             "nameI18n": {ar: زبادي بالنعناع, en: Mint Yogurt},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 70
I/flutter ( 6040): ║                                        },
I/flutter ( 6040): ║                                        {
I/flutter ( 6040): ║                                             "id": "69fd36b036d002eb7445b5e6"
I/flutter ( 6040): ║                                             "optionId": "69fd36b036d002eb7445b5e6"
I/flutter ( 6040): ║                                             "groupId": "69fb649536d002eb74445f5a"
I/flutter ( 6040): ║                                             "key": "sauces_honey_garlic"
I/flutter ( 6040): ║                                             "name": "عسل بالثوم"
I/flutter ( 6040): ║                                             "nameI18n": {ar: عسل بالثوم, en: Honey Garlic},
I/flutter ( 6040): ║                                             "imageUrl": "",
I/flutter ( 6040): ║                                             "extraPriceHalala": 0,
I/flutter ( 6040): ║                                             "extraWeightUnitGrams": 0,
I/flutter ( 6040): ║                                             "extraWeightPriceHalala": 0,
I/flutter ( 6040): ║                                             "sortOrder": 80
I/flutter ( 6040): ║                                        }
I/flutter ( 6040): ║                                     ]
I/flutter ( 6040): ║                                }
I/flutter ( 6040): ║                             ]
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                     "key": "cold_sandwiches",
I/flutter ( 6040): ║                     "name": "الساندويتش البارد",
I/flutter ( 6040): ║                     "nameI18n": {ar: الساندويتش البارد, en: Cold Sandwiches},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 30,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650036d002eb74446014",
I/flutter ( 6040): ║                             "key": "boiled_egg_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "بيض مسلوق",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيض مسلوق, en: Boiled Egg},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 60,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650136d002eb74446015",
I/flutter ( 6040): ║                             "key": "turkey_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "تركي",
I/flutter ( 6040): ║                             "nameI18n": {ar: تركي, en: Turkey},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 70,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650136d002eb74446017",
I/flutter ( 6040): ║                             "key": "classic_halloumi_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "حلوم كلاسيكي",
I/flutter ( 6040): ║                             "nameI18n": {ar: حلوم كلاسيكي, en: Classic Halloumi},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 80,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650236d002eb7444601a",
I/flutter ( 6040): ║                             "key": "tuna_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "تونا",
I/flutter ( 6040): ║                             "nameI18n": {ar: تونا, en: Tuna},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 90,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650336d002eb7444601b",
I/flutter ( 6040): ║                             "key": "scrambled_egg_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "بيض اسكرامبل",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيض اسكرامبل, en: Scrambled Egg},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 100,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650336d002eb7444601d",
I/flutter ( 6040): ║                             "key": "chicken_fajita_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "دجاج فاهيتا",
I/flutter ( 6040): ║                             "nameI18n": {ar: دجاج فاهيتا, en: Chicken Fajita},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 110,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650436d002eb7444601f",
I/flutter ( 6040): ║                             "key": "mexican_chicken_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "دجاج مكسيكي",
I/flutter ( 6040): ║                             "nameI18n": {ar: دجاج مكسيكي, en: Mexican Chicken},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 120,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650436d002eb74446020",
I/flutter ( 6040): ║                             "key": "grilled_chicken_cold_sandwich",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3b",
I/flutter ( 6040): ║                             "name": "دجاج مشوي",
I/flutter ( 6040): ║                             "nameI18n": {ar: دجاج مشوي, en: Grilled Chicken},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "cold_sandwich",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 130,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                     "key": "sourdough",
I/flutter ( 6040): ║                     "name": "الساندويشات",
I/flutter ( 6040): ║                     "nameI18n": {ar: الساندويشات, en: Sourdough Sandwiches},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 40,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650536d002eb74446021",
I/flutter ( 6040): ║                             "key": "halloumi_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو حلومي",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو حلومي, en: Halloumi Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 140,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650536d002eb74446022",
I/flutter ( 6040): ║                             "key": "turkey_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو تركي",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو تركي, en: Turkey Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 150,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650636d002eb74446023",
I/flutter ( 6040): ║                             "key": "tuna_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو تونا",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو تونا, en: Tuna Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 160,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650736d002eb74446024",
I/flutter ( 6040): ║                             "key": "grilled_chicken_sourdough",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3c",
I/flutter ( 6040): ║                             "name": "ساوردو دجاج مشوي",
I/flutter ( 6040): ║                             "nameI18n": {ar: ساوردو دجاج مشوي, en: Grilled Chicken Sourdough},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "sourdough",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 2300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 170,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                     "key": "desserts",
I/flutter ( 6040): ║                     "name": "الحلويات",
I/flutter ( 6040): ║                     "nameI18n": {ar: الحلويات, en: Desserts},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 50,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650736d002eb74446025",
I/flutter ( 6040): ║                             "key": "apple_cinnamon_muffin_2pcs",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "مافن التفاح بالقرفة (قطعتين)",
I/flutter ( 6040): ║                             "nameI18n": {ar: مافن التفاح بالقرفة (قطعتين), en: Apple Cinnamon Muffin (2 pcs)},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1200,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 180,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650836d002eb7444602a",
I/flutter ( 6040): ║                             "key": "berry_cheesecake",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "تشيز كيك بالتوت",
I/flutter ( 6040): ║                             "nameI18n": {ar: تشيز كيك بالتوت, en: Berry Cheesecake},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 190,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650836d002eb7444602b",
I/flutter ( 6040): ║                             "key": "strawberry_cheesecake",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "تشيز كيك بالفراولة",
I/flutter ( 6040): ║                             "nameI18n": {ar: تشيز كيك بالفراولة, en: Strawberry Cheesecake},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 200,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650936d002eb7444602c",
I/flutter ( 6040): ║                             "key": "dark_brownies",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "براونيز داكن",
I/flutter ( 6040): ║                             "nameI18n": {ar: براونيز داكن, en: Dark Brownies},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 210,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650936d002eb7444602d",
I/flutter ( 6040): ║                             "key": "protein_bar",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "بروتين بار",
I/flutter ( 6040): ║                             "nameI18n": {ar: بروتين بار, en: Protein Bar},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1500,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 220,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650a36d002eb7444602f",
I/flutter ( 6040): ║                             "key": "basic_classic",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "بيسك كلاسيك",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيسك كلاسيك, en: Basic Classic},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1400,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 230,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650b36d002eb74446030",
I/flutter ( 6040): ║                             "key": "protein_chocolate_cake",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3e",
I/flutter ( 6040): ║                             "name": "كيك شوكولاتة بروتين",
I/flutter ( 6040): ║                             "nameI18n": {ar: كيك شوكولاتة بروتين, en: Protein Chocolate Cake},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "dessert",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 240,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                     "key": "juices",
I/flutter ( 6040): ║                     "name": "العصائر",
I/flutter ( 6040): ║                     "nameI18n": {ar: العصائر, en: Juices},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 60,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650b36d002eb74446032",
I/flutter ( 6040): ║                             "key": "berry_blast",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "بيري بلاست",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيري بلاست, en: Berry Blast},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 250,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650c36d002eb74446033",
I/flutter ( 6040): ║                             "key": "berry_prot",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "بيري بروت",
I/flutter ( 6040): ║                             "nameI18n": {ar: بيري بروت, en: Berry Prot},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 260,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650c36d002eb74446035",
I/flutter ( 6040): ║                             "key": "classic_green",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "كلاسيك جرين",
I/flutter ( 6040): ║                             "nameI18n": {ar: كلاسيك جرين, en: Classic Green},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 270,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650d36d002eb74446037",
I/flutter ( 6040): ║                             "key": "orange_carrot",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "برتقال وجزر",
I/flutter ( 6040): ║                             "nameI18n": {ar: برتقال وجزر, en: Orange & Carrot},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 290,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650e36d002eb74446038",
I/flutter ( 6040): ║                             "key": "watermelon_mint",
I/flutter ( 6040): ║                             "categoryId": "69fb648836d002eb74445f3f",
I/flutter ( 6040): ║                             "name": "بطيخ بالنعناع",
I/flutter ( 6040): ║                             "nameI18n": {ar: بطيخ بالنعناع, en: Watermelon Mint},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "juice",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1100,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 300,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                     "key": "drinks",
I/flutter ( 6040): ║                     "name": "المشروبات",
I/flutter ( 6040): ║                     "nameI18n": {ar: المشروبات, en: Drinks},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 70,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650e36d002eb7444603a",
I/flutter ( 6040): ║                             "key": "protein_drink",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "مشروب بروتين",
I/flutter ( 6040): ║                             "nameI18n": {ar: مشروب بروتين, en: Protein Drink},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1900,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 310,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650f36d002eb7444603b",
I/flutter ( 6040): ║                             "key": "diet_iced_tea",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "ايس تى دايت",
I/flutter ( 6040): ║                             "nameI18n": {ar: ايس تى دايت, en: Diet Iced Tea},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 400,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 320,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb650f36d002eb7444603d",
I/flutter ( 6040): ║                             "key": "diet_soda",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "صودا دايت",
I/flutter ( 6040): ║                             "nameI18n": {ar: صودا دايت, en: Diet Soda},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 330,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651036d002eb7444603e",
I/flutter ( 6040): ║                             "key": "water",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f40",
I/flutter ( 6040): ║                             "name": "مياه عادية",
I/flutter ( 6040): ║                             "nameI18n": {ar: مياه عادية, en: Water},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "drink",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 200,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 340,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                },
I/flutter ( 6040): ║                {
I/flutter ( 6040): ║                     "id": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                     "key": "ice_cream",
I/flutter ( 6040): ║                     "name": "الايس كريم",
I/flutter ( 6040): ║                     "nameI18n": {ar: الايس كريم, en: Ice Cream},
I/flutter ( 6040): ║                     "description": "",
I/flutter ( 6040): ║                     "imageUrl": "",
I/flutter ( 6040): ║                     "sortOrder": 80,
I/flutter ( 6040): ║                     "products": [
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651036d002eb7444603f",
I/flutter ( 6040): ║                             "key": "vanilla_ice_cream",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                             "name": "ايس كريم فانيليا",
I/flutter ( 6040): ║                             "nameI18n": {ar: ايس كريم فانيليا, en: Vanilla Ice Cream},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "ice_cream",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 350,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651136d002eb74446041",
I/flutter ( 6040): ║                             "key": "chocolate_ice_cream",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                             "name": "ايس كريم شوكولا",
I/flutter ( 6040): ║                             "nameI18n": {ar: ايس كريم شوكولا, en: Chocolate Ice Cream},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "ice_cream",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 1300,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 360,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        },
I/flutter ( 6040): ║                        {
I/flutter ( 6040): ║                             "id": "69fb651136d002eb74446043",
I/flutter ( 6040): ║                             "key": "ice_cream_add_on",
I/flutter ( 6040): ║                             "categoryId": "69fb648936d002eb74445f41",
I/flutter ( 6040): ║                             "name": "إضافة ايس كريم",
I/flutter ( 6040): ║                             "nameI18n": {ar: إضافة ايس كريم, en: Ice Cream Add-on},
I/flutter ( 6040): ║                             "description": "",
I/flutter ( 6040): ║                             "imageUrl": "",
I/flutter ( 6040): ║                             "itemType": "ice_cream",
I/flutter ( 6040): ║                             "pricingModel": "fixed",
I/flutter ( 6040): ║                             "priceHalala": 700,
I/flutter ( 6040): ║                             "currency": "SAR",
I/flutter ( 6040): ║                             "baseUnitGrams": 100,
I/flutter ( 6040): ║                             "defaultWeightGrams": 0,
I/flutter ( 6040): ║                             "minWeightGrams": 0,
I/flutter ( 6040): ║                             "maxWeightGrams": 0,
I/flutter ( 6040): ║                             "weightStepGrams": 50,
I/flutter ( 6040): ║                             "sortOrder": 370,
I/flutter ( 6040): ║                             "requiresBuilder": false,
I/flutter ( 6040): ║                             "canAddDirectly": true,
I/flutter ( 6040): ║                             "optionGroups": []
I/flutter ( 6040): ║                        }
I/flutter ( 6040): ║                     ]
I/flutter ( 6040): ║                }
I/flutter ( 6040): ║             ],
I/flutter ( 6040): ║             "restaurantHours": {
I/flutter ( 6040): ║                 "openTime": "10:00",
I/flutter ( 6040): ║                 "closeTime": "23:00",
I/flutter ( 6040): ║                 "isOpenNow": false,
I/flutter ( 6040): ║                 "reason": "RESTAURANT_CLOSED",
I/flutter ( 6040): ║                 "message": "Restaurant is currently closed",
I/flutter ( 6040): ║                 "messageAr": "المطعم مغلق حاليا. يمكنك الطلب خلال ساعات العمل.",
I/flutter ( 6040): ║                 "messageEn": "Restaurant is currently closed. Please order during working hours."
I/flutter ( 6040): ║                 "businessDate": "2026-05-19",
I/flutter ( 6040): ║                 "businessTomorrow": "2026-05-20",
I/flutter ( 6040): ║                 "fulfillmentMethod": "pickup"
I/flutter ( 6040): ║            }
I/flutter ( 6040): ║        }
I/flutter ( 6040): ║    }
I/flutter ( 6040): ║
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): onChange -- MenuBloc, Change { currentState: MenuLoading(), nextState: MenuError(defaultError) }
E/libEGL  ( 6040): called unimplemented OpenGL ES API
I/flutter ( 6040): onChange -- MainBloc, Change { currentState: MainIndexChangedState(1), nextState: MainIndexChangedState(2) }
I/flutter ( 6040): onCreate -- FulfillmentStatusCubit
I/flutter ( 6040): onCreate -- PlansBloc
I/flutter ( 6040): onChange -- PlansBloc, Change { currentState: PlansInitial(null, null), nextState: PlansLoading(null, null) }
I/flutter ( 6040): onClose -- MenuBloc
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Request ║ GET
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/subscriptions/current/overview
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ accept: application/json
I/flutter ( 6040): ╟ content-type: application/json
I/flutter ( 6040): ╟ authorization:
I/flutter ( 6040): ║ Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiI2YTA4YTA3OWFjNjJhMWRmMWVlMWYyOD
I/flutter ( 6040): ║ giLCJyb2xlIjoiY2xpZW50IiwidG9rZW5UeXBlIjoiYXBwX2FjY2VzcyIsImlhdCI6MTc3OTE4NDIxNywiZXhwIjox
I/flutter ( 6040): ║ Nzc5MTg1MTE3fQ.k8vh5Kp-PXAHf9GqutYj1AWIrGG3YUzz3QKFvx5GnZQ
I/flutter ( 6040): ╟ Accept-Language: ar
I/flutter ( 6040): ╟ contentType: application/json
I/flutter ( 6040): ╟ responseType: ResponseType.json
I/flutter ( 6040): ╟ followRedirects: true
I/flutter ( 6040): ╟ receiveTimeout: 16:40:00.000000
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040):
I/flutter ( 6040): ╔╣ Response ║ GET ║ Status: 200 OK  ║ Time: 457 ms
I/flutter ( 6040): ║  https://basicdiet145.onrender.com/api/subscriptions/current/overview
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Headers
I/flutter ( 6040): ╟ x-dns-prefetch-control: [off]
I/flutter ( 6040): ╟ x-render-origin-server: [Render]
I/flutter ( 6040): ╟ date: [Tue, 19 May 2026 09:51:08 GMT]
I/flutter ( 6040): ╟ transfer-encoding: [chunked]
I/flutter ( 6040): ╟ origin-agent-cluster: [?1]
I/flutter ( 6040): ╟ vary: [Origin, Accept-Encoding]
I/flutter ( 6040): ╟ server: [cloudflare]
I/flutter ( 6040): ╟ cross-origin-resource-policy: [same-origin]
I/flutter ( 6040): ╟ cf-ray: [9fe2338c0909e1e9-MRS]
I/flutter ( 6040): ╟ etag: [W/"1b-BQ4wsTbGhkgrMnOKvzDkIbXIV3Q"]
I/flutter ( 6040): ╟ x-frame-options: [SAMEORIGIN]
I/flutter ( 6040): ╟ content-security-policy:
I/flutter ( 6040): ║ [default-src 'self';base-uri 'self';font-src 'self' https: data:;form-action 'self';frame-
I/flutter ( 6040): ║ ancestors 'self';img-src 'self' data:;object-src 'none';script-src 'self';script-src-attr
I/flutter ( 6040): ║ 'none';style-src 'self' https: 'unsafe-inline';upgrade-insecure-requests]
I/flutter ( 6040): ╟ connection: [keep-alive]
I/flutter ( 6040): ╟ strict-transport-security: [max-age=15552000; includeSubDomains]
I/flutter ( 6040): ╟ referrer-policy: [no-referrer]
I/flutter ( 6040): ╟ cf-cache-status: [DYNAMIC]
I/flutter ( 6040): ╟ x-permitted-cross-domain-policies: [none]
I/flutter ( 6040): ╟ cross-origin-opener-policy: [same-origin]
I/flutter ( 6040): ╟ content-type: [application/json; charset=utf-8]
I/flutter ( 6040): ╟ rndr-id: [0c64ead3-0998-4684]
I/flutter ( 6040): ╟ x-xss-protection: [0]
I/flutter ( 6040): ╟ access-control-allow-credentials: [true]
I/flutter ( 6040): ╟ alt-svc: [h3=":443"; ma=86400]
I/flutter ( 6040): ╟ x-download-options: [noopen]
I/flutter ( 6040): ╟ x-content-type-options: [nosniff]
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): ╔ Body
I/flutter ( 6040): ║
I/flutter ( 6040): ║    {
I/flutter ( 6040): ║         "status": true,
I/flutter ( 6040): ║         "data": null
I/flutter ( 6040): ║    }
I/flutter ( 6040): ║
I/flutter ( 6040): ╚══════════════════════════════════════════════════════════════════════════════════════════╝
I/flutter ( 6040): onChange -- PlansBloc, Change { currentState: PlansLoading(null, null), nextState: PlansError(defaultError, null, null) }
