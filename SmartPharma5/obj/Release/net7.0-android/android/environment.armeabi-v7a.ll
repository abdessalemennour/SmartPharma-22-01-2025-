; ModuleID = 'obj\Release\net7.0-android\android\environment.armeabi-v7a.ll'
source_filename = "obj\Release\net7.0-android\android\environment.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.ApplicationConfig = type {
	i8,; bool uses_mono_llvm
	i8,; bool uses_mono_aot
	i8,; bool aot_lazy_load
	i8,; bool uses_assembly_preload
	i8,; bool is_a_bundled_app
	i8,; bool broken_exception_transitions
	i8,; bool instant_run_enabled
	i8,; bool jni_add_native_method_registration_attribute_present
	i8,; bool have_runtime_config_blob
	i8,; bool have_assemblies_blob
	i8,; uint8_t bound_stream_io_exception_type
	i32,; uint32_t package_naming_policy
	i32,; uint32_t environment_variable_count
	i32,; uint32_t system_property_count
	i32,; uint32_t number_of_assemblies_in_apk
	i32,; uint32_t bundled_assembly_name_width
	i32,; uint32_t number_of_assembly_store_files
	i32,; uint32_t number_of_dso_cache_entries
	i32,; uint32_t android_runtime_jnienv_class_token
	i32,; uint32_t jnienv_initialize_method_token
	i32,; uint32_t jnienv_registerjninatives_method_token
	i32,; uint32_t jni_remapping_replacement_type_count
	i32,; uint32_t jni_remapping_replacement_method_index_entry_count
	i32,; uint32_t mono_components_mask
	i8*; char* android_package_name
}

%struct.AssemblyStoreAssemblyDescriptor = type {
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i32,; uint32_t debug_data_offset
	i32,; uint32_t debug_data_size
	i32,; uint32_t config_data_offset
	i32; uint32_t config_data_size
}

%struct.AssemblyStoreSingleAssemblyRuntimeData = type {
	i8*,; uint8_t* image_data
	i8*,; uint8_t* debug_info_data
	i8*,; uint8_t* config_data
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* descriptor
}

%struct.AssemblyStoreRuntimeData = type {
	i8*,; uint8_t* data_start
	i32,; uint32_t assembly_count
	%struct.AssemblyStoreAssemblyDescriptor*; AssemblyStoreAssemblyDescriptor* assemblies
}

%struct.XamarinAndroidBundledAssembly = type {
	i32,; int32_t apk_fd
	i32,; uint32_t data_offset
	i32,; uint32_t data_size
	i8*,; uint8_t* data
	i32,; uint32_t name_length
	i8*; char* name
}

%struct.DSOCacheEntry = type {
	i64,; uint64_t hash
	i8,; bool ignore
	i8*,; char* name
	i8*; void* handle
}

@format_tag = local_unnamed_addr constant i64 385281960275288, align 8
@__mono_aot_mode_name = internal constant [7 x i8] c"normal\00", align 1
@mono_aot_mode_name = local_unnamed_addr constant i8* getelementptr inbounds ([7 x i8], [7 x i8]* @__mono_aot_mode_name, i32 0, i32 0), align 4

; app_environment_variables
@__app_environment_variables_n_0.0 = internal constant [15 x i8] c"MONO_GC_PARAMS\00", align 1
@__app_environment_variables_v_0.1 = internal constant [21 x i8] c"major=marksweep-conc\00", align 1
@__app_environment_variables_n_1.2 = internal constant [17 x i8] c"XAMARIN_BUILD_ID\00", align 1
@__app_environment_variables_v_1.3 = internal constant [37 x i8] c"b19806ab-3dbe-407a-929f-af09ea88e529\00", align 1
@__app_environment_variables_n_2.4 = internal constant [28 x i8] c"XA_HTTP_CLIENT_HANDLER_TYPE\00", align 1
@__app_environment_variables_v_2.5 = internal constant [42 x i8] c"Xamarin.Android.Net.AndroidMessageHandler\00", align 1
@__app_environment_variables_n_3.6 = internal constant [29 x i8] c"__XA_PACKAGE_NAMING_POLICY__\00", align 1
@__app_environment_variables_v_3.7 = internal constant [15 x i8] c"LowercaseCrc64\00", align 1

@app_environment_variables = local_unnamed_addr constant [8 x i8*] [
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_n_0.0, i32 0, i32 0),
	i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__app_environment_variables_v_0.1, i32 0, i32 0),
	i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__app_environment_variables_n_1.2, i32 0, i32 0),
	i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__app_environment_variables_v_1.3, i32 0, i32 0),
	i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__app_environment_variables_n_2.4, i32 0, i32 0),
	i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__app_environment_variables_v_2.5, i32 0, i32 0),
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__app_environment_variables_n_3.6, i32 0, i32 0),
	i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__app_environment_variables_v_3.7, i32 0, i32 0)
], align 4

; app_system_properties
@app_system_properties = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__ApplicationConfig_android_package_name.0 = internal constant [29 x i8] c"com.companyname.SmartPharma5\00", align 1

; application_config
@application_config = local_unnamed_addr constant %struct.ApplicationConfig {
	i8 0, ; uses_mono_llvm
	i8 1, ; uses_mono_aot
	i8 1, ; aot_lazy_load
	i8 0, ; uses_assembly_preload
	i8 0, ; is_a_bundled_app
	i8 0, ; broken_exception_transitions
	i8 0, ; instant_run_enabled
	i8 0, ; jni_add_native_method_registration_attribute_present
	i8 1, ; have_runtime_config_blob
	i8 1, ; have_assemblies_blob
	i8 0, ; bound_stream_io_exception_type
	i32 3, ; package_naming_policy
	i32 8, ; environment_variable_count
	i32 0, ; system_property_count
	i32 182, ; number_of_assemblies_in_apk
	i32 0, ; bundled_assembly_name_width
	i32 2, ; number_of_assembly_store_files
	i32 1108, ; number_of_dso_cache_entries
	i32 33555480, ; android_runtime_jnienv_class_token
	i32 100675008, ; jnienv_initialize_method_token
	i32 100675007, ; jnienv_registerjninatives_method_token
	i32 0, ; jni_remapping_replacement_type_count
	i32 0, ; jni_remapping_replacement_method_index_entry_count
	i32 0, ; mono_components_mask
	i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__ApplicationConfig_android_package_name.0, i32 0, i32 0); android_package_name
}, align 4

@__DSOCacheEntry_name.1 = internal constant [44 x i8] c"libaot-System.Net.NetworkInformation.dll.so\00", align 1
@__DSOCacheEntry_name.2 = internal constant [36 x i8] c"libaot-CommunityToolkit.Maui.dll.so\00", align 1
@__DSOCacheEntry_name.3 = internal constant [40 x i8] c"libaot-System.Runtime.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.4 = internal constant [44 x i8] c"libaot-System.Collections.NonGeneric.dll.so\00", align 1
@__DSOCacheEntry_name.5 = internal constant [35 x i8] c"libaot-Syncfusion.Maui.Core.dll.so\00", align 1
@__DSOCacheEntry_name.6 = internal constant [41 x i8] c"libaot-Microsoft.Win32.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.7 = internal constant [50 x i8] c"libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so\00", align 1
@__DSOCacheEntry_name.8 = internal constant [41 x i8] c"libaot-DevExpress.Android.Editors.dll.so\00", align 1
@__DSOCacheEntry_name.9 = internal constant [38 x i8] c"libaot-System.Threading.Thread.dll.so\00", align 1
@__DSOCacheEntry_name.10 = internal constant [36 x i8] c"libaot-DevExpress.Data.v23.1.dll.so\00", align 1
@__DSOCacheEntry_name.11 = internal constant [38 x i8] c"libaot-System.Numerics.Vectors.dll.so\00", align 1
@__DSOCacheEntry_name.12 = internal constant [29 x i8] c"libaot-Mapsui.UI.Maui.dll.so\00", align 1
@__DSOCacheEntry_name.13 = internal constant [36 x i8] c"libaot-Xamarin.AndroidX.Core.dll.so\00", align 1
@__DSOCacheEntry_name.14 = internal constant [46 x i8] c"libaot-SQLitePCLRaw.provider.e_sqlite3.dll.so\00", align 1
@__DSOCacheEntry_name.15 = internal constant [45 x i8] c"libaot-System.Diagnostics.TraceSource.dll.so\00", align 1
@__DSOCacheEntry_name.16 = internal constant [40 x i8] c"libaot-System.Threading.Channels.dll.so\00", align 1
@__DSOCacheEntry_name.17 = internal constant [47 x i8] c"libaot-Plugin.Connectivity.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.18 = internal constant [30 x i8] c"libaot-Acr.UserDialogs.dll.so\00", align 1
@__DSOCacheEntry_name.19 = internal constant [26 x i8] c"libaot-netstandard.dll.so\00", align 1
@__DSOCacheEntry_name.20 = internal constant [47 x i8] c"libaot-System.Resources.ResourceManager.dll.so\00", align 1
@__DSOCacheEntry_name.21 = internal constant [53 x i8] c"libaot-System.Runtime.CompilerServices.Unsafe.dll.so\00", align 1
@__DSOCacheEntry_name.22 = internal constant [44 x i8] c"libaot-DevExpress.Android.Navigation.dll.so\00", align 1
@__DSOCacheEntry_name.23 = internal constant [43 x i8] c"libaot-Microsoft.Extensions.Logging.dll.so\00", align 1
@__DSOCacheEntry_name.24 = internal constant [45 x i8] c"libaot-System.Runtime.InteropServices.dll.so\00", align 1
@__DSOCacheEntry_name.25 = internal constant [50 x i8] c"libaot-SQLitePCLRaw.provider.dynamic_cdecl.dll.so\00", align 1
@__DSOCacheEntry_name.26 = internal constant [36 x i8] c"libaot-Mapsui.Rendering.Skia.dll.so\00", align 1
@__DSOCacheEntry_name.27 = internal constant [55 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so\00", align 1
@__DSOCacheEntry_name.28 = internal constant [23 x i8] c"libaot-mscorlib.dll.so\00", align 1
@__DSOCacheEntry_name.29 = internal constant [45 x i8] c"libaot-System.Net.WebHeaderCollection.dll.so\00", align 1
@__DSOCacheEntry_name.30 = internal constant [54 x i8] c"libaot-System.Runtime.Serialization.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.31 = internal constant [50 x i8] c"libSystem.Security.Cryptography.Native.Android.so\00", align 1
@__DSOCacheEntry_name.32 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so\00", align 1
@__DSOCacheEntry_name.33 = internal constant [26 x i8] c"libaot-System.Core.dll.so\00", align 1
@__DSOCacheEntry_name.34 = internal constant [48 x i8] c"libaot-System.ComponentModel.Annotations.dll.so\00", align 1
@__DSOCacheEntry_name.35 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.Activity.dll.so\00", align 1
@__DSOCacheEntry_name.36 = internal constant [34 x i8] c"libaot-System.Net.WebProxy.dll.so\00", align 1
@__DSOCacheEntry_name.37 = internal constant [37 x i8] c"libaot-DevExpress.Maui.Charts.dll.so\00", align 1
@__DSOCacheEntry_name.38 = internal constant [48 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so\00", align 1
@__DSOCacheEntry_name.39 = internal constant [35 x i8] c"libaot-Syncfusion.Licensing.dll.so\00", align 1
@__DSOCacheEntry_name.40 = internal constant [23 x i8] c"libaot-Svg.Skia.dll.so\00", align 1
@__DSOCacheEntry_name.41 = internal constant [39 x i8] c"libaot-System.Xml.XmlSerializer.dll.so\00", align 1
@__DSOCacheEntry_name.42 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.CustomView.dll.so\00", align 1
@__DSOCacheEntry_name.43 = internal constant [31 x i8] c"libaot-Microsoft.CSharp.dll.so\00", align 1
@__DSOCacheEntry_name.44 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.SavedState.dll.so\00", align 1
@__DSOCacheEntry_name.45 = internal constant [36 x i8] c"libaot-System.ComponentModel.dll.so\00", align 1
@__DSOCacheEntry_name.46 = internal constant [34 x i8] c"libaot-System.Net.Requests.dll.so\00", align 1
@__DSOCacheEntry_name.47 = internal constant [21 x i8] c"libaot-Mapsui.dll.so\00", align 1
@__DSOCacheEntry_name.48 = internal constant [39 x i8] c"libaot-DevExpress.Maui.Controls.dll.so\00", align 1
@__DSOCacheEntry_name.49 = internal constant [34 x i8] c"libaot-Plugin.Connectivity.dll.so\00", align 1
@__DSOCacheEntry_name.50 = internal constant [16 x i8] c"libmonodroid.so\00", align 1
@__DSOCacheEntry_name.51 = internal constant [44 x i8] c"libaot-System.Collections.Concurrent.dll.so\00", align 1
@__DSOCacheEntry_name.52 = internal constant [36 x i8] c"libaot-Xamarin.Kotlin.StdLib.dll.so\00", align 1
@__DSOCacheEntry_name.53 = internal constant [45 x i8] c"libaot-System.Text.RegularExpressions.dll.so\00", align 1
@__DSOCacheEntry_name.54 = internal constant [55 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.dll.so\00", align 1
@__DSOCacheEntry_name.55 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so\00", align 1
@__DSOCacheEntry_name.56 = internal constant [46 x i8] c"libaot-NetTopologySuite.IO.GeoJSON4STJ.dll.so\00", align 1
@__DSOCacheEntry_name.57 = internal constant [39 x i8] c"libaot-Xamarin.AndroidX.Browser.dll.so\00", align 1
@__DSOCacheEntry_name.58 = internal constant [33 x i8] c"libaot-Topten.RichTextKit.dll.so\00", align 1
@__DSOCacheEntry_name.59 = internal constant [24 x i8] c"libaot-Svg.Model.dll.so\00", align 1
@__DSOCacheEntry_name.60 = internal constant [38 x i8] c"libaot-System.Xml.ReaderWriter.dll.so\00", align 1
@__DSOCacheEntry_name.61 = internal constant [54 x i8] c"libaot-System.Runtime.Serialization.Formatters.dll.so\00", align 1
@__DSOCacheEntry_name.62 = internal constant [31 x i8] c"libaot-System.Text.Json.dll.so\00", align 1
@__DSOCacheEntry_name.63 = internal constant [27 x i8] c"libaot-Mono.Android.dll.so\00", align 1
@__DSOCacheEntry_name.64 = internal constant [46 x i8] c"libaot-System.Text.Encoding.Extensions.dll.so\00", align 1
@__DSOCacheEntry_name.65 = internal constant [44 x i8] c"libaot-SkiaSharp.Views.Maui.Controls.dll.so\00", align 1
@__DSOCacheEntry_name.66 = internal constant [38 x i8] c"libaot-DevExpress.Android.Core.dll.so\00", align 1
@__DSOCacheEntry_name.67 = internal constant [37 x i8] c"libaot-System.Web.HttpUtility.dll.so\00", align 1
@__DSOCacheEntry_name.68 = internal constant [47 x i8] c"libaot-System.ComponentModel.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.69 = internal constant [38 x i8] c"libaot-DevExpress.Maui.Editors.dll.so\00", align 1
@__DSOCacheEntry_name.70 = internal constant [45 x i8] c"libaot-Xamarin.AndroidX.Navigation.UI.dll.so\00", align 1
@__DSOCacheEntry_name.71 = internal constant [56 x i8] c"libaot-Microsoft.Extensions.Logging.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.72 = internal constant [41 x i8] c"libaot-Xamarin.AndroidX.AppCompat.dll.so\00", align 1
@__DSOCacheEntry_name.73 = internal constant [40 x i8] c"libaot-System.Transactions.Local.dll.so\00", align 1
@__DSOCacheEntry_name.74 = internal constant [33 x i8] c"libaot-System.Collections.dll.so\00", align 1
@__DSOCacheEntry_name.75 = internal constant [68 x i8] c"libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.76 = internal constant [30 x i8] c"libaot-System.IO.Pipes.dll.so\00", align 1
@__DSOCacheEntry_name.77 = internal constant [28 x i8] c"libaot-System.Memory.dll.so\00", align 1
@__DSOCacheEntry_name.78 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.ViewPager2.dll.so\00", align 1
@__DSOCacheEntry_name.79 = internal constant [38 x i8] c"libaot-Microsoft.Maui.Controls.dll.so\00", align 1
@__DSOCacheEntry_name.80 = internal constant [25 x i8] c"libaot-Mapsui.Nts.dll.so\00", align 1
@__DSOCacheEntry_name.81 = internal constant [35 x i8] c"libaot-DevExpress.Maui.Core.dll.so\00", align 1
@__DSOCacheEntry_name.82 = internal constant [40 x i8] c"libaot-System.Net.NameResolution.dll.so\00", align 1
@__DSOCacheEntry_name.83 = internal constant [20 x i8] c"libaot-ExCSS.dll.so\00", align 1
@__DSOCacheEntry_name.84 = internal constant [21 x i8] c"libDXChartsNative.so\00", align 1
@__DSOCacheEntry_name.85 = internal constant [43 x i8] c"libaot-DevExpress.Android.Scheduler.dll.so\00", align 1
@__DSOCacheEntry_name.86 = internal constant [36 x i8] c"libaot-System.Drawing.Common.dll.so\00", align 1
@__DSOCacheEntry_name.87 = internal constant [40 x i8] c"libaot-DevExpress.Android.Charts.dll.so\00", align 1
@__DSOCacheEntry_name.88 = internal constant [36 x i8] c"libaot-System.IO.Compression.dll.so\00", align 1
@__DSOCacheEntry_name.89 = internal constant [60 x i8] c"libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so\00", align 1
@__DSOCacheEntry_name.90 = internal constant [28 x i8] c"libaot-ShimSkiaSharp.dll.so\00", align 1
@__DSOCacheEntry_name.91 = internal constant [38 x i8] c"libaot-Xamarin.AndroidX.Loader.dll.so\00", align 1
@__DSOCacheEntry_name.92 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.Fragment.dll.so\00", align 1
@__DSOCacheEntry_name.93 = internal constant [28 x i8] c"libaot-Mapsui.Tiling.dll.so\00", align 1
@__DSOCacheEntry_name.94 = internal constant [38 x i8] c"libaot-SkiaSharp.Views.Android.dll.so\00", align 1
@__DSOCacheEntry_name.95 = internal constant [40 x i8] c"libaot-NetTopologySuite.Features.dll.so\00", align 1
@__DSOCacheEntry_name.96 = internal constant [33 x i8] c"libaot-System.ObjectModel.dll.so\00", align 1
@__DSOCacheEntry_name.97 = internal constant [20 x i8] c"libSystem.Native.so\00", align 1
@__DSOCacheEntry_name.98 = internal constant [32 x i8] c"libaot-SQLitePCLRaw.core.dll.so\00", align 1
@__DSOCacheEntry_name.99 = internal constant [52 x i8] c"libaot-Microsoft.Maui.Controls.Compatibility.dll.so\00", align 1
@__DSOCacheEntry_name.100 = internal constant [41 x i8] c"libaot-CommunityToolkit.Maui.Core.dll.so\00", align 1
@__DSOCacheEntry_name.101 = internal constant [41 x i8] c"libaot-System.Diagnostics.Process.dll.so\00", align 1
@__DSOCacheEntry_name.102 = internal constant [40 x i8] c"libaot-DevExpress.Maui.Scheduler.dll.so\00", align 1
@__DSOCacheEntry_name.103 = internal constant [38 x i8] c"libaot-System.Runtime.Numerics.dll.so\00", align 1
@__DSOCacheEntry_name.104 = internal constant [40 x i8] c"libaot-SQLitePCLRaw.batteries_v2.dll.so\00", align 1
@__DSOCacheEntry_name.105 = internal constant [29 x i8] c"libaot-System.Buffers.dll.so\00", align 1
@__DSOCacheEntry_name.106 = internal constant [61 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so\00", align 1
@__DSOCacheEntry_name.107 = internal constant [40 x i8] c"libaot-System.Text.Encodings.Web.dll.so\00", align 1
@__DSOCacheEntry_name.108 = internal constant [35 x i8] c"libaot-System.IO.FileSystem.dll.so\00", align 1
@__DSOCacheEntry_name.109 = internal constant [37 x i8] c"libaot-Syncfusion.Maui.Gauges.dll.so\00", align 1
@__DSOCacheEntry_name.110 = internal constant [42 x i8] c"libaot-Xamarin.AndroidX.Collection.dll.so\00", align 1
@__DSOCacheEntry_name.111 = internal constant [40 x i8] c"libaot-System.Drawing.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.112 = internal constant [29 x i8] c"libaot-Microsoft.Maui.dll.so\00", align 1
@__DSOCacheEntry_name.113 = internal constant [40 x i8] c"libaot-Xamarin.AndroidX.CardView.dll.so\00", align 1
@__DSOCacheEntry_name.114 = internal constant [29 x i8] c"libaot-MySqlConnector.dll.so\00", align 1
@__DSOCacheEntry_name.115 = internal constant [45 x i8] c"libaot-System.Collections.Specialized.dll.so\00", align 1
@__DSOCacheEntry_name.116 = internal constant [46 x i8] c"libaot-Xamarin.Google.Android.Material.dll.so\00", align 1
@__DSOCacheEntry_name.117 = internal constant [30 x i8] c"libaot-System.Net.Mail.dll.so\00", align 1
@__DSOCacheEntry_name.118 = internal constant [34 x i8] c"libaot-System.Net.Security.dll.so\00", align 1
@__DSOCacheEntry_name.119 = internal constant [27 x i8] c"libaot-SmartPharma5.dll.so\00", align 1
@__DSOCacheEntry_name.120 = internal constant [25 x i8] c"libaot-Svg.Custom.dll.so\00", align 1
@__DSOCacheEntry_name.121 = internal constant [33 x i8] c"libaot-System.Net.Sockets.dll.so\00", align 1
@__DSOCacheEntry_name.122 = internal constant [40 x i8] c"libaot-SkiaSharp.Views.Maui.Core.dll.so\00", align 1
@__DSOCacheEntry_name.123 = internal constant [48 x i8] c"libaot-DevExpress.Android.CollectionView.dll.so\00", align 1
@__DSOCacheEntry_name.124 = internal constant [43 x i8] c"libaot-Microsoft.Maui.Controls.Xaml.dll.so\00", align 1
@__DSOCacheEntry_name.125 = internal constant [33 x i8] c"libaot-System.Data.Common.dll.so\00", align 1
@__DSOCacheEntry_name.126 = internal constant [45 x i8] c"libaot-DevExpress.Maui.CollectionView.dll.so\00", align 1
@__DSOCacheEntry_name.127 = internal constant [16 x i8] c"libSkiaSharp.so\00", align 1
@__DSOCacheEntry_name.128 = internal constant [43 x i8] c"libaot-Microsoft.Extensions.Options.dll.so\00", align 1
@__DSOCacheEntry_name.129 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.DrawerLayout.dll.so\00", align 1
@__DSOCacheEntry_name.130 = internal constant [38 x i8] c"libaot-System.Private.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.131 = internal constant [22 x i8] c"libaot-BruTile.dll.so\00", align 1
@__DSOCacheEntry_name.132 = internal constant [38 x i8] c"libaot-Microsoft.Maui.Graphics.dll.so\00", align 1
@__DSOCacheEntry_name.133 = internal constant [26 x i8] c"libaot-MvvmHelpers.dll.so\00", align 1
@__DSOCacheEntry_name.134 = internal constant [43 x i8] c"libaot-System.IO.Compression.Brotli.dll.so\00", align 1
@__DSOCacheEntry_name.135 = internal constant [38 x i8] c"libaot-System.Linq.Expressions.dll.so\00", align 1
@__DSOCacheEntry_name.136 = internal constant [46 x i8] c"libaot-System.Threading.Tasks.Parallel.dll.so\00", align 1
@__DSOCacheEntry_name.137 = internal constant [36 x i8] c"libaot-System.Net.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.138 = internal constant [43 x i8] c"libaot-System.Collections.Immutable.dll.so\00", align 1
@__DSOCacheEntry_name.139 = internal constant [33 x i8] c"libaot-SkiaSharp.HarfBuzz.dll.so\00", align 1
@__DSOCacheEntry_name.140 = internal constant [46 x i8] c"libaot-Microsoft.Extensions.Primitives.dll.so\00", align 1
@__DSOCacheEntry_name.141 = internal constant [43 x i8] c"libaot-System.Security.Cryptography.dll.so\00", align 1
@__DSOCacheEntry_name.142 = internal constant [26 x i8] c"libaot-System.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.143 = internal constant [29 x i8] c"libaot-System.Drawing.dll.so\00", align 1
@__DSOCacheEntry_name.144 = internal constant [41 x i8] c"libaot-SQLitePCLRaw.nativelibrary.dll.so\00", align 1
@__DSOCacheEntry_name.145 = internal constant [21 x i8] c"libaot-System.dll.so\00", align 1
@__DSOCacheEntry_name.146 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so\00", align 1
@__DSOCacheEntry_name.147 = internal constant [35 x i8] c"libaot-System.Xml.XDocument.dll.so\00", align 1
@__DSOCacheEntry_name.148 = internal constant [50 x i8] c"libaot-System.ComponentModel.TypeConverter.dll.so\00", align 1
@__DSOCacheEntry_name.149 = internal constant [39 x i8] c"libaot-DevExpress.Maui.DataGrid.dll.so\00", align 1
@__DSOCacheEntry_name.150 = internal constant [50 x i8] c"libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so\00", align 1
@__DSOCacheEntry_name.151 = internal constant [30 x i8] c"libaot-System.Net.Http.dll.so\00", align 1
@__DSOCacheEntry_name.152 = internal constant [40 x i8] c"libaot-Microsoft.Maui.Essentials.dll.so\00", align 1
@__DSOCacheEntry_name.153 = internal constant [45 x i8] c"libaot-Xamarin.AndroidX.CursorAdapter.dll.so\00", align 1
@__DSOCacheEntry_name.154 = internal constant [34 x i8] c"libaot-System.Formats.Asn1.dll.so\00", align 1
@__DSOCacheEntry_name.155 = internal constant [49 x i8] c"libaot-Xamarin.AndroidX.Navigation.Common.dll.so\00", align 1
@__DSOCacheEntry_name.156 = internal constant [38 x i8] c"libaot-DevExpress.Android.Grid.dll.so\00", align 1
@__DSOCacheEntry_name.157 = internal constant [50 x i8] c"libaot-System.Diagnostics.DiagnosticSource.dll.so\00", align 1
@__DSOCacheEntry_name.158 = internal constant [38 x i8] c"libaot-Xamarin.AndroidX.Window.dll.so\00", align 1
@__DSOCacheEntry_name.159 = internal constant [21 x i8] c"libaot-AndHUD.dll.so\00", align 1
@__DSOCacheEntry_name.160 = internal constant [45 x i8] c"libaot-System.Text.Encoding.CodePages.dll.so\00", align 1
@__DSOCacheEntry_name.161 = internal constant [64 x i8] c"libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so\00", align 1
@__DSOCacheEntry_name.162 = internal constant [51 x i8] c"libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so\00", align 1
@__DSOCacheEntry_name.163 = internal constant [37 x i8] c"libaot-System.Private.CoreLib.dll.so\00", align 1
@__DSOCacheEntry_name.164 = internal constant [31 x i8] c"libaot-System.Threading.dll.so\00", align 1
@__DSOCacheEntry_name.165 = internal constant [44 x i8] c"libaot-Xamarin.AndroidX.RecyclerView.dll.so\00", align 1
@__DSOCacheEntry_name.166 = internal constant [37 x i8] c"libaot-System.Threading.Tasks.dll.so\00", align 1
@__DSOCacheEntry_name.167 = internal constant [31 x i8] c"libaot-NetTopologySuite.dll.so\00", align 1
@__DSOCacheEntry_name.168 = internal constant [20 x i8] c"libHarfBuzzSharp.so\00", align 1
@__DSOCacheEntry_name.169 = internal constant [29 x i8] c"libaot-System.Runtime.dll.so\00", align 1
@__DSOCacheEntry_name.170 = internal constant [30 x i8] c"libaot-System.Xml.Linq.dll.so\00", align 1
@__DSOCacheEntry_name.171 = internal constant [38 x i8] c"libaot-System.Net.ServicePoint.dll.so\00", align 1
@__DSOCacheEntry_name.172 = internal constant [58 x i8] c"libaot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so\00", align 1
@__DSOCacheEntry_name.173 = internal constant [24 x i8] c"libDXSchedulerNative.so\00", align 1
@__DSOCacheEntry_name.174 = internal constant [33 x i8] c"libaot-System.Private.Xml.dll.so\00", align 1
@__DSOCacheEntry_name.175 = internal constant [16 x i8] c"libe_sqlite3.so\00", align 1
@__DSOCacheEntry_name.176 = internal constant [31 x i8] c"libaot-System.Xml.XPath.dll.so\00", align 1
@__DSOCacheEntry_name.177 = internal constant [49 x i8] c"libaot-SQLitePCLRaw.lib.e_sqlite3.android.dll.so\00", align 1
@__DSOCacheEntry_name.178 = internal constant [41 x i8] c"libaot-Xamarin.AndroidX.ViewPager.dll.so\00", align 1
@__DSOCacheEntry_name.179 = internal constant [62 x i8] c"libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so\00", align 1
@__DSOCacheEntry_name.180 = internal constant [49 x i8] c"libaot-Microsoft.Extensions.Configuration.dll.so\00", align 1
@__DSOCacheEntry_name.181 = internal constant [25 x i8] c"libaot-SQLite-net.dll.so\00", align 1
@__DSOCacheEntry_name.182 = internal constant [29 x i8] c"libaot-System.Console.dll.so\00", align 1
@__DSOCacheEntry_name.183 = internal constant [33 x i8] c"libaot-System.Private.Uri.dll.so\00", align 1
@__DSOCacheEntry_name.184 = internal constant [35 x i8] c"libSystem.IO.Compression.Native.so\00", align 1
@__DSOCacheEntry_name.185 = internal constant [27 x i8] c"libaot-Java.Interop.dll.so\00", align 1
@__DSOCacheEntry_name.186 = internal constant [24 x i8] c"libaot-SkiaSharp.dll.so\00", align 1
@__DSOCacheEntry_name.187 = internal constant [19 x i8] c"libmonosgen-2.0.so\00", align 1
@__DSOCacheEntry_name.188 = internal constant [28 x i8] c"libaot-HarfBuzzSharp.dll.so\00", align 1

; dso_cache
@dso_cache = local_unnamed_addr global [1108 x %struct.DSOCacheEntry] [
	; 0
	%struct.DSOCacheEntry {
		i64 8289632, ; hash 0x7e7d60, from name: aot-System.Net.NetworkInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1
	%struct.DSOCacheEntry {
		i64 9857046, ; hash 0x966816, from name: libaot-CommunityToolkit.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 2
	%struct.DSOCacheEntry {
		i64 17081729, ; hash 0x104a581, from name: System.Runtime.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 3
	%struct.DSOCacheEntry {
		i64 20489825, ; hash 0x138a661, from name: aot-System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 4
	%struct.DSOCacheEntry {
		i64 24479448, ; hash 0x17586d8, from name: libaot-Syncfusion.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 5
	%struct.DSOCacheEntry {
		i64 31265257, ; hash 0x1dd11e9, from name: libaot-Microsoft.Win32.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 6
	%struct.DSOCacheEntry {
		i64 36746888, ; hash 0x230b688, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 7
	%struct.DSOCacheEntry {
		i64 37142868, ; hash 0x236c154, from name: DevExpress.Android.Editors
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 8
	%struct.DSOCacheEntry {
		i64 42639949, ; hash 0x28aa24d, from name: System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 9
	%struct.DSOCacheEntry {
		i64 56501124, ; hash 0x35e2384, from name: DevExpress.Data.v23.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 10
	%struct.DSOCacheEntry {
		i64 56604468, ; hash 0x35fb734, from name: libaot-System.Numerics.Vectors
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 11
	%struct.DSOCacheEntry {
		i64 57320598, ; hash 0x36aa496, from name: libaot-Mapsui.UI.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 12
	%struct.DSOCacheEntry {
		i64 62384850, ; hash 0x3b7ead2, from name: libaot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 13
	%struct.DSOCacheEntry {
		i64 65135507, ; hash 0x3e1e393, from name: aot-SQLitePCLRaw.provider.e_sqlite3.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 14
	%struct.DSOCacheEntry {
		i64 68258583, ; hash 0x4118b17, from name: libaot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 15
	%struct.DSOCacheEntry {
		i64 75018296, ; hash 0x478b038, from name: libaot-System.Threading.Channels
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 16
	%struct.DSOCacheEntry {
		i64 76932014, ; hash 0x495e3ae, from name: libaot-Plugin.Connectivity.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 17
	%struct.DSOCacheEntry {
		i64 88799905, ; hash 0x54afaa1, from name: Acr.UserDialogs
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 18
	%struct.DSOCacheEntry {
		i64 94620481, ; hash 0x5a3cb41, from name: aot-netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 19
	%struct.DSOCacheEntry {
		i64 99048114, ; hash 0x5e75ab2, from name: aot-System.Resources.ResourceManager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 20
	%struct.DSOCacheEntry {
		i64 103263224, ; hash 0x627abf8, from name: libaot-System.Net.NetworkInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 21
	%struct.DSOCacheEntry {
		i64 112931486, ; hash 0x6bb329e, from name: System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 22
	%struct.DSOCacheEntry {
		i64 114611646, ; hash 0x6d4d5be, from name: aot-DevExpress.Android.Navigation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 23
	%struct.DSOCacheEntry {
		i64 116541649, ; hash 0x6f248d1, from name: aot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 24
	%struct.DSOCacheEntry {
		i64 117431740, ; hash 0x6ffddbc, from name: System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 25
	%struct.DSOCacheEntry {
		i64 126548077, ; hash 0x78af86d, from name: libaot-SQLitePCLRaw.provider.dynamic_cdecl.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 26
	%struct.DSOCacheEntry {
		i64 132042613, ; hash 0x7decf75, from name: aot-Mapsui.Rendering.Skia.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 27
	%struct.DSOCacheEntry {
		i64 132747680, ; hash 0x7e991a0, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 28
	%struct.DSOCacheEntry {
		i64 135821890, ; hash 0x8187a42, from name: aot-mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 29
	%struct.DSOCacheEntry {
		i64 142721839, ; hash 0x881c32f, from name: System.Net.WebHeaderCollection
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 30
	%struct.DSOCacheEntry {
		i64 152360278, ; hash 0x914d556, from name: libaot-System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 31
	%struct.DSOCacheEntry {
		i64 153552311, ; hash 0x92705b7, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 32
	%struct.DSOCacheEntry {
		i64 154543565, ; hash 0x93625cd, from name: libSystem.Security.Cryptography.Native.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 33
	%struct.DSOCacheEntry {
		i64 155166714, ; hash 0x93fa7fa, from name: aot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 34
	%struct.DSOCacheEntry {
		i64 155189489, ; hash 0x94000f1, from name: aot-System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 35
	%struct.DSOCacheEntry {
		i64 159306688, ; hash 0x97ed3c0, from name: System.ComponentModel.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 36
	%struct.DSOCacheEntry {
		i64 160724438, ; hash 0x99475d6, from name: libaot-Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 37
	%struct.DSOCacheEntry {
		i64 161874101, ; hash 0x9a600b5, from name: aot-System.Net.WebProxy
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 38
	%struct.DSOCacheEntry {
		i64 164710009, ; hash 0x9d14679, from name: aot-DevExpress.Maui.Charts
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 39
	%struct.DSOCacheEntry {
		i64 165120050, ; hash 0x9d78832, from name: libaot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 40
	%struct.DSOCacheEntry {
		i64 175279687, ; hash 0xa728e47, from name: libaot-Syncfusion.Licensing
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 41
	%struct.DSOCacheEntry {
		i64 176815410, ; hash 0xa89fd32, from name: Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 42
	%struct.DSOCacheEntry {
		i64 176852606, ; hash 0xa8a8e7e, from name: Svg.Skia.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 43
	%struct.DSOCacheEntry {
		i64 194426056, ; hash 0xb96b4c8, from name: aot-System.Xml.XmlSerializer.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 44
	%struct.DSOCacheEntry {
		i64 195166226, ; hash 0xba20012, from name: libaot-Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 45
	%struct.DSOCacheEntry {
		i64 197501317, ; hash 0xbc5a185, from name: libaot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 46
	%struct.DSOCacheEntry {
		i64 200694997, ; hash 0xbf65cd5, from name: libaot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 47
	%struct.DSOCacheEntry {
		i64 205061960, ; hash 0xc38ff48, from name: System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 48
	%struct.DSOCacheEntry {
		i64 206071461, ; hash 0xc4866a5, from name: aot-System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 49
	%struct.DSOCacheEntry {
		i64 206906690, ; hash 0xc552542, from name: aot-Mapsui
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 50
	%struct.DSOCacheEntry {
		i64 212673184, ; hash 0xcad22a0, from name: DevExpress.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 51
	%struct.DSOCacheEntry {
		i64 220989545, ; hash 0xd2c0869, from name: Plugin.Connectivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 52
	%struct.DSOCacheEntry {
		i64 229294244, ; hash 0xdaac0a4, from name: monodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 53
	%struct.DSOCacheEntry {
		i64 231913179, ; hash 0xdd2b6db, from name: libaot-System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 54
	%struct.DSOCacheEntry {
		i64 234893954, ; hash 0xe003282, from name: libaot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 55
	%struct.DSOCacheEntry {
		i64 245549983, ; hash 0xea2cb9f, from name: aot-Syncfusion.Licensing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 56
	%struct.DSOCacheEntry {
		i64 246921316, ; hash 0xeb7b864, from name: libaot-System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 57
	%struct.DSOCacheEntry {
		i64 254718238, ; hash 0xf2eb11e, from name: libaot-Microsoft.Extensions.DependencyInjection
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 58
	%struct.DSOCacheEntry {
		i64 257906758, ; hash 0xf5f5846, from name: libaot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 59
	%struct.DSOCacheEntry {
		i64 258230989, ; hash 0xf644acd, from name: Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 60
	%struct.DSOCacheEntry {
		i64 261999143, ; hash 0xf9dca27, from name: libaot-NetTopologySuite.IO.GeoJSON4STJ.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 61
	%struct.DSOCacheEntry {
		i64 263077002, ; hash 0xfae3c8a, from name: libaot-Xamarin.AndroidX.Browser.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 62
	%struct.DSOCacheEntry {
		i64 263553493, ; hash 0xfb581d5, from name: libaot-Topten.RichTextKit
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 63
	%struct.DSOCacheEntry {
		i64 265244031, ; hash 0xfcf4d7f, from name: aot-Svg.Model
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 64
	%struct.DSOCacheEntry {
		i64 270150149, ; hash 0x101a2a05, from name: System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 65
	%struct.DSOCacheEntry {
		i64 274845747, ; hash 0x1061d033, from name: System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 66
	%struct.DSOCacheEntry {
		i64 278844578, ; hash 0x109ed4a2, from name: aot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 67
	%struct.DSOCacheEntry {
		i64 282800165, ; hash 0x10db3025, from name: System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 68
	%struct.DSOCacheEntry {
		i64 291348661, ; hash 0x115da0b5, from name: aot-System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 69
	%struct.DSOCacheEntry {
		i64 292529153, ; hash 0x116fa401, from name: libaot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 70
	%struct.DSOCacheEntry {
		i64 292822316, ; hash 0x11741d2c, from name: Mapsui.UI.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 71
	%struct.DSOCacheEntry {
		i64 300158802, ; hash 0x11e40f52, from name: aot-System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 72
	%struct.DSOCacheEntry {
		i64 310239907, ; hash 0x127de2a3, from name: SkiaSharp.Views.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 73
	%struct.DSOCacheEntry {
		i64 313088778, ; hash 0x12a95b0a, from name: libaot-DevExpress.Android.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 74
	%struct.DSOCacheEntry {
		i64 315333590, ; hash 0x12cb9bd6, from name: aot-System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 75
	%struct.DSOCacheEntry {
		i64 319734269, ; hash 0x130ec1fd, from name: libaot-System.Web.HttpUtility
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 76
	%struct.DSOCacheEntry {
		i64 320042402, ; hash 0x131375a2, from name: aot-System.Runtime.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 77
	%struct.DSOCacheEntry {
		i64 321003452, ; hash 0x13221fbc, from name: libaot-System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 78
	%struct.DSOCacheEntry {
		i64 334172448, ; hash 0x13eb1120, from name: aot-System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 79
	%struct.DSOCacheEntry {
		i64 336975873, ; hash 0x1415d801, from name: DevExpress.Maui.Editors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 80
	%struct.DSOCacheEntry {
		i64 337425530, ; hash 0x141cb47a, from name: libaot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 81
	%struct.DSOCacheEntry {
		i64 341082126, ; hash 0x1454800e, from name: libaot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 82
	%struct.DSOCacheEntry {
		i64 342366114, ; hash 0x146817a2, from name: Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 83
	%struct.DSOCacheEntry {
		i64 349605155, ; hash 0x14d68d23, from name: Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 84
	%struct.DSOCacheEntry {
		i64 358961578, ; hash 0x156551aa, from name: System.Transactions.Local.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 85
	%struct.DSOCacheEntry {
		i64 359463689, ; hash 0x156cfb09, from name: libaot-System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 86
	%struct.DSOCacheEntry {
		i64 367117185, ; hash 0x15e1c381, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 87
	%struct.DSOCacheEntry {
		i64 367780167, ; hash 0x15ebe147, from name: System.IO.Pipes
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 88
	%struct.DSOCacheEntry {
		i64 369872811, ; hash 0x160bcfab, from name: System.Memory.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 89
	%struct.DSOCacheEntry {
		i64 373418536, ; hash 0x1641ea28, from name: libaot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 90
	%struct.DSOCacheEntry {
		i64 374914964, ; hash 0x1658bf94, from name: System.Transactions.Local
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 91
	%struct.DSOCacheEntry {
		i64 390538561, ; hash 0x17472541, from name: aot-Microsoft.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 92
	%struct.DSOCacheEntry {
		i64 397157729, ; hash 0x17ac2561, from name: Mapsui.Nts.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 93
	%struct.DSOCacheEntry {
		i64 400507790, ; hash 0x17df438e, from name: aot-System.Threading.Channels
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 94
	%struct.DSOCacheEntry {
		i64 403323550, ; hash 0x180a3a9e, from name: aot-DevExpress.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 95
	%struct.DSOCacheEntry {
		i64 407227773, ; hash 0x1845cd7d, from name: System.Net.NameResolution.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 96
	%struct.DSOCacheEntry {
		i64 411091812, ; hash 0x1880c364, from name: aot-ExCSS
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 97
	%struct.DSOCacheEntry {
		i64 416086010, ; hash 0x18ccf7fa, from name: aot-System.IO.Pipes.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 98
	%struct.DSOCacheEntry {
		i64 426289886, ; hash 0x1968aade, from name: aot-System.Net.WebHeaderCollection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 99
	%struct.DSOCacheEntry {
		i64 426763054, ; hash 0x196fe32e, from name: aot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 100
	%struct.DSOCacheEntry {
		i64 427730662, ; hash 0x197ea6e6, from name: libDXChartsNative.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 101
	%struct.DSOCacheEntry {
		i64 438771203, ; hash 0x1a271e03, from name: libaot-DevExpress.Android.Scheduler
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 102
	%struct.DSOCacheEntry {
		i64 440852758, ; hash 0x1a46e116, from name: libaot-System.Drawing.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 103
	%struct.DSOCacheEntry {
		i64 442565967, ; hash 0x1a61054f, from name: System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 104
	%struct.DSOCacheEntry {
		i64 448796500, ; hash 0x1ac01754, from name: libaot-DevExpress.Android.Charts
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 105
	%struct.DSOCacheEntry {
		i64 451696200, ; hash 0x1aec5648, from name: libaot-System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 106
	%struct.DSOCacheEntry {
		i64 459786305, ; hash 0x1b67c841, from name: Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 107
	%struct.DSOCacheEntry {
		i64 463154707, ; hash 0x1b9b2e13, from name: aot-System.Memory.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 108
	%struct.DSOCacheEntry {
		i64 465658307, ; hash 0x1bc161c3, from name: ExCSS
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 109
	%struct.DSOCacheEntry {
		i64 465846621, ; hash 0x1bc4415d, from name: mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 110
	%struct.DSOCacheEntry {
		i64 466005559, ; hash 0x1bc6ae37, from name: aot-DevExpress.Android.Charts
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 111
	%struct.DSOCacheEntry {
		i64 467017246, ; hash 0x1bd61e1e, from name: aot-ShimSkiaSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 112
	%struct.DSOCacheEntry {
		i64 467362390, ; hash 0x1bdb6256, from name: aot-Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 113
	%struct.DSOCacheEntry {
		i64 467725327, ; hash 0x1be0ec0f, from name: aot-Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 114
	%struct.DSOCacheEntry {
		i64 468077253, ; hash 0x1be64ac5, from name: aot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 115
	%struct.DSOCacheEntry {
		i64 469965489, ; hash 0x1c031ab1, from name: Svg.Model
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 116
	%struct.DSOCacheEntry {
		i64 474623113, ; hash 0x1c4a2c89, from name: Mapsui.Tiling.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 117
	%struct.DSOCacheEntry {
		i64 481548157, ; hash 0x1cb3d77d, from name: libaot-SkiaSharp.Views.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 118
	%struct.DSOCacheEntry {
		i64 482493584, ; hash 0x1cc24490, from name: aot-NetTopologySuite.Features
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 119
	%struct.DSOCacheEntry {
		i64 490025168, ; hash 0x1d3530d0, from name: System.Net.NetworkInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 120
	%struct.DSOCacheEntry {
		i64 492719914, ; hash 0x1d5e4f2a, from name: aot-System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 121
	%struct.DSOCacheEntry {
		i64 498788369, ; hash 0x1dbae811, from name: System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 122
	%struct.DSOCacheEntry {
		i64 500609955, ; hash 0x1dd6b3a3, from name: System.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 123
	%struct.DSOCacheEntry {
		i64 512411698, ; hash 0x1e8ac832, from name: SQLitePCLRaw.core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 124
	%struct.DSOCacheEntry {
		i64 532308082, ; hash 0x1fba6072, from name: aot-SQLitePCLRaw.provider.dynamic_cdecl.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 125
	%struct.DSOCacheEntry {
		i64 539058512, ; hash 0x20216150, from name: Microsoft.Extensions.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 126
	%struct.DSOCacheEntry {
		i64 542686644, ; hash 0x2058bdb4, from name: libaot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 127
	%struct.DSOCacheEntry {
		i64 543811501, ; hash 0x2069e7ad, from name: CommunityToolkit.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 128
	%struct.DSOCacheEntry {
		i64 545304856, ; hash 0x2080b118, from name: System.Runtime.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 129
	%struct.DSOCacheEntry {
		i64 550368715, ; hash 0x20cdf5cb, from name: System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 130
	%struct.DSOCacheEntry {
		i64 551043094, ; hash 0x20d84016, from name: System.Diagnostics.Process.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 131
	%struct.DSOCacheEntry {
		i64 553097331, ; hash 0x20f79873, from name: libaot-Acr.UserDialogs.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 132
	%struct.DSOCacheEntry {
		i64 553863972, ; hash 0x21034b24, from name: aot-System.Collections
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 133
	%struct.DSOCacheEntry {
		i64 554840301, ; hash 0x211230ed, from name: aot-System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 134
	%struct.DSOCacheEntry {
		i64 560233585, ; hash 0x21647c71, from name: libaot-DevExpress.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 135
	%struct.DSOCacheEntry {
		i64 563700166, ; hash 0x219961c6, from name: libaot-Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 136
	%struct.DSOCacheEntry {
		i64 565930154, ; hash 0x21bb68aa, from name: aot-DevExpress.Maui.Scheduler.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 137
	%struct.DSOCacheEntry {
		i64 584914887, ; hash 0x22dd17c7, from name: aot-System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 138
	%struct.DSOCacheEntry {
		i64 585084685, ; hash 0x22dfaf0d, from name: aot-SQLitePCLRaw.batteries_v2
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 139
	%struct.DSOCacheEntry {
		i64 595217260, ; hash 0x237a4b6c, from name: Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 140
	%struct.DSOCacheEntry {
		i64 597488923, ; hash 0x239cf51b, from name: CommunityToolkit.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 141
	%struct.DSOCacheEntry {
		i64 599423409, ; hash 0x23ba79b1, from name: aot-System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 142
	%struct.DSOCacheEntry {
		i64 599950454, ; hash 0x23c28476, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 143
	%struct.DSOCacheEntry {
		i64 602566721, ; hash 0x23ea7041, from name: aot-System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 144
	%struct.DSOCacheEntry {
		i64 607445614, ; hash 0x2434e26e, from name: System.IO.FileSystem.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 145
	%struct.DSOCacheEntry {
		i64 613628058, ; hash 0x2493389a, from name: libaot-Syncfusion.Maui.Gauges
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 146
	%struct.DSOCacheEntry {
		i64 613717745, ; hash 0x249496f1, from name: aot-DevExpress.Android.Charts.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 147
	%struct.DSOCacheEntry {
		i64 615603792, ; hash 0x24b15e50, from name: aot-DevExpress.Maui.Editors
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 148
	%struct.DSOCacheEntry {
		i64 619290284, ; hash 0x24e99eac, from name: Xamarin.AndroidX.Collection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 149
	%struct.DSOCacheEntry {
		i64 622561209, ; hash 0x251b87b9, from name: aot-System.Drawing.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 150
	%struct.DSOCacheEntry {
		i64 627609679, ; hash 0x2568904f, from name: Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 151
	%struct.DSOCacheEntry {
		i64 629828598, ; hash 0x258a6bf6, from name: Microsoft.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 152
	%struct.DSOCacheEntry {
		i64 641339015, ; hash 0x263a0e87, from name: libaot-SkiaSharp.Views.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 153
	%struct.DSOCacheEntry {
		i64 641360513, ; hash 0x263a6281, from name: aot-System.Numerics.Vectors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 154
	%struct.DSOCacheEntry {
		i64 644399814, ; hash 0x2668c2c6, from name: libaot-System.Net.WebHeaderCollection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 155
	%struct.DSOCacheEntry {
		i64 645288582, ; hash 0x26765286, from name: libaot-Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 156
	%struct.DSOCacheEntry {
		i64 656583601, ; hash 0x2722abb1, from name: MySqlConnector.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 157
	%struct.DSOCacheEntry {
		i64 657767393, ; hash 0x2734bbe1, from name: aot-System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 158
	%struct.DSOCacheEntry {
		i64 660366738, ; hash 0x275c6592, from name: aot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 159
	%struct.DSOCacheEntry {
		i64 660388912, ; hash 0x275cbc30, from name: libaot-Mapsui.Nts.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 160
	%struct.DSOCacheEntry {
		i64 672442732, ; hash 0x2814a96c, from name: System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 161
	%struct.DSOCacheEntry {
		i64 673156918, ; hash 0x281f8f36, from name: aot-DevExpress.Maui.Scheduler
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 162
	%struct.DSOCacheEntry {
		i64 675916518, ; hash 0x2849aae6, from name: System.Net.Mail.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 163
	%struct.DSOCacheEntry {
		i64 675936804, ; hash 0x2849fa24, from name: System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 164
	%struct.DSOCacheEntry {
		i64 679655364, ; hash 0x2882b7c4, from name: aot-System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 165
	%struct.DSOCacheEntry {
		i64 679820142, ; hash 0x28853b6e, from name: Plugin.Connectivity.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 166
	%struct.DSOCacheEntry {
		i64 683518922, ; hash 0x28bdabca, from name: System.Net.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 167
	%struct.DSOCacheEntry {
		i64 685856167, ; hash 0x28e155a7, from name: libaot-SmartPharma5.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 168
	%struct.DSOCacheEntry {
		i64 695257950, ; hash 0x2970cb5e, from name: libaot-DevExpress.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 169
	%struct.DSOCacheEntry {
		i64 700809604, ; hash 0x29c58184, from name: DevExpress.Android.Charts
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 170
	%struct.DSOCacheEntry {
		i64 704950567, ; hash 0x2a04b127, from name: aot-DevExpress.Data.v23.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 171
	%struct.DSOCacheEntry {
		i64 706466320, ; hash 0x2a1bd210, from name: libaot-Svg.Custom.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 172
	%struct.DSOCacheEntry {
		i64 713144928, ; hash 0x2a81ba60, from name: libaot-System.Net.Sockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 173
	%struct.DSOCacheEntry {
		i64 716907915, ; hash 0x2abb258b, from name: libaot-SkiaSharp.Views.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 174
	%struct.DSOCacheEntry {
		i64 724168210, ; hash 0x2b29ee12, from name: aot-System.Web.HttpUtility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 175
	%struct.DSOCacheEntry {
		i64 734145151, ; hash 0x2bc22a7f, from name: DevExpress.Android.CollectionView
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 176
	%struct.DSOCacheEntry {
		i64 738487011, ; hash 0x2c046ae3, from name: aot-System.Memory
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 177
	%struct.DSOCacheEntry {
		i64 740429482, ; hash 0x2c220eaa, from name: aot-System.Net.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 178
	%struct.DSOCacheEntry {
		i64 748366034, ; hash 0x2c9b28d2, from name: monodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 179
	%struct.DSOCacheEntry {
		i64 748832960, ; hash 0x2ca248c0, from name: SQLitePCLRaw.batteries_v2
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 180
	%struct.DSOCacheEntry {
		i64 753189543, ; hash 0x2ce4c2a7, from name: aot-DevExpress.Android.Scheduler
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 181
	%struct.DSOCacheEntry {
		i64 759156225, ; hash 0x2d3fce01, from name: aot-Xamarin.AndroidX.Collection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 182
	%struct.DSOCacheEntry {
		i64 759454413, ; hash 0x2d445acd, from name: System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 183
	%struct.DSOCacheEntry {
		i64 761332650, ; hash 0x2d6103aa, from name: libaot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 184
	%struct.DSOCacheEntry {
		i64 765760807, ; hash 0x2da49527, from name: libaot-DevExpress.Android.Charts.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 185
	%struct.DSOCacheEntry {
		i64 771447594, ; hash 0x2dfb5b2a, from name: libaot-SkiaSharp.Views.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 186
	%struct.DSOCacheEntry {
		i64 772210761, ; hash 0x2e070049, from name: System.Resources.ResourceManager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 187
	%struct.DSOCacheEntry {
		i64 772696399, ; hash 0x2e0e694f, from name: aot-System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 188
	%struct.DSOCacheEntry {
		i64 775507847, ; hash 0x2e394f87, from name: System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 189
	%struct.DSOCacheEntry {
		i64 779640747, ; hash 0x2e785fab, from name: DevExpress.Maui.CollectionView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 190
	%struct.DSOCacheEntry {
		i64 782594815, ; hash 0x2ea572ff, from name: SkiaSharp.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 191
	%struct.DSOCacheEntry {
		i64 789074706, ; hash 0x2f085312, from name: aot-System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 192
	%struct.DSOCacheEntry {
		i64 789151979, ; hash 0x2f0980eb, from name: Microsoft.Extensions.Options
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 193
	%struct.DSOCacheEntry {
		i64 793602327, ; hash 0x2f4d6917, from name: Svg.Model.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 194
	%struct.DSOCacheEntry {
		i64 802286629, ; hash 0x2fd1ec25, from name: aot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 195
	%struct.DSOCacheEntry {
		i64 804715423, ; hash 0x2ff6fb9f, from name: System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 196
	%struct.DSOCacheEntry {
		i64 806746267, ; hash 0x3015f89b, from name: aot-System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 197
	%struct.DSOCacheEntry {
		i64 808414858, ; hash 0x302f6e8a, from name: BruTile.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 198
	%struct.DSOCacheEntry {
		i64 819808849, ; hash 0x30dd4a51, from name: libaot-Svg.Skia.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 199
	%struct.DSOCacheEntry {
		i64 826035354, ; hash 0x313c4c9a, from name: libaot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 200
	%struct.DSOCacheEntry {
		i64 826478269, ; hash 0x31430ebd, from name: MvvmHelpers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 201
	%struct.DSOCacheEntry {
		i64 829537894, ; hash 0x3171be66, from name: aot-System.Drawing.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 202
	%struct.DSOCacheEntry {
		i64 830298997, ; hash 0x317d5b75, from name: System.IO.Compression.Brotli
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 203
	%struct.DSOCacheEntry {
		i64 837478634, ; hash 0x31eae8ea, from name: libaot-System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 204
	%struct.DSOCacheEntry {
		i64 838232158, ; hash 0x31f6685e, from name: aot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 205
	%struct.DSOCacheEntry {
		i64 845614355, ; hash 0x32670d13, from name: aot-System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 206
	%struct.DSOCacheEntry {
		i64 846646212, ; hash 0x3276cbc4, from name: aot-System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 207
	%struct.DSOCacheEntry {
		i64 847242641, ; hash 0x327fe591, from name: libaot-CommunityToolkit.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 208
	%struct.DSOCacheEntry {
		i64 847285588, ; hash 0x32808d54, from name: libaot-DevExpress.Data.v23.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 209
	%struct.DSOCacheEntry {
		i64 850113928, ; hash 0x32abb588, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 210
	%struct.DSOCacheEntry {
		i64 855129724, ; hash 0x32f83e7c, from name: libaot-System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 211
	%struct.DSOCacheEntry {
		i64 855910803, ; hash 0x33042993, from name: aot-System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 212
	%struct.DSOCacheEntry {
		i64 862126818, ; hash 0x336302e2, from name: libaot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 213
	%struct.DSOCacheEntry {
		i64 866894703, ; hash 0x33abc36f, from name: System.Net.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 214
	%struct.DSOCacheEntry {
		i64 868972713, ; hash 0x33cb78a9, from name: aot-ExCSS.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 215
	%struct.DSOCacheEntry {
		i64 869473018, ; hash 0x33d31afa, from name: aot-System.Threading.Tasks.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 216
	%struct.DSOCacheEntry {
		i64 870587408, ; hash 0x33e41c10, from name: System.Security.Cryptography.Native.Android.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 217
	%struct.DSOCacheEntry {
		i64 874318146, ; hash 0x341d0942, from name: libaot-System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 218
	%struct.DSOCacheEntry {
		i64 876853269, ; hash 0x3443b815, from name: libaot-System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 219
	%struct.DSOCacheEntry {
		i64 880254817, ; hash 0x34779f61, from name: Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 220
	%struct.DSOCacheEntry {
		i64 884884248, ; hash 0x34be4318, from name: aot-Xamarin.AndroidX.Collection
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 221
	%struct.DSOCacheEntry {
		i64 885184054, ; hash 0x34c2d636, from name: aot-System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 222
	%struct.DSOCacheEntry {
		i64 887464412, ; hash 0x34e5a1dc, from name: libaot-SkiaSharp.HarfBuzz.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 223
	%struct.DSOCacheEntry {
		i64 899379029, ; hash 0x359b6f55, from name: libaot-DevExpress.Android.CollectionView
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 224
	%struct.DSOCacheEntry {
		i64 899702261, ; hash 0x35a05df5, from name: aot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 225
	%struct.DSOCacheEntry {
		i64 905680937, ; hash 0x35fb9829, from name: aot-mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 226
	%struct.DSOCacheEntry {
		i64 907714710, ; hash 0x361aa096, from name: libaot-System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 227
	%struct.DSOCacheEntry {
		i64 909796259, ; hash 0x363a63a3, from name: SmartPharma5.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 228
	%struct.DSOCacheEntry {
		i64 909813685, ; hash 0x363aa7b5, from name: aot-NetTopologySuite.IO.GeoJSON4STJ
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 229
	%struct.DSOCacheEntry {
		i64 940742254, ; hash 0x3812966e, from name: libaot-System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 230
	%struct.DSOCacheEntry {
		i64 950134675, ; hash 0x38a1e793, from name: libaot-System.Drawing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 231
	%struct.DSOCacheEntry {
		i64 951611290, ; hash 0x38b86f9a, from name: DevExpress.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 232
	%struct.DSOCacheEntry {
		i64 952358589, ; hash 0x38c3d6bd, from name: SQLitePCLRaw.nativelibrary
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 233
	%struct.DSOCacheEntry {
		i64 956022431, ; hash 0x38fbbe9f, from name: aot-System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 234
	%struct.DSOCacheEntry {
		i64 958697939, ; hash 0x392491d3, from name: libaot-System.Runtime.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 235
	%struct.DSOCacheEntry {
		i64 965570903, ; hash 0x398d7157, from name: libaot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 236
	%struct.DSOCacheEntry {
		i64 970896636, ; hash 0x39deb4fc, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 237
	%struct.DSOCacheEntry {
		i64 975874589, ; hash 0x3a2aaa1d, from name: System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 238
	%struct.DSOCacheEntry {
		i64 981249547, ; hash 0x3a7cae0b, from name: Xamarin.AndroidX.Browser.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 239
	%struct.DSOCacheEntry {
		i64 983724495, ; hash 0x3aa271cf, from name: libaot-System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 240
	%struct.DSOCacheEntry {
		i64 991024368, ; hash 0x3b11d4f0, from name: aot-System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 241
	%struct.DSOCacheEntry {
		i64 991370235, ; hash 0x3b171bfb, from name: libaot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 242
	%struct.DSOCacheEntry {
		i64 994442037, ; hash 0x3b45fb35, from name: System.IO.FileSystem
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 243
	%struct.DSOCacheEntry {
		i64 999672289, ; hash 0x3b95c9e1, from name: DevExpress.Maui.DataGrid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 244
	%struct.DSOCacheEntry {
		i64 999807200, ; hash 0x3b97d8e0, from name: Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 245
	%struct.DSOCacheEntry {
		i64 1000172987, ; hash 0x3b9d6dbb, from name: libaot-System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 246
	%struct.DSOCacheEntry {
		i64 1000318620, ; hash 0x3b9fa69c, from name: libaot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 247
	%struct.DSOCacheEntry {
		i64 1013014117, ; hash 0x3c615e65, from name: aot-Syncfusion.Maui.Gauges
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 248
	%struct.DSOCacheEntry {
		i64 1014632550, ; hash 0x3c7a1066, from name: Microsoft.Maui.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 249
	%struct.DSOCacheEntry {
		i64 1019214401, ; hash 0x3cbffa41, from name: System.Drawing
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 250
	%struct.DSOCacheEntry {
		i64 1020599761, ; hash 0x3cd51dd1, from name: libaot-Microsoft.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 251
	%struct.DSOCacheEntry {
		i64 1021628303, ; hash 0x3ce4cf8f, from name: libaot-Microsoft.Extensions.Options.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 252
	%struct.DSOCacheEntry {
		i64 1027261693, ; hash 0x3d3ac4fd, from name: aot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 253
	%struct.DSOCacheEntry {
		i64 1028951442, ; hash 0x3d548d92, from name: Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 254
	%struct.DSOCacheEntry {
		i64 1029572200, ; hash 0x3d5e0668, from name: Syncfusion.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 255
	%struct.DSOCacheEntry {
		i64 1032907180, ; hash 0x3d90e9ac, from name: libaot-System.Resources.ResourceManager
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 256
	%struct.DSOCacheEntry {
		i64 1035644815, ; hash 0x3dbaaf8f, from name: Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 257
	%struct.DSOCacheEntry {
		i64 1039941999, ; hash 0x3dfc416f, from name: libaot-System.Threading.Tasks.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 258
	%struct.DSOCacheEntry {
		i64 1056647825, ; hash 0x3efb2a91, from name: System.Net.WebProxy.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 259
	%struct.DSOCacheEntry {
		i64 1063754369, ; hash 0x3f679a81, from name: libDXChartsNative
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 260
	%struct.DSOCacheEntry {
		i64 1064597976, ; hash 0x3f7479d8, from name: Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 261
	%struct.DSOCacheEntry {
		i64 1069205647, ; hash 0x3fbac88f, from name: Topten.RichTextKit.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 262
	%struct.DSOCacheEntry {
		i64 1074670799, ; hash 0x400e2ccf, from name: Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 263
	%struct.DSOCacheEntry {
		i64 1076071578, ; hash 0x40238c9a, from name: libaot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 264
	%struct.DSOCacheEntry {
		i64 1079503280, ; hash 0x4057e9b0, from name: libaot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 265
	%struct.DSOCacheEntry {
		i64 1080112110, ; hash 0x406133ee, from name: aot-Topten.RichTextKit.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 266
	%struct.DSOCacheEntry {
		i64 1082646219, ; hash 0x4087decb, from name: libaot-Plugin.Connectivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 267
	%struct.DSOCacheEntry {
		i64 1082857460, ; hash 0x408b17f4, from name: System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 268
	%struct.DSOCacheEntry {
		i64 1084122840, ; hash 0x409e66d8, from name: Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 269
	%struct.DSOCacheEntry {
		i64 1089627220, ; hash 0x40f26454, from name: libaot-Mapsui.UI.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 270
	%struct.DSOCacheEntry {
		i64 1098259244, ; hash 0x41761b2c, from name: System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 271
	%struct.DSOCacheEntry {
		i64 1106107852, ; hash 0x41edddcc, from name: aot-NetTopologySuite.Features.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 272
	%struct.DSOCacheEntry {
		i64 1107286201, ; hash 0x41ffd8b9, from name: libaot-System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 273
	%struct.DSOCacheEntry {
		i64 1117842420, ; hash 0x42a0ebf4, from name: libaot-MySqlConnector.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 274
	%struct.DSOCacheEntry {
		i64 1118665323, ; hash 0x42ad7a6b, from name: aot-NetTopologySuite.IO.GeoJSON4STJ.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 275
	%struct.DSOCacheEntry {
		i64 1121069432, ; hash 0x42d22978, from name: libaot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 276
	%struct.DSOCacheEntry {
		i64 1136326207, ; hash 0x43baf63f, from name: libaot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 277
	%struct.DSOCacheEntry {
		i64 1141279138, ; hash 0x440689a2, from name: libaot-System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 278
	%struct.DSOCacheEntry {
		i64 1141331177, ; hash 0x440754e9, from name: libaot-DevExpress.Android.Grid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 279
	%struct.DSOCacheEntry {
		i64 1144657884, ; hash 0x443a17dc, from name: aot-System.Diagnostics.DiagnosticSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 280
	%struct.DSOCacheEntry {
		i64 1146217074, ; hash 0x4451e272, from name: aot-DevExpress.Android.CollectionView
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 281
	%struct.DSOCacheEntry {
		i64 1148256665, ; hash 0x44710199, from name: aot-DevExpress.Maui.DataGrid
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 282
	%struct.DSOCacheEntry {
		i64 1149092582, ; hash 0x447dc2e6, from name: Xamarin.AndroidX.Window
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 283
	%struct.DSOCacheEntry {
		i64 1158083819, ; hash 0x4506f4eb, from name: libaot-System.Net.Requests.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 284
	%struct.DSOCacheEntry {
		i64 1158811940, ; hash 0x45121124, from name: aot-AndHUD
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 285
	%struct.DSOCacheEntry {
		i64 1162145747, ; hash 0x4544efd3, from name: aot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 286
	%struct.DSOCacheEntry {
		i64 1163002600, ; hash 0x455202e8, from name: libaot-System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 287
	%struct.DSOCacheEntry {
		i64 1166279424, ; hash 0x45840300, from name: libaot-Microsoft.Extensions.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 288
	%struct.DSOCacheEntry {
		i64 1166903420, ; hash 0x458d887c, from name: System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 289
	%struct.DSOCacheEntry {
		i64 1168283859, ; hash 0x45a298d3, from name: libaot-System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 290
	%struct.DSOCacheEntry {
		i64 1169748878, ; hash 0x45b8f38e, from name: libaot-System.Net.Sockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 291
	%struct.DSOCacheEntry {
		i64 1173407223, ; hash 0x45f0c5f7, from name: DevExpress.Android.Navigation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 292
	%struct.DSOCacheEntry {
		i64 1173940943, ; hash 0x45f8eacf, from name: libaot-Xamarin.AndroidX.Window
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 293
	%struct.DSOCacheEntry {
		i64 1192465980, ; hash 0x4713963c, from name: Syncfusion.Maui.Gauges.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 294
	%struct.DSOCacheEntry {
		i64 1194435441, ; hash 0x4731a371, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 295
	%struct.DSOCacheEntry {
		i64 1197858586, ; hash 0x4765df1a, from name: libaot-System.Drawing
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 296
	%struct.DSOCacheEntry {
		i64 1203263500, ; hash 0x47b8580c, from name: System.Text.Encoding.CodePages.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 297
	%struct.DSOCacheEntry {
		i64 1208641965, ; hash 0x480a69ad, from name: System.Diagnostics.Process
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 298
	%struct.DSOCacheEntry {
		i64 1215177351, ; hash 0x486e2287, from name: aot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 299
	%struct.DSOCacheEntry {
		i64 1216888235, ; hash 0x48883dab, from name: aot-System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 300
	%struct.DSOCacheEntry {
		i64 1217853959, ; hash 0x4896fa07, from name: aot-System.Runtime.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 301
	%struct.DSOCacheEntry {
		i64 1221399229, ; hash 0x48cd12bd, from name: netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 302
	%struct.DSOCacheEntry {
		i64 1234663735, ; hash 0x49977937, from name: libaot-DevExpress.Android.Scheduler.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 303
	%struct.DSOCacheEntry {
		i64 1245083133, ; hash 0x4a3675fd, from name: aot-Plugin.Connectivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 304
	%struct.DSOCacheEntry {
		i64 1248505390, ; hash 0x4a6aae2e, from name: libaot-System.Diagnostics.TraceSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 305
	%struct.DSOCacheEntry {
		i64 1249626734, ; hash 0x4a7bca6e, from name: Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 306
	%struct.DSOCacheEntry {
		i64 1251805992, ; hash 0x4a9d0b28, from name: aot-System.Net.NetworkInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 307
	%struct.DSOCacheEntry {
		i64 1264007745, ; hash 0x4b573a41, from name: aot-Xamarin.AndroidX.CustomView
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 308
	%struct.DSOCacheEntry {
		i64 1264963479, ; hash 0x4b65cf97, from name: aot-System.Net.Mail.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 309
	%struct.DSOCacheEntry {
		i64 1268771501, ; hash 0x4b9feaad, from name: aot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 310
	%struct.DSOCacheEntry {
		i64 1270657563, ; hash 0x4bbcb21b, from name: System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 311
	%struct.DSOCacheEntry {
		i64 1271014665, ; hash 0x4bc22509, from name: libaot-System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 312
	%struct.DSOCacheEntry {
		i64 1277412854, ; hash 0x4c23c5f6, from name: libaot-System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 313
	%struct.DSOCacheEntry {
		i64 1277988878, ; hash 0x4c2c900e, from name: libaot-DevExpress.Android.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 314
	%struct.DSOCacheEntry {
		i64 1281955724, ; hash 0x4c69178c, from name: libaot-Microsoft.Maui.Controls.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 315
	%struct.DSOCacheEntry {
		i64 1285465351, ; hash 0x4c9ea507, from name: aot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 316
	%struct.DSOCacheEntry {
		i64 1303631868, ; hash 0x4db3d7fc, from name: libaot-Microsoft.Maui.Graphics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 317
	%struct.DSOCacheEntry {
		i64 1313028017, ; hash 0x4e4337b1, from name: Topten.RichTextKit
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 318
	%struct.DSOCacheEntry {
		i64 1324164729, ; hash 0x4eed2679, from name: System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 319
	%struct.DSOCacheEntry {
		i64 1326422064, ; hash 0x4f0f9830, from name: libaot-System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 320
	%struct.DSOCacheEntry {
		i64 1330538025, ; hash 0x4f4e6629, from name: libaot-System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 321
	%struct.DSOCacheEntry {
		i64 1331715804, ; hash 0x4f605edc, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 322
	%struct.DSOCacheEntry {
		i64 1351248141, ; hash 0x508a690d, from name: libaot-System.Drawing.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 323
	%struct.DSOCacheEntry {
		i64 1355559258, ; hash 0x50cc315a, from name: DevExpress.Maui.Scheduler
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 324
	%struct.DSOCacheEntry {
		i64 1356916091, ; hash 0x50e0e57b, from name: Microsoft.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 325
	%struct.DSOCacheEntry {
		i64 1360868007, ; hash 0x511d32a7, from name: libaot-Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 326
	%struct.DSOCacheEntry {
		i64 1363166739, ; hash 0x51404613, from name: libaot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 327
	%struct.DSOCacheEntry {
		i64 1364190142, ; hash 0x514fe3be, from name: Syncfusion.Maui.Gauges
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 328
	%struct.DSOCacheEntry {
		i64 1364629429, ; hash 0x515697b5, from name: System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 329
	%struct.DSOCacheEntry {
		i64 1367380953, ; hash 0x518093d9, from name: aot-Mapsui.Tiling
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 330
	%struct.DSOCacheEntry {
		i64 1368331863, ; hash 0x518f1657, from name: libaot-SQLitePCLRaw.core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 331
	%struct.DSOCacheEntry {
		i64 1369292404, ; hash 0x519dbe74, from name: aot-Xamarin.AndroidX.ViewPager2
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 332
	%struct.DSOCacheEntry {
		i64 1369565496, ; hash 0x51a1e938, from name: System.Drawing.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 333
	%struct.DSOCacheEntry {
		i64 1369635430, ; hash 0x51a2fa66, from name: aot-Xamarin.AndroidX.Window
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 334
	%struct.DSOCacheEntry {
		i64 1373613485, ; hash 0x51dfadad, from name: libaot-Microsoft.Maui.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 335
	%struct.DSOCacheEntry {
		i64 1376113003, ; hash 0x5205d16b, from name: aot-Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 336
	%struct.DSOCacheEntry {
		i64 1376238345, ; hash 0x5207bb09, from name: aot-System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 337
	%struct.DSOCacheEntry {
		i64 1376866003, ; hash 0x52114ed3, from name: Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 338
	%struct.DSOCacheEntry {
		i64 1379779777, ; hash 0x523dc4c1, from name: System.Resources.ResourceManager
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 339
	%struct.DSOCacheEntry {
		i64 1383009688, ; hash 0x526f0d98, from name: aot-System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 340
	%struct.DSOCacheEntry {
		i64 1383267250, ; hash 0x5272fbb2, from name: aot-System.ObjectModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 341
	%struct.DSOCacheEntry {
		i64 1386166540, ; hash 0x529f390c, from name: libaot-System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 342
	%struct.DSOCacheEntry {
		i64 1388636356, ; hash 0x52c4e8c4, from name: aot-Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 343
	%struct.DSOCacheEntry {
		i64 1390172878, ; hash 0x52dc5ace, from name: aot-System.Text.Encoding.CodePages.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 344
	%struct.DSOCacheEntry {
		i64 1395919151, ; hash 0x5334092f, from name: libaot-System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 345
	%struct.DSOCacheEntry {
		i64 1396668899, ; hash 0x533f79e3, from name: libaot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 346
	%struct.DSOCacheEntry {
		i64 1398864029, ; hash 0x5360f89d, from name: System.Security.Cryptography.Native.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 347
	%struct.DSOCacheEntry {
		i64 1401968973, ; hash 0x5390594d, from name: System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 348
	%struct.DSOCacheEntry {
		i64 1404204140, ; hash 0x53b2746c, from name: libaot-Mapsui.Tiling
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 349
	%struct.DSOCacheEntry {
		i64 1406073936, ; hash 0x53cefc50, from name: Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 350
	%struct.DSOCacheEntry {
		i64 1409736290, ; hash 0x5406de62, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 351
	%struct.DSOCacheEntry {
		i64 1411638395, ; hash 0x5423e47b, from name: System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 352
	%struct.DSOCacheEntry {
		i64 1414194455, ; hash 0x544ae517, from name: System.Threading.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 353
	%struct.DSOCacheEntry {
		i64 1420422233, ; hash 0x54a9ec59, from name: libaot-Mapsui.Rendering.Skia.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 354
	%struct.DSOCacheEntry {
		i64 1427200648, ; hash 0x55115a88, from name: aot-Microsoft.Extensions.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 355
	%struct.DSOCacheEntry {
		i64 1437873632, ; hash 0x55b435e0, from name: libaot-System.Runtime.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.3, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 356
	%struct.DSOCacheEntry {
		i64 1443565528, ; hash 0x560b0fd8, from name: aot-System.Drawing
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 357
	%struct.DSOCacheEntry {
		i64 1443938015, ; hash 0x5610bedf, from name: NetTopologySuite
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 358
	%struct.DSOCacheEntry {
		i64 1450763449, ; hash 0x5678e4b9, from name: aot-System.Diagnostics.TraceSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 359
	%struct.DSOCacheEntry {
		i64 1452208284, ; hash 0x568ef09c, from name: libaot-Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 360
	%struct.DSOCacheEntry {
		i64 1457035958, ; hash 0x56d89ab6, from name: libaot-netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 361
	%struct.DSOCacheEntry {
		i64 1457202274, ; hash 0x56db2462, from name: aot-System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 362
	%struct.DSOCacheEntry {
		i64 1460674409, ; hash 0x57101f69, from name: libHarfBuzzSharp.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 363
	%struct.DSOCacheEntry {
		i64 1463788158, ; hash 0x573fa27e, from name: libaot-DevExpress.Android.Navigation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 364
	%struct.DSOCacheEntry {
		i64 1469204771, ; hash 0x57924923, from name: Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 365
	%struct.DSOCacheEntry {
		i64 1470490898, ; hash 0x57a5e912, from name: Microsoft.Extensions.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 366
	%struct.DSOCacheEntry {
		i64 1472667704, ; hash 0x57c72038, from name: libaot-Svg.Model
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 367
	%struct.DSOCacheEntry {
		i64 1479771757, ; hash 0x5833866d, from name: System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 368
	%struct.DSOCacheEntry {
		i64 1480146353, ; hash 0x58393db1, from name: libaot-Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 369
	%struct.DSOCacheEntry {
		i64 1483886350, ; hash 0x58724f0e, from name: System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 370
	%struct.DSOCacheEntry {
		i64 1484409012, ; hash 0x587a48b4, from name: DevExpress.Maui.Charts.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 371
	%struct.DSOCacheEntry {
		i64 1485787675, ; hash 0x588f521b, from name: System.Threading.Tasks.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 372
	%struct.DSOCacheEntry {
		i64 1485956458, ; hash 0x5891e56a, from name: libaot-SQLitePCLRaw.provider.dynamic_cdecl
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 373
	%struct.DSOCacheEntry {
		i64 1487239319, ; hash 0x58a57897, from name: Microsoft.Win32.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 374
	%struct.DSOCacheEntry {
		i64 1488589746, ; hash 0x58ba13b2, from name: aot-Xamarin.AndroidX.AppCompat
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 375
	%struct.DSOCacheEntry {
		i64 1498647657, ; hash 0x59538c69, from name: aot-Microsoft.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 376
	%struct.DSOCacheEntry {
		i64 1503765866, ; hash 0x59a1a56a, from name: aot-System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 377
	%struct.DSOCacheEntry {
		i64 1505467903, ; hash 0x59bb9dff, from name: aot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 378
	%struct.DSOCacheEntry {
		i64 1511525525, ; hash 0x5a180c95, from name: MySqlConnector
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 379
	%struct.DSOCacheEntry {
		i64 1512975453, ; hash 0x5a2e2c5d, from name: aot-Microsoft.Extensions.Logging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 380
	%struct.DSOCacheEntry {
		i64 1518218766, ; hash 0x5a7e2e0e, from name: libaot-System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 381
	%struct.DSOCacheEntry {
		i64 1525880992, ; hash 0x5af318a0, from name: aot-System.Net.ServicePoint.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 382
	%struct.DSOCacheEntry {
		i64 1536876128, ; hash 0x5b9ade60, from name: libSystem.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 383
	%struct.DSOCacheEntry {
		i64 1540666863, ; hash 0x5bd4b5ef, from name: aot-System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 384
	%struct.DSOCacheEntry {
		i64 1566308565, ; hash 0x5d5bf8d5, from name: System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 385
	%struct.DSOCacheEntry {
		i64 1581354077, ; hash 0x5e418c5d, from name: aot-DevExpress.Android.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 386
	%struct.DSOCacheEntry {
		i64 1583104848, ; hash 0x5e5c4350, from name: libaot-Mapsui.Tiling.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 387
	%struct.DSOCacheEntry {
		i64 1589078271, ; hash 0x5eb768ff, from name: aot-Acr.UserDialogs.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 388
	%struct.DSOCacheEntry {
		i64 1589898469, ; hash 0x5ec3ece5, from name: aot-SQLitePCLRaw.nativelibrary
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 389
	%struct.DSOCacheEntry {
		i64 1594017295, ; hash 0x5f02c60f, from name: libaot-SkiaSharp.Views.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 390
	%struct.DSOCacheEntry {
		i64 1600541741, ; hash 0x5f66542d, from name: ShimSkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 391
	%struct.DSOCacheEntry {
		i64 1602284021, ; hash 0x5f80e9f5, from name: DevExpress.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 392
	%struct.DSOCacheEntry {
		i64 1604573141, ; hash 0x5fa3d7d5, from name: aot-Topten.RichTextKit
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 393
	%struct.DSOCacheEntry {
		i64 1605663965, ; hash 0x5fb47cdd, from name: DXSchedulerNative
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 394
	%struct.DSOCacheEntry {
		i64 1623212457, ; hash 0x60c041a9, from name: SkiaSharp.Views.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 395
	%struct.DSOCacheEntry {
		i64 1624863272, ; hash 0x60d97228, from name: Xamarin.AndroidX.ViewPager2
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 396
	%struct.DSOCacheEntry {
		i64 1636350590, ; hash 0x6188ba7e, from name: Xamarin.AndroidX.CursorAdapter
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 397
	%struct.DSOCacheEntry {
		i64 1637436415, ; hash 0x61994bff, from name: aot-System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 398
	%struct.DSOCacheEntry {
		i64 1638409276, ; hash 0x61a8243c, from name: DevExpress.Android.Charts.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.87, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 399
	%struct.DSOCacheEntry {
		i64 1639295300, ; hash 0x61b5a944, from name: aot-System.Drawing.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 400
	%struct.DSOCacheEntry {
		i64 1639986890, ; hash 0x61c036ca, from name: System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 401
	%struct.DSOCacheEntry {
		i64 1643369834, ; hash 0x61f3d56a, from name: aot-System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 402
	%struct.DSOCacheEntry {
		i64 1650628805, ; hash 0x626298c5, from name: NetTopologySuite.IO.GeoJSON4STJ.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 403
	%struct.DSOCacheEntry {
		i64 1651622786, ; hash 0x6271c382, from name: aot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 404
	%struct.DSOCacheEntry {
		i64 1654786569, ; hash 0x62a20a09, from name: DevExpress.Maui.DataGrid
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 405
	%struct.DSOCacheEntry {
		i64 1655074902, ; hash 0x62a67056, from name: aot-DevExpress.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 406
	%struct.DSOCacheEntry {
		i64 1657153582, ; hash 0x62c6282e, from name: System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 407
	%struct.DSOCacheEntry {
		i64 1663686167, ; hash 0x6329d617, from name: aot-MvvmHelpers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 408
	%struct.DSOCacheEntry {
		i64 1667994541, ; hash 0x636b93ad, from name: libaot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 409
	%struct.DSOCacheEntry {
		i64 1675361581, ; hash 0x63dbfd2d, from name: e_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 410
	%struct.DSOCacheEntry {
		i64 1676014415, ; hash 0x63e5f34f, from name: Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 411
	%struct.DSOCacheEntry {
		i64 1679307805, ; hash 0x6418341d, from name: aot-SQLitePCLRaw.nativelibrary.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 412
	%struct.DSOCacheEntry {
		i64 1679769178, ; hash 0x641f3e5a, from name: System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 413
	%struct.DSOCacheEntry {
		i64 1685358301, ; hash 0x647486dd, from name: System.Net.WebHeaderCollection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 414
	%struct.DSOCacheEntry {
		i64 1693213844, ; hash 0x64ec6494, from name: aot-DevExpress.Maui.DataGrid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 415
	%struct.DSOCacheEntry {
		i64 1699189939, ; hash 0x654794b3, from name: aot-System.Xml.XPath
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 416
	%struct.DSOCacheEntry {
		i64 1700345642, ; hash 0x6559372a, from name: Mapsui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 417
	%struct.DSOCacheEntry {
		i64 1701847939, ; hash 0x65702383, from name: libaot-Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 418
	%struct.DSOCacheEntry {
		i64 1711441057, ; hash 0x660284a1, from name: SQLitePCLRaw.lib.e_sqlite3.android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 419
	%struct.DSOCacheEntry {
		i64 1723608128, ; hash 0x66bc2c40, from name: aot-Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 420
	%struct.DSOCacheEntry {
		i64 1730800561, ; hash 0x6729ebb1, from name: libaot-SmartPharma5
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 421
	%struct.DSOCacheEntry {
		i64 1736175045, ; hash 0x677bedc5, from name: libaot-System.Xml.XmlSerializer
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 422
	%struct.DSOCacheEntry {
		i64 1740020094, ; hash 0x67b6997e, from name: System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 423
	%struct.DSOCacheEntry {
		i64 1741899193, ; hash 0x67d345b9, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 424
	%struct.DSOCacheEntry {
		i64 1743439659, ; hash 0x67eac72b, from name: aot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 425
	%struct.DSOCacheEntry {
		i64 1743533036, ; hash 0x67ec33ec, from name: aot-SkiaSharp.HarfBuzz
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 426
	%struct.DSOCacheEntry {
		i64 1744691755, ; hash 0x67fde22b, from name: libaot-System.Text.Encoding.CodePages.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 427
	%struct.DSOCacheEntry {
		i64 1746885852, ; hash 0x681f5cdc, from name: libaot-System.Collections.Concurrent.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 428
	%struct.DSOCacheEntry {
		i64 1756251935, ; hash 0x68ae471f, from name: aot-System.Drawing.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 429
	%struct.DSOCacheEntry {
		i64 1757787625, ; hash 0x68c5b5e9, from name: Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 430
	%struct.DSOCacheEntry {
		i64 1758908073, ; hash 0x68d6cea9, from name: aot-CommunityToolkit.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 431
	%struct.DSOCacheEntry {
		i64 1761572692, ; hash 0x68ff7754, from name: System.Numerics.Vectors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 432
	%struct.DSOCacheEntry {
		i64 1762368869, ; hash 0x690b9d65, from name: libaot-Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 433
	%struct.DSOCacheEntry {
		i64 1766324549, ; hash 0x6947f945, from name: Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 434
	%struct.DSOCacheEntry {
		i64 1770409065, ; hash 0x69864c69, from name: libaot-Microsoft.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 435
	%struct.DSOCacheEntry {
		i64 1770694025, ; hash 0x698aa589, from name: libaot-System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 436
	%struct.DSOCacheEntry {
		i64 1771950098, ; hash 0x699dd012, from name: libaot-CommunityToolkit.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 437
	%struct.DSOCacheEntry {
		i64 1781273325, ; hash 0x6a2c12ed, from name: DevExpress.Android.Navigation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 438
	%struct.DSOCacheEntry {
		i64 1782106979, ; hash 0x6a38cb63, from name: libaot-NetTopologySuite.IO.GeoJSON4STJ
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 439
	%struct.DSOCacheEntry {
		i64 1785210584, ; hash 0x6a6826d8, from name: libaot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 440
	%struct.DSOCacheEntry {
		i64 1787827777, ; hash 0x6a901641, from name: libaot-Mapsui.Nts
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 441
	%struct.DSOCacheEntry {
		i64 1788241197, ; hash 0x6a96652d, from name: Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 442
	%struct.DSOCacheEntry {
		i64 1798454593, ; hash 0x6b323d41, from name: libaot-System.IO.Pipes
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 443
	%struct.DSOCacheEntry {
		i64 1802533490, ; hash 0x6b707a72, from name: libHarfBuzzSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 444
	%struct.DSOCacheEntry {
		i64 1805777841, ; hash 0x6ba1fbb1, from name: libaot-System.Transactions.Local.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 445
	%struct.DSOCacheEntry {
		i64 1807794426, ; hash 0x6bc0c0fa, from name: aot-Xamarin.AndroidX.Navigation.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 446
	%struct.DSOCacheEntry {
		i64 1808609942, ; hash 0x6bcd3296, from name: Xamarin.AndroidX.Loader
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 447
	%struct.DSOCacheEntry {
		i64 1813201214, ; hash 0x6c13413e, from name: Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 448
	%struct.DSOCacheEntry {
		i64 1816605001, ; hash 0x6c473149, from name: aot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 449
	%struct.DSOCacheEntry {
		i64 1822307990, ; hash 0x6c9e3696, from name: aot-Plugin.Connectivity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 450
	%struct.DSOCacheEntry {
		i64 1822997506, ; hash 0x6ca8bc02, from name: libaot-System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 451
	%struct.DSOCacheEntry {
		i64 1824175904, ; hash 0x6cbab720, from name: System.Text.Encoding.Extensions
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 452
	%struct.DSOCacheEntry {
		i64 1824722060, ; hash 0x6cc30c8c, from name: System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 453
	%struct.DSOCacheEntry {
		i64 1836222811, ; hash 0x6d72895b, from name: aot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 454
	%struct.DSOCacheEntry {
		i64 1837604580, ; hash 0x6d879ee4, from name: aot-DevExpress.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 455
	%struct.DSOCacheEntry {
		i64 1838737787, ; hash 0x6d98e97b, from name: aot-Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 456
	%struct.DSOCacheEntry {
		i64 1851144567, ; hash 0x6e563977, from name: SkiaSharp.Views.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 457
	%struct.DSOCacheEntry {
		i64 1856510251, ; hash 0x6ea8192b, from name: libaot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 458
	%struct.DSOCacheEntry {
		i64 1858542181, ; hash 0x6ec71a65, from name: System.Linq.Expressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 459
	%struct.DSOCacheEntry {
		i64 1868438852, ; hash 0x6f5e1d44, from name: aot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 460
	%struct.DSOCacheEntry {
		i64 1876472046, ; hash 0x6fd8b0ee, from name: libaot-Acr.UserDialogs
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 461
	%struct.DSOCacheEntry {
		i64 1879211860, ; hash 0x70027f54, from name: aot-SkiaSharp.Views.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 462
	%struct.DSOCacheEntry {
		i64 1883618565, ; hash 0x7045bd05, from name: aot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 463
	%struct.DSOCacheEntry {
		i64 1889411128, ; hash 0x709e2038, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 464
	%struct.DSOCacheEntry {
		i64 1895368193, ; hash 0x70f90601, from name: aot-NetTopologySuite.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 465
	%struct.DSOCacheEntry {
		i64 1896169914, ; hash 0x710541ba, from name: aot-System.IO.Compression.Brotli.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 466
	%struct.DSOCacheEntry {
		i64 1897282770, ; hash 0x71163cd2, from name: SQLite-net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 467
	%struct.DSOCacheEntry {
		i64 1900739026, ; hash 0x714af9d2, from name: libaot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 468
	%struct.DSOCacheEntry {
		i64 1902824622, ; hash 0x716accae, from name: libaot-System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 469
	%struct.DSOCacheEntry {
		i64 1904192138, ; hash 0x717faa8a, from name: aot-CommunityToolkit.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 470
	%struct.DSOCacheEntry {
		i64 1907175328, ; hash 0x71ad2fa0, from name: Xamarin.AndroidX.Window.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 471
	%struct.DSOCacheEntry {
		i64 1911147258, ; hash 0x71e9cafa, from name: aot-System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 472
	%struct.DSOCacheEntry {
		i64 1914833484, ; hash 0x72220a4c, from name: libaot-SQLitePCLRaw.lib.e_sqlite3.android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 473
	%struct.DSOCacheEntry {
		i64 1915179509, ; hash 0x722751f5, from name: System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 474
	%struct.DSOCacheEntry {
		i64 1917270479, ; hash 0x724739cf, from name: libaot-System.ComponentModel.TypeConverter
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 475
	%struct.DSOCacheEntry {
		i64 1927204088, ; hash 0x72deccf8, from name: Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 476
	%struct.DSOCacheEntry {
		i64 1932973986, ; hash 0x7336d7a2, from name: SQLitePCLRaw.batteries_v2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 477
	%struct.DSOCacheEntry {
		i64 1939226026, ; hash 0x73963daa, from name: aot-System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 478
	%struct.DSOCacheEntry {
		i64 1939592360, ; hash 0x739bd4a8, from name: System.Private.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 479
	%struct.DSOCacheEntry {
		i64 1947440624, ; hash 0x741395f0, from name: Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 480
	%struct.DSOCacheEntry {
		i64 1953900240, ; hash 0x747626d0, from name: aot-System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 481
	%struct.DSOCacheEntry {
		i64 1954803200, ; hash 0x7483ee00, from name: libaot-System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 482
	%struct.DSOCacheEntry {
		i64 1959705688, ; hash 0x74cebc58, from name: System.IO.Compression.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 483
	%struct.DSOCacheEntry {
		i64 1961541945, ; hash 0x74eac139, from name: aot-System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 484
	%struct.DSOCacheEntry {
		i64 1967114972, ; hash 0x753fcadc, from name: libaot-Xamarin.AndroidX.ViewPager2
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 485
	%struct.DSOCacheEntry {
		i64 1970157169, ; hash 0x756e3671, from name: System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 486
	%struct.DSOCacheEntry {
		i64 1970695807, ; hash 0x75766e7f, from name: libaot-System.Text.Encoding.CodePages
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 487
	%struct.DSOCacheEntry {
		i64 1971430995, ; hash 0x7581a653, from name: Syncfusion.Licensing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 488
	%struct.DSOCacheEntry {
		i64 1971847110, ; hash 0x7587ffc6, from name: aot-System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 489
	%struct.DSOCacheEntry {
		i64 1971892256, ; hash 0x7588b020, from name: libaot-MvvmHelpers
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 490
	%struct.DSOCacheEntry {
		i64 1975492760, ; hash 0x75bfa098, from name: libaot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 491
	%struct.DSOCacheEntry {
		i64 1986007713, ; hash 0x766012a1, from name: aot-Svg.Custom
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 492
	%struct.DSOCacheEntry {
		i64 1987401087, ; hash 0x7675557f, from name: System.Web.HttpUtility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 493
	%struct.DSOCacheEntry {
		i64 1991091852, ; hash 0x76ada68c, from name: libaot-NetTopologySuite
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 494
	%struct.DSOCacheEntry {
		i64 1996837079, ; hash 0x770550d7, from name: libaot-NetTopologySuite.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 495
	%struct.DSOCacheEntry {
		i64 1998620087, ; hash 0x772085b7, from name: libaot-System.Runtime.Serialization.Formatters
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 496
	%struct.DSOCacheEntry {
		i64 1999212485, ; hash 0x77298fc5, from name: aot-NetTopologySuite
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 497
	%struct.DSOCacheEntry {
		i64 2003530324, ; hash 0x776b7254, from name: libaot-SQLitePCLRaw.provider.e_sqlite3.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 498
	%struct.DSOCacheEntry {
		i64 2006486722, ; hash 0x77988ec2, from name: System.Xml.XmlSerializer.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 499
	%struct.DSOCacheEntry {
		i64 2009571110, ; hash 0x77c79f26, from name: System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 500
	%struct.DSOCacheEntry {
		i64 2013972073, ; hash 0x780ac669, from name: Svg.Custom.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 501
	%struct.DSOCacheEntry {
		i64 2015037402, ; hash 0x781b07da, from name: aot-System.Threading.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 502
	%struct.DSOCacheEntry {
		i64 2019465201, ; hash 0x785e97f1, from name: Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 503
	%struct.DSOCacheEntry {
		i64 2020727961, ; hash 0x7871dc99, from name: libaot-DevExpress.Maui.Scheduler
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 504
	%struct.DSOCacheEntry {
		i64 2025743901, ; hash 0x78be661d, from name: Plugin.Connectivity.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 505
	%struct.DSOCacheEntry {
		i64 2032767654, ; hash 0x792992a6, from name: libaot-SQLitePCLRaw.batteries_v2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 506
	%struct.DSOCacheEntry {
		i64 2036643236, ; hash 0x7964b5a4, from name: aot-Xamarin.AndroidX.Navigation.UI.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 507
	%struct.DSOCacheEntry {
		i64 2040762877, ; hash 0x79a391fd, from name: aot-SQLitePCLRaw.lib.e_sqlite3.android
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 508
	%struct.DSOCacheEntry {
		i64 2043472270, ; hash 0x79cce98e, from name: aot-System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 509
	%struct.DSOCacheEntry {
		i64 2044108986, ; hash 0x79d6a0ba, from name: libSystem.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 510
	%struct.DSOCacheEntry {
		i64 2045325910, ; hash 0x79e93256, from name: aot-DevExpress.Android.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 511
	%struct.DSOCacheEntry {
		i64 2045470958, ; hash 0x79eb68ee, from name: System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 512
	%struct.DSOCacheEntry {
		i64 2046194820, ; hash 0x79f67484, from name: libaot-System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 513
	%struct.DSOCacheEntry {
		i64 2049385536, ; hash 0x7a272440, from name: libaot-SQLitePCLRaw.provider.e_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 514
	%struct.DSOCacheEntry {
		i64 2052616548, ; hash 0x7a587164, from name: ExCSS.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 515
	%struct.DSOCacheEntry {
		i64 2054089716, ; hash 0x7a6eebf4, from name: DevExpress.Android.Grid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 516
	%struct.DSOCacheEntry {
		i64 2060722524, ; hash 0x7ad4215c, from name: aot-System.Net.Mail
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 517
	%struct.DSOCacheEntry {
		i64 2065818172, ; hash 0x7b21e23c, from name: libaot-System.Net.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 518
	%struct.DSOCacheEntry {
		i64 2070888862, ; hash 0x7b6f419e, from name: System.Diagnostics.TraceSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 519
	%struct.DSOCacheEntry {
		i64 2071976611, ; hash 0x7b7fdaa3, from name: aot-Microsoft.Extensions.DependencyInjection
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 520
	%struct.DSOCacheEntry {
		i64 2072777569, ; hash 0x7b8c1361, from name: System.IO.Compression.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 521
	%struct.DSOCacheEntry {
		i64 2082659839, ; hash 0x7c22ddff, from name: Microsoft.CSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 522
	%struct.DSOCacheEntry {
		i64 2089068607, ; hash 0x7c84a83f, from name: System.Xml.XPath.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 523
	%struct.DSOCacheEntry {
		i64 2089179231, ; hash 0x7c86585f, from name: aot-DevExpress.Maui.CollectionView
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 524
	%struct.DSOCacheEntry {
		i64 2090495875, ; hash 0x7c9a6f83, from name: SQLitePCLRaw.provider.dynamic_cdecl
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 525
	%struct.DSOCacheEntry {
		i64 2090596640, ; hash 0x7c9bf920, from name: System.Numerics.Vectors
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 526
	%struct.DSOCacheEntry {
		i64 2093801196, ; hash 0x7cccdeec, from name: libaot-System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 527
	%struct.DSOCacheEntry {
		i64 2094311079, ; hash 0x7cd4a6a7, from name: aot-System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 528
	%struct.DSOCacheEntry {
		i64 2097043733, ; hash 0x7cfe5915, from name: Microsoft.Extensions.DependencyInjection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 529
	%struct.DSOCacheEntry {
		i64 2100120213, ; hash 0x7d2d4a95, from name: aot-System.Runtime.Serialization.Formatters.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.61, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 530
	%struct.DSOCacheEntry {
		i64 2101192894, ; hash 0x7d3da8be, from name: libSystem.Security.Cryptography.Native.Android.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.31, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 531
	%struct.DSOCacheEntry {
		i64 2105884241, ; hash 0x7d853e51, from name: libaot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 532
	%struct.DSOCacheEntry {
		i64 2112075135, ; hash 0x7de3b57f, from name: libaot-Syncfusion.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 533
	%struct.DSOCacheEntry {
		i64 2115594265, ; hash 0x7e196819, from name: aot-System.Collections.Concurrent
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.51, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 534
	%struct.DSOCacheEntry {
		i64 2118032177, ; hash 0x7e3e9b31, from name: libaot-DevExpress.Maui.DataGrid
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 535
	%struct.DSOCacheEntry {
		i64 2119570579, ; hash 0x7e561493, from name: libaot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 536
	%struct.DSOCacheEntry {
		i64 2124059643, ; hash 0x7e9a93fb, from name: aot-Syncfusion.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 537
	%struct.DSOCacheEntry {
		i64 2127167465, ; hash 0x7ec9ffe9, from name: System.Console
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 538
	%struct.DSOCacheEntry {
		i64 2136697686, ; hash 0x7f5b6b56, from name: System.Drawing.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 539
	%struct.DSOCacheEntry {
		i64 2139971407, ; hash 0x7f8d5f4f, from name: aot-DevExpress.Android.CollectionView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 540
	%struct.DSOCacheEntry {
		i64 2142473426, ; hash 0x7fb38cd2, from name: System.Collections.Specialized
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 541
	%struct.DSOCacheEntry {
		i64 2149022359, ; hash 0x80177a97, from name: DevExpress.Android.Grid
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 542
	%struct.DSOCacheEntry {
		i64 2149461079, ; hash 0x801e2c57, from name: aot-System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 543
	%struct.DSOCacheEntry {
		i64 2159891885, ; hash 0x80bd55ad, from name: Microsoft.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 544
	%struct.DSOCacheEntry {
		i64 2162156863, ; hash 0x80dfe53f, from name: libaot-Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 545
	%struct.DSOCacheEntry {
		i64 2166135138, ; hash 0x811c9962, from name: libaot-Mapsui
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 546
	%struct.DSOCacheEntry {
		i64 2167011298, ; hash 0x8129f7e2, from name: libaot-Microsoft.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 547
	%struct.DSOCacheEntry {
		i64 2167720450, ; hash 0x8134ca02, from name: aot-System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 548
	%struct.DSOCacheEntry {
		i64 2167987959, ; hash 0x8138def7, from name: aot-Microsoft.Maui.Graphics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 549
	%struct.DSOCacheEntry {
		i64 2170173082, ; hash 0x815a369a, from name: libaot-System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 550
	%struct.DSOCacheEntry {
		i64 2172943413, ; hash 0x81847c35, from name: libaot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 551
	%struct.DSOCacheEntry {
		i64 2173787133, ; hash 0x81915bfd, from name: aot-SkiaSharp.Views.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 552
	%struct.DSOCacheEntry {
		i64 2192057212, ; hash 0x82a8237c, from name: Microsoft.Extensions.Logging.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 553
	%struct.DSOCacheEntry {
		i64 2201231467, ; hash 0x8334206b, from name: System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 554
	%struct.DSOCacheEntry {
		i64 2202703254, ; hash 0x834a9596, from name: libaot-SQLitePCLRaw.batteries_v2
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 555
	%struct.DSOCacheEntry {
		i64 2205363705, ; hash 0x83732df9, from name: SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 556
	%struct.DSOCacheEntry {
		i64 2209796049, ; hash 0x83b6cfd1, from name: DevExpress.Android.Scheduler
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 557
	%struct.DSOCacheEntry {
		i64 2211380618, ; hash 0x83cefd8a, from name: aot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 558
	%struct.DSOCacheEntry {
		i64 2211767232, ; hash 0x83d4e3c0, from name: aot-Microsoft.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 559
	%struct.DSOCacheEntry {
		i64 2212031953, ; hash 0x83d8edd1, from name: libaot-System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 560
	%struct.DSOCacheEntry {
		i64 2215793993, ; hash 0x84125549, from name: libDXSchedulerNative.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 561
	%struct.DSOCacheEntry {
		i64 2222056684, ; hash 0x8471e4ec, from name: System.Threading.Tasks.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 562
	%struct.DSOCacheEntry {
		i64 2223531549, ; hash 0x8488661d, from name: libaot-System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 563
	%struct.DSOCacheEntry {
		i64 2225682495, ; hash 0x84a9383f, from name: Microsoft.Extensions.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 564
	%struct.DSOCacheEntry {
		i64 2230259134, ; hash 0x84ef0dbe, from name: libaot-DevExpress.Maui.CollectionView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 565
	%struct.DSOCacheEntry {
		i64 2238575665, ; hash 0x856df431, from name: SQLitePCLRaw.provider.dynamic_cdecl.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 566
	%struct.DSOCacheEntry {
		i64 2239330212, ; hash 0x857977a4, from name: SQLitePCLRaw.nativelibrary.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 567
	%struct.DSOCacheEntry {
		i64 2241953027, ; hash 0x85a17d03, from name: libaot-Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 568
	%struct.DSOCacheEntry {
		i64 2245181094, ; hash 0x85d2bea6, from name: libaot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 569
	%struct.DSOCacheEntry {
		i64 2248739311, ; hash 0x860909ef, from name: aot-Microsoft.Extensions.Options
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 570
	%struct.DSOCacheEntry {
		i64 2250503296, ; hash 0x8623f480, from name: libaot-Plugin.Connectivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 571
	%struct.DSOCacheEntry {
		i64 2254027380, ; hash 0x8659ba74, from name: libaot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 572
	%struct.DSOCacheEntry {
		i64 2254155312, ; hash 0x865bae30, from name: libaot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 573
	%struct.DSOCacheEntry {
		i64 2262974896, ; hash 0x86e241b0, from name: libaot-System.Runtime.Serialization.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 574
	%struct.DSOCacheEntry {
		i64 2265178066, ; hash 0x8703dfd2, from name: aot-Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 575
	%struct.DSOCacheEntry {
		i64 2266799131, ; hash 0x871c9c1b, from name: Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 576
	%struct.DSOCacheEntry {
		i64 2272382800, ; hash 0x8771cf50, from name: System.Net.Sockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 577
	%struct.DSOCacheEntry {
		i64 2279498149, ; hash 0x87de61a5, from name: libaot-System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 578
	%struct.DSOCacheEntry {
		i64 2282650294, ; hash 0x880e7ab6, from name: aot-Xamarin.AndroidX.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 579
	%struct.DSOCacheEntry {
		i64 2283539775, ; hash 0x881c0d3f, from name: aot-Xamarin.Kotlin.StdLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 580
	%struct.DSOCacheEntry {
		i64 2284562302, ; hash 0x882ba77e, from name: aot-Xamarin.AndroidX.CursorAdapter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 581
	%struct.DSOCacheEntry {
		i64 2295906218, ; hash 0x88d8bfaa, from name: System.Net.Sockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 582
	%struct.DSOCacheEntry {
		i64 2298471582, ; hash 0x88ffe49e, from name: System.Net.Mail
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 583
	%struct.DSOCacheEntry {
		i64 2300115772, ; hash 0x8918fb3c, from name: aot-Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 584
	%struct.DSOCacheEntry {
		i64 2303728310, ; hash 0x89501ab6, from name: aot-System.IO.FileSystem
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 585
	%struct.DSOCacheEntry {
		i64 2312861604, ; hash 0x89db77a4, from name: aot-Syncfusion.Licensing
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 586
	%struct.DSOCacheEntry {
		i64 2320813289, ; hash 0x8a54cce9, from name: libaot-System.Xml.XmlSerializer.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 587
	%struct.DSOCacheEntry {
		i64 2323667891, ; hash 0x8a805bb3, from name: libaot-System.Data.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 588
	%struct.DSOCacheEntry {
		i64 2325740474, ; hash 0x8a9ffbba, from name: aot-Svg.Model.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 589
	%struct.DSOCacheEntry {
		i64 2327830411, ; hash 0x8abfdf8b, from name: System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 590
	%struct.DSOCacheEntry {
		i64 2344356833, ; hash 0x8bbc0be1, from name: libaot-System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 591
	%struct.DSOCacheEntry {
		i64 2349677068, ; hash 0x8c0d3a0c, from name: aot-System.Diagnostics.Process.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 592
	%struct.DSOCacheEntry {
		i64 2350046653, ; hash 0x8c12ddbd, from name: Xamarin.AndroidX.SavedState.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 593
	%struct.DSOCacheEntry {
		i64 2353062107, ; hash 0x8c40e0db, from name: System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 594
	%struct.DSOCacheEntry {
		i64 2354730003, ; hash 0x8c5a5413, from name: Syncfusion.Licensing
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 595
	%struct.DSOCacheEntry {
		i64 2356361631, ; hash 0x8c73399f, from name: libaot-System.Threading.Tasks.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 596
	%struct.DSOCacheEntry {
		i64 2362663635, ; hash 0x8cd362d3, from name: libaot-netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 597
	%struct.DSOCacheEntry {
		i64 2364201794, ; hash 0x8ceadb42, from name: SkiaSharp.Views.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 598
	%struct.DSOCacheEntry {
		i64 2364304572, ; hash 0x8cec6cbc, from name: libaot-SkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 599
	%struct.DSOCacheEntry {
		i64 2371007202, ; hash 0x8d52b2e2, from name: Microsoft.Extensions.Configuration
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 600
	%struct.DSOCacheEntry {
		i64 2380784797, ; hash 0x8de7e49d, from name: Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 601
	%struct.DSOCacheEntry {
		i64 2384197275, ; hash 0x8e1bf69b, from name: libaot-System.Net.ServicePoint.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 602
	%struct.DSOCacheEntry {
		i64 2386564208, ; hash 0x8e401470, from name: libaot-System.ComponentModel.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 603
	%struct.DSOCacheEntry {
		i64 2389733863, ; hash 0x8e7071e7, from name: aot-System.Private.Xml
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 604
	%struct.DSOCacheEntry {
		i64 2396723635, ; hash 0x8edb19b3, from name: aot-Microsoft.Maui.Controls.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 605
	%struct.DSOCacheEntry {
		i64 2398397622, ; hash 0x8ef4a4b6, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 606
	%struct.DSOCacheEntry {
		i64 2398711105, ; hash 0x8ef96d41, from name: aot-DevExpress.Android.Editors
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 607
	%struct.DSOCacheEntry {
		i64 2401362991, ; hash 0x8f21e42f, from name: libaot-Topten.RichTextKit.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.58, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 608
	%struct.DSOCacheEntry {
		i64 2401565422, ; hash 0x8f24faee, from name: System.Web.HttpUtility
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 609
	%struct.DSOCacheEntry {
		i64 2406593473, ; hash 0x8f71b3c1, from name: libaot-System.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 610
	%struct.DSOCacheEntry {
		i64 2406870559, ; hash 0x8f75ee1f, from name: aot-System.Net.NameResolution
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 611
	%struct.DSOCacheEntry {
		i64 2408375621, ; hash 0x8f8ce545, from name: System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 612
	%struct.DSOCacheEntry {
		i64 2409002031, ; hash 0x8f96742f, from name: libaot-DevExpress.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 613
	%struct.DSOCacheEntry {
		i64 2410693946, ; hash 0x8fb0453a, from name: libaot-DevExpress.Android.Navigation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 614
	%struct.DSOCacheEntry {
		i64 2426026431, ; hash 0x909a39bf, from name: System.IO.Compression.Brotli.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 615
	%struct.DSOCacheEntry {
		i64 2427544092, ; hash 0x90b1621c, from name: libaot-SkiaSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 616
	%struct.DSOCacheEntry {
		i64 2430242750, ; hash 0x90da8fbe, from name: aot-Xamarin.AndroidX.CursorAdapter
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 617
	%struct.DSOCacheEntry {
		i64 2432891663, ; hash 0x9102fb0f, from name: aot-System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 618
	%struct.DSOCacheEntry {
		i64 2437406362, ; hash 0x9147de9a, from name: libaot-System.Net.Mail
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 619
	%struct.DSOCacheEntry {
		i64 2438431458, ; hash 0x915782e2, from name: libaot-Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 620
	%struct.DSOCacheEntry {
		i64 2440330878, ; hash 0x91747e7e, from name: libaot-DevExpress.Maui.Editors
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 621
	%struct.DSOCacheEntry {
		i64 2448201744, ; hash 0x91ec9810, from name: System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 622
	%struct.DSOCacheEntry {
		i64 2448937778, ; hash 0x91f7d332, from name: libaot-System.Diagnostics.DiagnosticSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 623
	%struct.DSOCacheEntry {
		i64 2452809944, ; hash 0x9232e8d8, from name: aot-System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 624
	%struct.DSOCacheEntry {
		i64 2453033447, ; hash 0x923651e7, from name: aot-Microsoft.Maui.Essentials.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 625
	%struct.DSOCacheEntry {
		i64 2455050170, ; hash 0x925517ba, from name: aot-System.Transactions.Local.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 626
	%struct.DSOCacheEntry {
		i64 2458563039, ; hash 0x928ab1df, from name: System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 627
	%struct.DSOCacheEntry {
		i64 2463331002, ; hash 0x92d372ba, from name: Microsoft.Extensions.Configuration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 628
	%struct.DSOCacheEntry {
		i64 2473124778, ; hash 0x9368e3aa, from name: System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 629
	%struct.DSOCacheEntry {
		i64 2480646305, ; hash 0x93dba8a1, from name: Microsoft.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 630
	%struct.DSOCacheEntry {
		i64 2484371297, ; hash 0x94147f61, from name: System.Net.ServicePoint
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 631
	%struct.DSOCacheEntry {
		i64 2488050476, ; hash 0x944ca32c, from name: aot-System.ComponentModel.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 632
	%struct.DSOCacheEntry {
		i64 2496112763, ; hash 0x94c7a87b, from name: libmonosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 633
	%struct.DSOCacheEntry {
		i64 2497889492, ; hash 0x94e2c4d4, from name: aot-System.Net.WebProxy.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 634
	%struct.DSOCacheEntry {
		i64 2504646341, ; hash 0x9549dec5, from name: aot-SkiaSharp.Views.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 635
	%struct.DSOCacheEntry {
		i64 2512103881, ; hash 0x95bba9c9, from name: libaot-NetTopologySuite.Features.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 636
	%struct.DSOCacheEntry {
		i64 2513131084, ; hash 0x95cb564c, from name: aot-System.Threading.Tasks.Parallel
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 637
	%struct.DSOCacheEntry {
		i64 2515941137, ; hash 0x95f63711, from name: libaot-System.Numerics.Vectors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 638
	%struct.DSOCacheEntry {
		i64 2517881709, ; hash 0x9613d36d, from name: libaot-DevExpress.Android.Grid
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 639
	%struct.DSOCacheEntry {
		i64 2519378085, ; hash 0x962aa8a5, from name: libaot-System.Web.HttpUtility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 640
	%struct.DSOCacheEntry {
		i64 2521915375, ; hash 0x96515fef, from name: SkiaSharp.Views.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 641
	%struct.DSOCacheEntry {
		i64 2524041631, ; hash 0x9671d19f, from name: aot-MySqlConnector.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 642
	%struct.DSOCacheEntry {
		i64 2526849445, ; hash 0x969ca9a5, from name: libaot-DevExpress.Maui.Editors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 643
	%struct.DSOCacheEntry {
		i64 2530698391, ; hash 0x96d76497, from name: libaot-HarfBuzzSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 644
	%struct.DSOCacheEntry {
		i64 2531051056, ; hash 0x96dcc630, from name: libaot-System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 645
	%struct.DSOCacheEntry {
		i64 2532628430, ; hash 0x96f4d7ce, from name: libaot-System.IO.FileSystem
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 646
	%struct.DSOCacheEntry {
		i64 2536927006, ; hash 0x97366f1e, from name: aot-CommunityToolkit.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 647
	%struct.DSOCacheEntry {
		i64 2547110758, ; hash 0x97d1d366, from name: libaot-Microsoft.Extensions.Configuration
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 648
	%struct.DSOCacheEntry {
		i64 2550837476, ; hash 0x980ab0e4, from name: DXChartsNative
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 649
	%struct.DSOCacheEntry {
		i64 2550858588, ; hash 0x980b035c, from name: libaot-System.Net.NameResolution.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 650
	%struct.DSOCacheEntry {
		i64 2552580572, ; hash 0x982549dc, from name: libaot-System.Diagnostics.DiagnosticSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 651
	%struct.DSOCacheEntry {
		i64 2560787540, ; hash 0x98a28454, from name: aot-SkiaSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 652
	%struct.DSOCacheEntry {
		i64 2562349572, ; hash 0x98ba5a04, from name: Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 653
	%struct.DSOCacheEntry {
		i64 2567988214, ; hash 0x991063f6, from name: libaot-DevExpress.Data.v23.1
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 654
	%struct.DSOCacheEntry {
		i64 2570120770, ; hash 0x9930ee42, from name: System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 655
	%struct.DSOCacheEntry {
		i64 2574608091, ; hash 0x997566db, from name: libaot-BruTile
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 656
	%struct.DSOCacheEntry {
		i64 2577414832, ; hash 0x99a03ab0, from name: Mapsui.Nts
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 657
	%struct.DSOCacheEntry {
		i64 2577635134, ; hash 0x99a3973e, from name: libaot-SQLitePCLRaw.lib.e_sqlite3.android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 658
	%struct.DSOCacheEntry {
		i64 2578174356, ; hash 0x99abd194, from name: System.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.97, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 659
	%struct.DSOCacheEntry {
		i64 2578539745, ; hash 0x99b164e1, from name: aot-SQLitePCLRaw.provider.dynamic_cdecl
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.25, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 660
	%struct.DSOCacheEntry {
		i64 2579183305, ; hash 0x99bb36c9, from name: aot-System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 661
	%struct.DSOCacheEntry {
		i64 2580278470, ; hash 0x99cbecc6, from name: libaot-System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 662
	%struct.DSOCacheEntry {
		i64 2583342705, ; hash 0x99faae71, from name: System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 663
	%struct.DSOCacheEntry {
		i64 2584814180, ; hash 0x9a112264, from name: libaot-System.Text.RegularExpressions
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 664
	%struct.DSOCacheEntry {
		i64 2586467844, ; hash 0x9a2a5e04, from name: aot-System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 665
	%struct.DSOCacheEntry {
		i64 2586712903, ; hash 0x9a2e1b47, from name: aot-SQLitePCLRaw.lib.e_sqlite3.android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 666
	%struct.DSOCacheEntry {
		i64 2587849100, ; hash 0x9a3f718c, from name: libaot-SQLitePCLRaw.nativelibrary
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 667
	%struct.DSOCacheEntry {
		i64 2596751594, ; hash 0x9ac748ea, from name: aot-System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 668
	%struct.DSOCacheEntry {
		i64 2597675628, ; hash 0x9ad5626c, from name: aot-SkiaSharp.HarfBuzz.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 669
	%struct.DSOCacheEntry {
		i64 2597700034, ; hash 0x9ad5c1c2, from name: libaot-System.Xml.XPath
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 670
	%struct.DSOCacheEntry {
		i64 2602315372, ; hash 0x9b1c2e6c, from name: libaot-MySqlConnector
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 671
	%struct.DSOCacheEntry {
		i64 2602792014, ; hash 0x9b23744e, from name: aot-Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 672
	%struct.DSOCacheEntry {
		i64 2605712449, ; hash 0x9b500441, from name: Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 673
	%struct.DSOCacheEntry {
		i64 2609324236, ; hash 0x9b8720cc, from name: Svg.Custom
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 674
	%struct.DSOCacheEntry {
		i64 2620018659, ; hash 0x9c2a4fe3, from name: System.Private.Uri.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 675
	%struct.DSOCacheEntry {
		i64 2630231106, ; hash 0x9cc62442, from name: System.Net.ServicePoint.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 676
	%struct.DSOCacheEntry {
		i64 2631223872, ; hash 0x9cd54a40, from name: libaot-ExCSS.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 677
	%struct.DSOCacheEntry {
		i64 2639209874, ; hash 0x9d4f2592, from name: System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 678
	%struct.DSOCacheEntry {
		i64 2639724514, ; hash 0x9d56ffe2, from name: libaot-Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 679
	%struct.DSOCacheEntry {
		i64 2646943518, ; hash 0x9dc5271e, from name: libaot-System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 680
	%struct.DSOCacheEntry {
		i64 2658598962, ; hash 0x9e770032, from name: monosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 681
	%struct.DSOCacheEntry {
		i64 2660798663, ; hash 0x9e9890c7, from name: libaot-System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 682
	%struct.DSOCacheEntry {
		i64 2661581996, ; hash 0x9ea484ac, from name: DevExpress.Maui.Scheduler.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 683
	%struct.DSOCacheEntry {
		i64 2663219906, ; hash 0x9ebd82c2, from name: Java.Interop.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 684
	%struct.DSOCacheEntry {
		i64 2663813800, ; hash 0x9ec692a8, from name: aot-Mapsui.Rendering.Skia
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 685
	%struct.DSOCacheEntry {
		i64 2665622720, ; hash 0x9ee22cc0, from name: System.Drawing.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 686
	%struct.DSOCacheEntry {
		i64 2670340056, ; hash 0x9f2a27d8, from name: aot-SQLite-net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 687
	%struct.DSOCacheEntry {
		i64 2678767976, ; hash 0x9faac168, from name: libaot-Microsoft.Extensions.Logging.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 688
	%struct.DSOCacheEntry {
		i64 2688478343, ; hash 0xa03eec87, from name: aot-SkiaSharp.Views.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 689
	%struct.DSOCacheEntry {
		i64 2692189915, ; hash 0xa0778edb, from name: libaot-Xamarin.Google.Android.Material.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 690
	%struct.DSOCacheEntry {
		i64 2692951224, ; hash 0xa0832cb8, from name: libaot-Xamarin.AndroidX.Navigation.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 691
	%struct.DSOCacheEntry {
		i64 2705630008, ; hash 0xa144a338, from name: aot-System.Drawing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 692
	%struct.DSOCacheEntry {
		i64 2708530770, ; hash 0xa170e652, from name: libaot-System.Text.Json.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 693
	%struct.DSOCacheEntry {
		i64 2709717763, ; hash 0xa1830303, from name: aot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 694
	%struct.DSOCacheEntry {
		i64 2713623161, ; hash 0xa1be9a79, from name: aot-Xamarin.Google.Android.Material
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.116, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 695
	%struct.DSOCacheEntry {
		i64 2714615914, ; hash 0xa1cdc06a, from name: libaot-DevExpress.Maui.Charts.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 696
	%struct.DSOCacheEntry {
		i64 2720621202, ; hash 0xa2296292, from name: aot-Mapsui.UI.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 697
	%struct.DSOCacheEntry {
		i64 2722617920, ; hash 0xa247da40, from name: aot-Microsoft.Extensions.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 698
	%struct.DSOCacheEntry {
		i64 2727849096, ; hash 0xa297ac88, from name: aot-System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 699
	%struct.DSOCacheEntry {
		i64 2732626843, ; hash 0xa2e0939b, from name: Xamarin.AndroidX.Activity
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 700
	%struct.DSOCacheEntry {
		i64 2732977029, ; hash 0xa2e5eb85, from name: libaot-Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 701
	%struct.DSOCacheEntry {
		i64 2735172069, ; hash 0xa30769e5, from name: System.Threading.Channels
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 702
	%struct.DSOCacheEntry {
		i64 2735279357, ; hash 0xa3090cfd, from name: Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 703
	%struct.DSOCacheEntry {
		i64 2743508320, ; hash 0xa3869d60, from name: aot-Microsoft.Maui.Controls.Xaml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 704
	%struct.DSOCacheEntry {
		i64 2750699463, ; hash 0xa3f457c7, from name: libaot-DevExpress.Maui.DataGrid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.149, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 705
	%struct.DSOCacheEntry {
		i64 2756708150, ; hash 0xa4500736, from name: aot-Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 706
	%struct.DSOCacheEntry {
		i64 2756874198, ; hash 0xa4528fd6, from name: NetTopologySuite.IO.GeoJSON4STJ
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.56, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 707
	%struct.DSOCacheEntry {
		i64 2758225723, ; hash 0xa4672f3b, from name: Microsoft.Maui.Controls.Xaml
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.124, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 708
	%struct.DSOCacheEntry {
		i64 2760088126, ; hash 0xa4839a3e, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 709
	%struct.DSOCacheEntry {
		i64 2762686903, ; hash 0xa4ab41b7, from name: libaot-DevExpress.Android.Editors
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 710
	%struct.DSOCacheEntry {
		i64 2767247566, ; hash 0xa4f0d8ce, from name: libaot-System.Data.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.125, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 711
	%struct.DSOCacheEntry {
		i64 2771312189, ; hash 0xa52ede3d, from name: aot-Xamarin.AndroidX.CoordinatorLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 712
	%struct.DSOCacheEntry {
		i64 2781734183, ; hash 0xa5cde527, from name: aot-Svg.Skia.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 713
	%struct.DSOCacheEntry {
		i64 2788267156, ; hash 0xa6319494, from name: libaot-System.Threading.Channels.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 714
	%struct.DSOCacheEntry {
		i64 2792704471, ; hash 0xa67549d7, from name: aot-HarfBuzzSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 715
	%struct.DSOCacheEntry {
		i64 2800604037, ; hash 0xa6edd385, from name: libaot-System.IO.FileSystem.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 716
	%struct.DSOCacheEntry {
		i64 2801831435, ; hash 0xa7008e0b, from name: Microsoft.Maui.Graphics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 717
	%struct.DSOCacheEntry {
		i64 2803929169, ; hash 0xa7209051, from name: Xamarin.AndroidX.CustomView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.42, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 718
	%struct.DSOCacheEntry {
		i64 2811243932, ; hash 0xa7902d9c, from name: libaot-Microsoft.Extensions.Options
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 719
	%struct.DSOCacheEntry {
		i64 2811640309, ; hash 0xa79639f5, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 720
	%struct.DSOCacheEntry {
		i64 2816977087, ; hash 0xa7e7a8bf, from name: libaot-Xamarin.AndroidX.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.92, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 721
	%struct.DSOCacheEntry {
		i64 2820403756, ; hash 0xa81bf22c, from name: Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 722
	%struct.DSOCacheEntry {
		i64 2825784484, ; hash 0xa86e0ca4, from name: aot-System.Net.WebHeaderCollection
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 723
	%struct.DSOCacheEntry {
		i64 2829863685, ; hash 0xa8ac4b05, from name: libaot-System.Threading.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 724
	%struct.DSOCacheEntry {
		i64 2831113488, ; hash 0xa8bf5d10, from name: libaot-System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 725
	%struct.DSOCacheEntry {
		i64 2835876893, ; hash 0xa9080c1d, from name: DevExpress.Data.v23.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 726
	%struct.DSOCacheEntry {
		i64 2840175643, ; hash 0xa949a41b, from name: aot-Microsoft.Extensions.Logging.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__DSOCacheEntry_name.71, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 727
	%struct.DSOCacheEntry {
		i64 2843443372, ; hash 0xa97b80ac, from name: aot-System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 728
	%struct.DSOCacheEntry {
		i64 2853208004, ; hash 0xaa107fc4, from name: Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 729
	%struct.DSOCacheEntry {
		i64 2853773753, ; hash 0xaa1921b9, from name: libaot-System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 730
	%struct.DSOCacheEntry {
		i64 2861189240, ; hash 0xaa8a4878, from name: Microsoft.Maui.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 731
	%struct.DSOCacheEntry {
		i64 2862676104, ; hash 0xaaa0f888, from name: e_sqlite3.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 732
	%struct.DSOCacheEntry {
		i64 2866113648, ; hash 0xaad56c70, from name: libaot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 733
	%struct.DSOCacheEntry {
		i64 2866400460, ; hash 0xaad9cccc, from name: libaot-SkiaSharp.Views.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 734
	%struct.DSOCacheEntry {
		i64 2868488919, ; hash 0xaaf9aad7, from name: CommunityToolkit.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 735
	%struct.DSOCacheEntry {
		i64 2882500561, ; hash 0xabcf77d1, from name: System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 736
	%struct.DSOCacheEntry {
		i64 2885591781, ; hash 0xabfea2e5, from name: DXSchedulerNative.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 737
	%struct.DSOCacheEntry {
		i64 2886400886, ; hash 0xac0afb76, from name: aot-System.Threading.Channels.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 738
	%struct.DSOCacheEntry {
		i64 2894204443, ; hash 0xac820e1b, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 739
	%struct.DSOCacheEntry {
		i64 2895201896, ; hash 0xac914668, from name: libaot-CommunityToolkit.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 740
	%struct.DSOCacheEntry {
		i64 2898704984, ; hash 0xacc6ba58, from name: Microsoft.Win32.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 741
	%struct.DSOCacheEntry {
		i64 2905256141, ; hash 0xad2ab0cd, from name: System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 742
	%struct.DSOCacheEntry {
		i64 2907369062, ; hash 0xad4aee66, from name: libaot-Xamarin.AndroidX.CursorAdapter
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.153, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 743
	%struct.DSOCacheEntry {
		i64 2909108768, ; hash 0xad657a20, from name: DevExpress.Maui.Charts
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 744
	%struct.DSOCacheEntry {
		i64 2909740682, ; hash 0xad6f1e8a, from name: System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 745
	%struct.DSOCacheEntry {
		i64 2911927123, ; hash 0xad907b53, from name: libaot-System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 746
	%struct.DSOCacheEntry {
		i64 2912489636, ; hash 0xad9910a4, from name: SkiaSharp.Views.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 747
	%struct.DSOCacheEntry {
		i64 2932769875, ; hash 0xaece8453, from name: libaot-Xamarin.KotlinX.Coroutines.Core.Jvm
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 748
	%struct.DSOCacheEntry {
		i64 2938740861, ; hash 0xaf29a07d, from name: libSystem.IO.Compression.Native.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 749
	%struct.DSOCacheEntry {
		i64 2939899433, ; hash 0xaf3b4e29, from name: System.ComponentModel.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 750
	%struct.DSOCacheEntry {
		i64 2942668026, ; hash 0xaf658cfa, from name: aot-Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 751
	%struct.DSOCacheEntry {
		i64 2945162751, ; hash 0xaf8b9dff, from name: System.Collections.NonGeneric.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 752
	%struct.DSOCacheEntry {
		i64 2950894636, ; hash 0xafe3142c, from name: libSystem.IO.Compression.Native
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.184, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 753
	%struct.DSOCacheEntry {
		i64 2951189309, ; hash 0xafe7933d, from name: aot-Microsoft.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 754
	%struct.DSOCacheEntry {
		i64 2954802633, ; hash 0xb01eb5c9, from name: libaot-System.Transactions.Local
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 755
	%struct.DSOCacheEntry {
		i64 2955414144, ; hash 0xb0280a80, from name: aot-System.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 756
	%struct.DSOCacheEntry {
		i64 2963761673, ; hash 0xb0a76a09, from name: ShimSkiaSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 757
	%struct.DSOCacheEntry {
		i64 2965141360, ; hash 0xb0bc7770, from name: aot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 758
	%struct.DSOCacheEntry {
		i64 2967148803, ; hash 0xb0db1903, from name: libaot-BruTile.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 759
	%struct.DSOCacheEntry {
		i64 2967395179, ; hash 0xb0dedb6b, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 760
	%struct.DSOCacheEntry {
		i64 2968962103, ; hash 0xb0f6c437, from name: Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 761
	%struct.DSOCacheEntry {
		i64 2970810881, ; hash 0xb112fa01, from name: DevExpress.Android.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 762
	%struct.DSOCacheEntry {
		i64 2974011576, ; hash 0xb143d0b8, from name: aot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 763
	%struct.DSOCacheEntry {
		i64 2978675010, ; hash 0xb18af942, from name: Xamarin.AndroidX.DrawerLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 764
	%struct.DSOCacheEntry {
		i64 2979843530, ; hash 0xb19ccdca, from name: aot-SkiaSharp.Views.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 765
	%struct.DSOCacheEntry {
		i64 2980629364, ; hash 0xb1a8cb74, from name: libaot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 766
	%struct.DSOCacheEntry {
		i64 2982794884, ; hash 0xb1c9d684, from name: libaot-Microsoft.Extensions.Configuration.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 767
	%struct.DSOCacheEntry {
		i64 2985735645, ; hash 0xb1f6b5dd, from name: aot-System.Xml.ReaderWriter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 768
	%struct.DSOCacheEntry {
		i64 2990507962, ; hash 0xb23f87ba, from name: aot-Mapsui.UI.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 769
	%struct.DSOCacheEntry {
		i64 2994111342, ; hash 0xb276836e, from name: aot-System.Xml.XDocument.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 770
	%struct.DSOCacheEntry {
		i64 3001057152, ; hash 0xb2e07f80, from name: aot-System.Threading.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 771
	%struct.DSOCacheEntry {
		i64 3002033339, ; hash 0xb2ef64bb, from name: aot-Microsoft.CSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.43, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 772
	%struct.DSOCacheEntry {
		i64 3006052287, ; hash 0xb32cb7bf, from name: SkiaSharp.Views.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.122, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 773
	%struct.DSOCacheEntry {
		i64 3010407799, ; hash 0xb36f2d77, from name: DevExpress.Android.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.66, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 774
	%struct.DSOCacheEntry {
		i64 3011705742, ; hash 0xb382fb8e, from name: libaot-Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 775
	%struct.DSOCacheEntry {
		i64 3011708098, ; hash 0xb38304c2, from name: aot-System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 776
	%struct.DSOCacheEntry {
		i64 3012482783, ; hash 0xb38ed6df, from name: aot-MySqlConnector
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.114, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 777
	%struct.DSOCacheEntry {
		i64 3024529297, ; hash 0xb446a791, from name: aot-System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 778
	%struct.DSOCacheEntry {
		i64 3025818980, ; hash 0xb45a5564, from name: aot-Xamarin.AndroidX.AppCompat.AppCompatResources
		i8 0, ; ignore
		i8* getelementptr inbounds ([60 x i8], [60 x i8]* @__DSOCacheEntry_name.89, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 779
	%struct.DSOCacheEntry {
		i64 3033282009, ; hash 0xb4cc35d9, from name: aot-Plugin.Connectivity.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 780
	%struct.DSOCacheEntry {
		i64 3039880711, ; hash 0xb530e607, from name: aot-System.Net.Security.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 781
	%struct.DSOCacheEntry {
		i64 3040261996, ; hash 0xb536b76c, from name: aot-Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.7, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 782
	%struct.DSOCacheEntry {
		i64 3040983544, ; hash 0xb541b9f8, from name: libSkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 783
	%struct.DSOCacheEntry {
		i64 3044365891, ; hash 0xb5755643, from name: aot-System.Numerics.Vectors
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.11, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 784
	%struct.DSOCacheEntry {
		i64 3050332087, ; hash 0xb5d05fb7, from name: libSkiaSharp.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 785
	%struct.DSOCacheEntry {
		i64 3051226419, ; hash 0xb5de0533, from name: System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 786
	%struct.DSOCacheEntry {
		i64 3055345804, ; hash 0xb61ce08c, from name: libaot-System.Threading.Tasks.Parallel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.136, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 787
	%struct.DSOCacheEntry {
		i64 3056290812, ; hash 0xb62b4bfc, from name: aot-System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 788
	%struct.DSOCacheEntry {
		i64 3057625584, ; hash 0xb63fa9f0, from name: Xamarin.AndroidX.Navigation.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 789
	%struct.DSOCacheEntry {
		i64 3057718947, ; hash 0xb64116a3, from name: aot-System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 790
	%struct.DSOCacheEntry {
		i64 3057765123, ; hash 0xb641cb03, from name: aot-System.Diagnostics.Process
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 791
	%struct.DSOCacheEntry {
		i64 3058175140, ; hash 0xb6480ca4, from name: System.Text.RegularExpressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.53, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 792
	%struct.DSOCacheEntry {
		i64 3059793426, ; hash 0xb660be12, from name: System.ComponentModel.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 793
	%struct.DSOCacheEntry {
		i64 3063564226, ; hash 0xb69a47c2, from name: libaot-System.Drawing.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 794
	%struct.DSOCacheEntry {
		i64 3073434459, ; hash 0xb730e35b, from name: aot-System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 795
	%struct.DSOCacheEntry {
		i64 3074736396, ; hash 0xb744c10c, from name: libaot-System.Runtime.CompilerServices.Unsafe.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 796
	%struct.DSOCacheEntry {
		i64 3075834255, ; hash 0xb755818f, from name: System.Threading.Tasks
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.166, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 797
	%struct.DSOCacheEntry {
		i64 3079573064, ; hash 0xb78e8e48, from name: aot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 798
	%struct.DSOCacheEntry {
		i64 3083478269, ; hash 0xb7ca24fd, from name: libaot-HarfBuzzSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 799
	%struct.DSOCacheEntry {
		i64 3089352571, ; hash 0xb823c77b, from name: aot-Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 800
	%struct.DSOCacheEntry {
		i64 3095590497, ; hash 0xb882f661, from name: aot-Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 801
	%struct.DSOCacheEntry {
		i64 3097746105, ; hash 0xb8a3dab9, from name: System.Console.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.182, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 802
	%struct.DSOCacheEntry {
		i64 3103429300, ; hash 0xb8fa92b4, from name: libaot-Xamarin.AndroidX.AppCompat.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.72, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 803
	%struct.DSOCacheEntry {
		i64 3103600923, ; hash 0xb8fd311b, from name: System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 804
	%struct.DSOCacheEntry {
		i64 3114699237, ; hash 0xb9a689e5, from name: aot-ShimSkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 805
	%struct.DSOCacheEntry {
		i64 3117120193, ; hash 0xb9cb7ac1, from name: aot-Mapsui.Nts.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 806
	%struct.DSOCacheEntry {
		i64 3118795923, ; hash 0xb9e50c93, from name: aot-Xamarin.AndroidX.CoordinatorLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.55, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 807
	%struct.DSOCacheEntry {
		i64 3119114540, ; hash 0xb9e9e92c, from name: aot-Microsoft.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.79, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 808
	%struct.DSOCacheEntry {
		i64 3119652235, ; hash 0xb9f21d8b, from name: Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 809
	%struct.DSOCacheEntry {
		i64 3122244214, ; hash 0xba19aa76, from name: aot-System.Diagnostics.TraceSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 810
	%struct.DSOCacheEntry {
		i64 3125288452, ; hash 0xba481e04, from name: NetTopologySuite.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.167, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 811
	%struct.DSOCacheEntry {
		i64 3126917188, ; hash 0xba60f844, from name: System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 812
	%struct.DSOCacheEntry {
		i64 3127835167, ; hash 0xba6efa1f, from name: System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 813
	%struct.DSOCacheEntry {
		i64 3129695436, ; hash 0xba8b5ccc, from name: libaot-System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 814
	%struct.DSOCacheEntry {
		i64 3137274302, ; hash 0xbaff01be, from name: aot-SQLitePCLRaw.core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 815
	%struct.DSOCacheEntry {
		i64 3137986923, ; hash 0xbb09e16b, from name: libaot-System.Net.Requests
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.46, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 816
	%struct.DSOCacheEntry {
		i64 3144422580, ; hash 0xbb6c14b4, from name: aot-DevExpress.Android.Navigation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.22, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 817
	%struct.DSOCacheEntry {
		i64 3147228406, ; hash 0xbb96e4f6, from name: Syncfusion.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 818
	%struct.DSOCacheEntry {
		i64 3152424524, ; hash 0xbbe62e4c, from name: libaot-SkiaSharp.Views.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.94, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 819
	%struct.DSOCacheEntry {
		i64 3162192123, ; hash 0xbc7b38fb, from name: aot-SQLitePCLRaw.batteries_v2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.104, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 820
	%struct.DSOCacheEntry {
		i64 3172961898, ; hash 0xbd1f8e6a, from name: SQLitePCLRaw.lib.e_sqlite3.android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.177, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 821
	%struct.DSOCacheEntry {
		i64 3175888932, ; hash 0xbd4c3824, from name: libaot-Plugin.Connectivity.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 822
	%struct.DSOCacheEntry {
		i64 3177211174, ; hash 0xbd606526, from name: libaot-Xamarin.AndroidX.Lifecycle.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 823
	%struct.DSOCacheEntry {
		i64 3188889127, ; hash 0xbe129627, from name: aot-System.Runtime.Numerics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 824
	%struct.DSOCacheEntry {
		i64 3194979304, ; hash 0xbe6f83e8, from name: aot-Xamarin.AndroidX.ViewPager
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 825
	%struct.DSOCacheEntry {
		i64 3197061657, ; hash 0xbe8f4a19, from name: aot-System.IO.Pipes
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 826
	%struct.DSOCacheEntry {
		i64 3198089322, ; hash 0xbe9ef86a, from name: aot-System.Xml.XmlSerializer
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 827
	%struct.DSOCacheEntry {
		i64 3199225864, ; hash 0xbeb05008, from name: aot-Microsoft.Win32.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 828
	%struct.DSOCacheEntry {
		i64 3212987759, ; hash 0xbf824d6f, from name: aot-System.Net.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 829
	%struct.DSOCacheEntry {
		i64 3216481925, ; hash 0xbfb79e85, from name: libaot-System.Diagnostics.Process
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 830
	%struct.DSOCacheEntry {
		i64 3216491085, ; hash 0xbfb7c24d, from name: aot-Microsoft.Extensions.Configuration
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.180, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 831
	%struct.DSOCacheEntry {
		i64 3220365878, ; hash 0xbff2e236, from name: System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 832
	%struct.DSOCacheEntry {
		i64 3222235573, ; hash 0xc00f69b5, from name: libaot-System.ComponentModel.Annotations.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 833
	%struct.DSOCacheEntry {
		i64 3234506695, ; hash 0xc0caa7c7, from name: aot-System.Net.Sockets
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 834
	%struct.DSOCacheEntry {
		i64 3240981972, ; hash 0xc12d75d4, from name: aot-System.Threading
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 835
	%struct.DSOCacheEntry {
		i64 3243272429, ; hash 0xc15068ed, from name: aot-System.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 836
	%struct.DSOCacheEntry {
		i64 3249091729, ; hash 0xc1a93491, from name: libaot-Syncfusion.Licensing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.39, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 837
	%struct.DSOCacheEntry {
		i64 3250270957, ; hash 0xc1bb32ed, from name: HarfBuzzSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 838
	%struct.DSOCacheEntry {
		i64 3257037256, ; hash 0xc22271c8, from name: aot-DevExpress.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 839
	%struct.DSOCacheEntry {
		i64 3257332390, ; hash 0xc226f2a6, from name: MvvmHelpers
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 840
	%struct.DSOCacheEntry {
		i64 3258312781, ; hash 0xc235e84d, from name: Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 841
	%struct.DSOCacheEntry {
		i64 3259652464, ; hash 0xc24a5970, from name: libaot-System.Private.Xml.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.174, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 842
	%struct.DSOCacheEntry {
		i64 3262906526, ; hash 0xc27c009e, from name: aot-DevExpress.Android.Editors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 843
	%struct.DSOCacheEntry {
		i64 3264918285, ; hash 0xc29ab30d, from name: libaot-System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 844
	%struct.DSOCacheEntry {
		i64 3268042121, ; hash 0xc2ca5d89, from name: aot-Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 845
	%struct.DSOCacheEntry {
		i64 3271438092, ; hash 0xc2fe2f0c, from name: libaot-mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 846
	%struct.DSOCacheEntry {
		i64 3274854694, ; hash 0xc3325126, from name: libaot-System.Formats.Asn1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 847
	%struct.DSOCacheEntry {
		i64 3275660490, ; hash 0xc33e9cca, from name: System.Net.Http.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 848
	%struct.DSOCacheEntry {
		i64 3278552754, ; hash 0xc36abeb2, from name: Mapsui
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 849
	%struct.DSOCacheEntry {
		i64 3283121851, ; hash 0xc3b076bb, from name: libaot-SkiaSharp.HarfBuzz
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 850
	%struct.DSOCacheEntry {
		i64 3294137703, ; hash 0xc4588d67, from name: libaot-System.Linq.Expressions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.135, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 851
	%struct.DSOCacheEntry {
		i64 3310546353, ; hash 0xc552edb1, from name: aot-DevExpress.Data.v23.1.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.10, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 852
	%struct.DSOCacheEntry {
		i64 3311373004, ; hash 0xc55f8acc, from name: libaot-Microsoft.Win32.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 853
	%struct.DSOCacheEntry {
		i64 3319187962, ; hash 0xc5d6c9fa, from name: libaot-MvvmHelpers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 854
	%struct.DSOCacheEntry {
		i64 3320200080, ; hash 0xc5e63b90, from name: System.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 855
	%struct.DSOCacheEntry {
		i64 3321816931, ; hash 0xc5fee763, from name: libaot-Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 856
	%struct.DSOCacheEntry {
		i64 3326599481, ; hash 0xc647e139, from name: aot-SQLitePCLRaw.provider.e_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 857
	%struct.DSOCacheEntry {
		i64 3326770050, ; hash 0xc64a7b82, from name: aot-System.IO.FileSystem.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.108, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 858
	%struct.DSOCacheEntry {
		i64 3328143827, ; hash 0xc65f71d3, from name: libaot-AndHUD
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 859
	%struct.DSOCacheEntry {
		i64 3330991993, ; hash 0xc68ae779, from name: libaot-Microsoft.Maui
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.112, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 860
	%struct.DSOCacheEntry {
		i64 3340387945, ; hash 0xc71a4669, from name: SkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 861
	%struct.DSOCacheEntry {
		i64 3340387945, ; hash 0xc71a4669, from name: SkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.127, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 862
	%struct.DSOCacheEntry {
		i64 3343506518, ; hash 0xc749dc56, from name: AndHUD.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 863
	%struct.DSOCacheEntry {
		i64 3346324047, ; hash 0xc774da4f, from name: Xamarin.AndroidX.Navigation.Runtime
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 864
	%struct.DSOCacheEntry {
		i64 3352153286, ; hash 0xc7cdccc6, from name: aot-System.Resources.ResourceManager
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 865
	%struct.DSOCacheEntry {
		i64 3358260929, ; hash 0xc82afec1, from name: System.Text.Json
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.62, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 866
	%struct.DSOCacheEntry {
		i64 3360279109, ; hash 0xc849ca45, from name: SQLitePCLRaw.core
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 867
	%struct.DSOCacheEntry {
		i64 3361153192, ; hash 0xc85720a8, from name: aot-Mapsui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 868
	%struct.DSOCacheEntry {
		i64 3362522851, ; hash 0xc86c06e3, from name: Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 869
	%struct.DSOCacheEntry {
		i64 3362793654, ; hash 0xc87028b6, from name: System.IO.Pipes.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 870
	%struct.DSOCacheEntry {
		i64 3365984895, ; hash 0xc8a0da7f, from name: libaot-System.Net.WebHeaderCollection
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.29, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 871
	%struct.DSOCacheEntry {
		i64 3366347497, ; hash 0xc8a662e9, from name: Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 872
	%struct.DSOCacheEntry {
		i64 3366547669, ; hash 0xc8a970d5, from name: libaot-System.Net.Mail.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.117, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 873
	%struct.DSOCacheEntry {
		i64 3368519407, ; hash 0xc8c786ef, from name: aot-SQLite-net
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 874
	%struct.DSOCacheEntry {
		i64 3373247805, ; hash 0xc90fad3d, from name: libaot-DevExpress.Android.CollectionView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 875
	%struct.DSOCacheEntry {
		i64 3374999561, ; hash 0xc92a6809, from name: Xamarin.AndroidX.RecyclerView
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 876
	%struct.DSOCacheEntry {
		i64 3390657809, ; hash 0xca195511, from name: aot-SmartPharma5.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 877
	%struct.DSOCacheEntry {
		i64 3390663103, ; hash 0xca1969bf, from name: aot-System.Net.Sockets.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.121, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 878
	%struct.DSOCacheEntry {
		i64 3394171410, ; hash 0xca4ef212, from name: Xamarin.AndroidX.Activity.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.35, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 879
	%struct.DSOCacheEntry {
		i64 3396494892, ; hash 0xca72662c, from name: System.Net.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.137, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 880
	%struct.DSOCacheEntry {
		i64 3400462534, ; hash 0xcaaef0c6, from name: mscorlib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 881
	%struct.DSOCacheEntry {
		i64 3401133733, ; hash 0xcab92ea5, from name: System.Buffers.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 882
	%struct.DSOCacheEntry {
		i64 3401606454, ; hash 0xcac06536, from name: Xamarin.AndroidX.ViewPager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.178, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 883
	%struct.DSOCacheEntry {
		i64 3403922660, ; hash 0xcae3bce4, from name: aot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 884
	%struct.DSOCacheEntry {
		i64 3409284616, ; hash 0xcb358e08, from name: aot-Xamarin.AndroidX.Browser
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 885
	%struct.DSOCacheEntry {
		i64 3422266863, ; hash 0xcbfba5ef, from name: libmonodroid.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 886
	%struct.DSOCacheEntry {
		i64 3430553126, ; hash 0xcc7a1626, from name: aot-Syncfusion.Maui.Gauges.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 887
	%struct.DSOCacheEntry {
		i64 3430777524, ; hash 0xcc7d82b4, from name: netstandard
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 888
	%struct.DSOCacheEntry {
		i64 3436221997, ; hash 0xccd0962d, from name: libaot-System.Net.WebProxy
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 889
	%struct.DSOCacheEntry {
		i64 3442543374, ; hash 0xcd310b0e, from name: AndHUD
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 890
	%struct.DSOCacheEntry {
		i64 3443380975, ; hash 0xcd3dd2ef, from name: aot-HarfBuzzSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 891
	%struct.DSOCacheEntry {
		i64 3445624513, ; hash 0xcd600ec1, from name: aot-System.ComponentModel.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.68, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 892
	%struct.DSOCacheEntry {
		i64 3447642345, ; hash 0xcd7ed8e9, from name: libaot-System.Net.Security
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.118, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 893
	%struct.DSOCacheEntry {
		i64 3448212429, ; hash 0xcd878bcd, from name: aot-System.IO.Compression
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 894
	%struct.DSOCacheEntry {
		i64 3459815001, ; hash 0xce389659, from name: Mapsui.Rendering.Skia
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 895
	%struct.DSOCacheEntry {
		i64 3476120550, ; hash 0xcf3163e6, from name: Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 896
	%struct.DSOCacheEntry {
		i64 3476851568, ; hash 0xcf3c8b70, from name: DXChartsNative.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.84, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 897
	%struct.DSOCacheEntry {
		i64 3490240475, ; hash 0xd008d7db, from name: aot-netstandard.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.19, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 898
	%struct.DSOCacheEntry {
		i64 3495560389, ; hash 0xd05a04c5, from name: aot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 899
	%struct.DSOCacheEntry {
		i64 3498411664, ; hash 0xd0858690, from name: aot-Syncfusion.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.5, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 900
	%struct.DSOCacheEntry {
		i64 3498419225, ; hash 0xd085a419, from name: aot-Xamarin.AndroidX.Navigation.Common.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__DSOCacheEntry_name.155, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 901
	%struct.DSOCacheEntry {
		i64 3509114376, ; hash 0xd128d608, from name: System.Xml.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.170, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 902
	%struct.DSOCacheEntry {
		i64 3511583324, ; hash 0xd14e825c, from name: aot-Acr.UserDialogs
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 903
	%struct.DSOCacheEntry {
		i64 3515205765, ; hash 0xd185c885, from name: aot-System.Runtime.CompilerServices.Unsafe
		i8 0, ; ignore
		i8* getelementptr inbounds ([53 x i8], [53 x i8]* @__DSOCacheEntry_name.21, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 904
	%struct.DSOCacheEntry {
		i64 3525911345, ; hash 0xd2292331, from name: aot-SkiaSharp.Views.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 905
	%struct.DSOCacheEntry {
		i64 3531467364, ; hash 0xd27dea64, from name: Microsoft.Extensions.Options.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 906
	%struct.DSOCacheEntry {
		i64 3538012924, ; hash 0xd2e1cafc, from name: System.Threading.Channels.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.16, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 907
	%struct.DSOCacheEntry {
		i64 3540360104, ; hash 0xd3059ba8, from name: aot-System.Net.ServicePoint
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 908
	%struct.DSOCacheEntry {
		i64 3547939516, ; hash 0xd37942bc, from name: System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 909
	%struct.DSOCacheEntry {
		i64 3548046070, ; hash 0xd37ae2f6, from name: aot-BruTile
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 910
	%struct.DSOCacheEntry {
		i64 3554143940, ; hash 0xd3d7eec4, from name: libaot-System.Collections.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.74, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 911
	%struct.DSOCacheEntry {
		i64 3557887367, ; hash 0xd4110d87, from name: libaot-System.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 912
	%struct.DSOCacheEntry {
		i64 3563790061, ; hash 0xd46b1eed, from name: libaot-Microsoft.Extensions.Configuration.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 913
	%struct.DSOCacheEntry {
		i64 3569135103, ; hash 0xd4bcadff, from name: aot-Xamarin.AndroidX.Lifecycle.ViewModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.146, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 914
	%struct.DSOCacheEntry {
		i64 3573573763, ; hash 0xd5006883, from name: DevExpress.Maui.CollectionView
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 915
	%struct.DSOCacheEntry {
		i64 3580899767, ; hash 0xd57031b7, from name: libaot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 916
	%struct.DSOCacheEntry {
		i64 3580928879, ; hash 0xd570a36f, from name: aot-Xamarin.AndroidX.Lifecycle.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.38, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 917
	%struct.DSOCacheEntry {
		i64 3581103432, ; hash 0xd5734d48, from name: libaot-Xamarin.Kotlin.StdLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.52, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 918
	%struct.DSOCacheEntry {
		i64 3582297397, ; hash 0xd5858535, from name: aot-Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 919
	%struct.DSOCacheEntry {
		i64 3602430852, ; hash 0xd6b8bb84, from name: DevExpress.Android.Scheduler.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 920
	%struct.DSOCacheEntry {
		i64 3603132491, ; hash 0xd6c3704b, from name: aot-Plugin.Connectivity.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.17, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 921
	%struct.DSOCacheEntry {
		i64 3610022767, ; hash 0xd72c936f, from name: libaot-System.Security.Cryptography.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 922
	%struct.DSOCacheEntry {
		i64 3615825361, ; hash 0xd7851dd1, from name: aot-DevExpress.Android.Grid
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 923
	%struct.DSOCacheEntry {
		i64 3616174750, ; hash 0xd78a729e, from name: libaot-Xamarin.AndroidX.Browser
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 924
	%struct.DSOCacheEntry {
		i64 3617018425, ; hash 0xd7975239, from name: libaot-DevExpress.Maui.Scheduler.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.102, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 925
	%struct.DSOCacheEntry {
		i64 3617535095, ; hash 0xd79f3477, from name: libaot-System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 926
	%struct.DSOCacheEntry {
		i64 3618739450, ; hash 0xd7b194fa, from name: aot-Svg.Custom.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 927
	%struct.DSOCacheEntry {
		i64 3619807786, ; hash 0xd7c1e22a, from name: libaot-Mapsui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.47, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 928
	%struct.DSOCacheEntry {
		i64 3623194064, ; hash 0xd7f58dd0, from name: libaot-System.Linq
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.142, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 929
	%struct.DSOCacheEntry {
		i64 3624195450, ; hash 0xd804d57a, from name: System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 930
	%struct.DSOCacheEntry {
		i64 3625991962, ; hash 0xd8203f1a, from name: aot-DevExpress.Maui.Editors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 931
	%struct.DSOCacheEntry {
		i64 3628358221, ; hash 0xd8445a4d, from name: System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 932
	%struct.DSOCacheEntry {
		i64 3629173998, ; hash 0xd850ccee, from name: libaot-mscorlib
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.28, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 933
	%struct.DSOCacheEntry {
		i64 3636393175, ; hash 0xd8bef4d7, from name: libmonodroid
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.50, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 934
	%struct.DSOCacheEntry {
		i64 3640930543, ; hash 0xd90430ef, from name: libaot-System.Runtime.InteropServices.RuntimeInformation.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 935
	%struct.DSOCacheEntry {
		i64 3641597786, ; hash 0xd90e5f5a, from name: Xamarin.AndroidX.Lifecycle.LiveData.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 936
	%struct.DSOCacheEntry {
		i64 3643854240, ; hash 0xd930cda0, from name: Xamarin.AndroidX.Navigation.Fragment
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 937
	%struct.DSOCacheEntry {
		i64 3647597548, ; hash 0xd969ebec, from name: System.Runtime.InteropServices.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 938
	%struct.DSOCacheEntry {
		i64 3648098342, ; hash 0xd9719026, from name: libaot-System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 939
	%struct.DSOCacheEntry {
		i64 3650306124, ; hash 0xd993404c, from name: System.Text.Encodings.Web.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 940
	%struct.DSOCacheEntry {
		i64 3653801034, ; hash 0xd9c8944a, from name: libaot-Xamarin.AndroidX.Collection.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 941
	%struct.DSOCacheEntry {
		i64 3659357099, ; hash 0xda1d5bab, from name: DevExpress.Android.CollectionView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.123, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 942
	%struct.DSOCacheEntry {
		i64 3660523487, ; hash 0xda2f27df, from name: System.Net.NetworkInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 943
	%struct.DSOCacheEntry {
		i64 3662939194, ; hash 0xda54043a, from name: aot-Xamarin.AndroidX.Navigation.Fragment.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__DSOCacheEntry_name.162, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 944
	%struct.DSOCacheEntry {
		i64 3667786986, ; hash 0xda9dfcea, from name: aot-System.ComponentModel.Annotations
		i8 0, ; ignore
		i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__DSOCacheEntry_name.34, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 945
	%struct.DSOCacheEntry {
		i64 3673926955, ; hash 0xdafbad2b, from name: libaot-ExCSS
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.83, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 946
	%struct.DSOCacheEntry {
		i64 3677509879, ; hash 0xdb3258f7, from name: libe_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 947
	%struct.DSOCacheEntry {
		i64 3682565725, ; hash 0xdb7f7e5d, from name: Xamarin.AndroidX.Browser
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 948
	%struct.DSOCacheEntry {
		i64 3684032917, ; hash 0xdb95e195, from name: libaot-Xamarin.AndroidX.SavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.44, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 949
	%struct.DSOCacheEntry {
		i64 3685223071, ; hash 0xdba80a9f, from name: libaot-System.IO.Compression.Brotli
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 950
	%struct.DSOCacheEntry {
		i64 3689375977, ; hash 0xdbe768e9, from name: System.Drawing.Common
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.86, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 951
	%struct.DSOCacheEntry {
		i64 3689962629, ; hash 0xdbf05c85, from name: System.Diagnostics.TraceSource.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.15, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 952
	%struct.DSOCacheEntry {
		i64 3691419556, ; hash 0xdc0697a4, from name: libaot-System.Net.WebProxy.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 953
	%struct.DSOCacheEntry {
		i64 3691770169, ; hash 0xdc0bf139, from name: Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 954
	%struct.DSOCacheEntry {
		i64 3694954488, ; hash 0xdc3c87f8, from name: aot-Svg.Skia
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 955
	%struct.DSOCacheEntry {
		i64 3704572877, ; hash 0xdccf4bcd, from name: aot-Mapsui.Tiling.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 956
	%struct.DSOCacheEntry {
		i64 3705667778, ; hash 0xdce000c2, from name: libaot-System.Threading.Thread.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 957
	%struct.DSOCacheEntry {
		i64 3712335905, ; hash 0xdd45c021, from name: Acr.UserDialogs.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.18, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 958
	%struct.DSOCacheEntry {
		i64 3712627230, ; hash 0xdd4a321e, from name: aot-System.Xml.XDocument
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.147, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 959
	%struct.DSOCacheEntry {
		i64 3720997800, ; hash 0xddc9eba8, from name: aot-System.IO.Compression.Brotli
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 960
	%struct.DSOCacheEntry {
		i64 3723482926, ; hash 0xddefd72e, from name: SkiaSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 961
	%struct.DSOCacheEntry {
		i64 3728689137, ; hash 0xde3f47f1, from name: libaot-SQLite-net.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 962
	%struct.DSOCacheEntry {
		i64 3732100267, ; hash 0xde7354ab, from name: System.Net.NameResolution
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 963
	%struct.DSOCacheEntry {
		i64 3738048145, ; hash 0xdece1691, from name: libaot-DevExpress.Maui.Charts
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 964
	%struct.DSOCacheEntry {
		i64 3740114804, ; hash 0xdeed9f74, from name: libe_sqlite3.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__DSOCacheEntry_name.175, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 965
	%struct.DSOCacheEntry {
		i64 3747602944, ; hash 0xdf5fe200, from name: aot-AndHUD.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 966
	%struct.DSOCacheEntry {
		i64 3748608112, ; hash 0xdf6f3870, from name: System.Diagnostics.DiagnosticSource
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.157, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 967
	%struct.DSOCacheEntry {
		i64 3748864184, ; hash 0xdf7320b8, from name: libaot-SQLite-net
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 968
	%struct.DSOCacheEntry {
		i64 3751444290, ; hash 0xdf9a7f42, from name: System.Xml.XPath
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 969
	%struct.DSOCacheEntry {
		i64 3754567612, ; hash 0xdfca27bc, from name: SQLitePCLRaw.provider.e_sqlite3
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 970
	%struct.DSOCacheEntry {
		i64 3756765917, ; hash 0xdfebb2dd, from name: aot-Mapsui.Nts
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.80, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 971
	%struct.DSOCacheEntry {
		i64 3762573298, ; hash 0xe0444ff2, from name: libaot-Svg.Skia
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 972
	%struct.DSOCacheEntry {
		i64 3777270291, ; hash 0xe1249213, from name: DevExpress.Maui.Editors
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.69, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 973
	%struct.DSOCacheEntry {
		i64 3785063473, ; hash 0xe19b7c31, from name: libaot-Svg.Model.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.59, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 974
	%struct.DSOCacheEntry {
		i64 3786282454, ; hash 0xe1ae15d6, from name: Xamarin.AndroidX.Collection
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 975
	%struct.DSOCacheEntry {
		i64 3786898687, ; hash 0xe1b77cff, from name: Microsoft.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 976
	%struct.DSOCacheEntry {
		i64 3790421216, ; hash 0xe1ed3ce0, from name: monosgen-2.0
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 977
	%struct.DSOCacheEntry {
		i64 3792276235, ; hash 0xe2098b0b, from name: System.Collections.NonGeneric
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.4, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 978
	%struct.DSOCacheEntry {
		i64 3792835768, ; hash 0xe21214b8, from name: HarfBuzzSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 979
	%struct.DSOCacheEntry {
		i64 3792835768, ; hash 0xe21214b8, from name: HarfBuzzSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.188, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 980
	%struct.DSOCacheEntry {
		i64 3798102808, ; hash 0xe2627318, from name: BruTile
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 981
	%struct.DSOCacheEntry {
		i64 3800979733, ; hash 0xe28e5915, from name: Microsoft.Maui.Controls.Compatibility
		i8 0, ; ignore
		i8* getelementptr inbounds ([52 x i8], [52 x i8]* @__DSOCacheEntry_name.99, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 982
	%struct.DSOCacheEntry {
		i64 3805936894, ; hash 0xe2d9fcfe, from name: SkiaSharp.HarfBuzz.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 983
	%struct.DSOCacheEntry {
		i64 3808105303, ; hash 0xe2fb1357, from name: libaot-System.Threading.Thread
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.9, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 984
	%struct.DSOCacheEntry {
		i64 3808542031, ; hash 0xe301bd4f, from name: aot-Microsoft.Extensions.Configuration.Abstractions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__DSOCacheEntry_name.179, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 985
	%struct.DSOCacheEntry {
		i64 3817984437, ; hash 0xe391d1b5, from name: libmonosgen-2.0.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__DSOCacheEntry_name.187, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 986
	%struct.DSOCacheEntry {
		i64 3819260425, ; hash 0xe3a54a09, from name: System.Net.WebProxy
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.36, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 987
	%struct.DSOCacheEntry {
		i64 3821518773, ; hash 0xe3c7bfb5, from name: libaot-Mapsui.Rendering.Skia
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 988
	%struct.DSOCacheEntry {
		i64 3824070419, ; hash 0xe3eeaf13, from name: aot-System.ObjectModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.96, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 989
	%struct.DSOCacheEntry {
		i64 3827383881, ; hash 0xe4213e49, from name: Xamarin.AndroidX.Loader.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.91, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 990
	%struct.DSOCacheEntry {
		i64 3827730753, ; hash 0xe4268941, from name: libaot-System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 991
	%struct.DSOCacheEntry {
		i64 3831263026, ; hash 0xe45c6f32, from name: System.ComponentModel.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 992
	%struct.DSOCacheEntry {
		i64 3861657161, ; hash 0xe62c3649, from name: libaot-NetTopologySuite.Features
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 993
	%struct.DSOCacheEntry {
		i64 3876362041, ; hash 0xe70c9739, from name: SQLite-net
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.181, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 994
	%struct.DSOCacheEntry {
		i64 3882710139, ; hash 0xe76d747b, from name: aot-Mono.Android.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 995
	%struct.DSOCacheEntry {
		i64 3889482991, ; hash 0xe7d4ccef, from name: Mapsui.Rendering.Skia.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.26, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 996
	%struct.DSOCacheEntry {
		i64 3889554181, ; hash 0xe7d5e305, from name: libaot-Microsoft.Extensions.Logging
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.23, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 997
	%struct.DSOCacheEntry {
		i64 3891366301, ; hash 0xe7f1899d, from name: aot-System.Net.Http
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.151, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 998
	%struct.DSOCacheEntry {
		i64 3894530715, ; hash 0xe821d29b, from name: libaot-Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 999
	%struct.DSOCacheEntry {
		i64 3909437042, ; hash 0xe9054672, from name: libaot-System.Memory
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1000
	%struct.DSOCacheEntry {
		i64 3910557217, ; hash 0xe9165e21, from name: aot-DevExpress.Maui.Charts.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.37, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1001
	%struct.DSOCacheEntry {
		i64 3914259587, ; hash 0xe94edc83, from name: Plugin.Connectivity
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.49, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1002
	%struct.DSOCacheEntry {
		i64 3915264716, ; hash 0xe95e32cc, from name: aot-System.Security.Cryptography
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.141, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1003
	%struct.DSOCacheEntry {
		i64 3916647714, ; hash 0xe9734d22, from name: libaot-System.Xml.XPath.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1004
	%struct.DSOCacheEntry {
		i64 3917686118, ; hash 0xe9832566, from name: DevExpress.Maui.Controls.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.48, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1005
	%struct.DSOCacheEntry {
		i64 3920090193, ; hash 0xe9a7d451, from name: libaot-ShimSkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1006
	%struct.DSOCacheEntry {
		i64 3924508579, ; hash 0xe9eb3fa3, from name: aot-System.Transactions.Local
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.73, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1007
	%struct.DSOCacheEntry {
		i64 3925077246, ; hash 0xe9f3ecfe, from name: libaot-System.IO.Compression.Brotli.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.134, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1008
	%struct.DSOCacheEntry {
		i64 3928044579, ; hash 0xea213423, from name: System.Xml.ReaderWriter
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.60, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1009
	%struct.DSOCacheEntry {
		i64 3930233922, ; hash 0xea429c42, from name: libaot-Xamarin.AndroidX.Collection
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.110, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1010
	%struct.DSOCacheEntry {
		i64 3931092270, ; hash 0xea4fb52e, from name: Xamarin.AndroidX.Navigation.UI
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.70, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1011
	%struct.DSOCacheEntry {
		i64 3932033818, ; hash 0xea5e131a, from name: libaot-Svg.Custom
		i8 0, ; ignore
		i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__DSOCacheEntry_name.120, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1012
	%struct.DSOCacheEntry {
		i64 3934808307, ; hash 0xea8868f3, from name: libaot-Mono.Android
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.63, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1013
	%struct.DSOCacheEntry {
		i64 3936467727, ; hash 0xeaa1bb0f, from name: libaot-Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1014
	%struct.DSOCacheEntry {
		i64 3943891306, ; hash 0xeb13016a, from name: aot-System.Text.Encoding.CodePages
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1015
	%struct.DSOCacheEntry {
		i64 3953583589, ; hash 0xeba6e5e5, from name: Svg.Skia
		i8 0, ; ignore
		i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__DSOCacheEntry_name.40, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1016
	%struct.DSOCacheEntry {
		i64 3953953790, ; hash 0xebac8bfe, from name: System.Text.Encoding.CodePages
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.160, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1017
	%struct.DSOCacheEntry {
		i64 3956193289, ; hash 0xebceb809, from name: libaot-System.Memory.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1018
	%struct.DSOCacheEntry {
		i64 3958820853, ; hash 0xebf6cff5, from name: aot-System.Runtime.InteropServices.RuntimeInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__DSOCacheEntry_name.161, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1019
	%struct.DSOCacheEntry {
		i64 3961462390, ; hash 0xec1f1e76, from name: libaot-System.Collections.Immutable.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1020
	%struct.DSOCacheEntry {
		i64 3964477410, ; hash 0xec4d1fe2, from name: Microsoft.Maui.Graphics.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1021
	%struct.DSOCacheEntry {
		i64 3974764755, ; hash 0xecea18d3, from name: aot-SkiaSharp.Views.Maui.Controls
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.65, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1022
	%struct.DSOCacheEntry {
		i64 3977774780, ; hash 0xed1806bc, from name: SQLitePCLRaw.provider.e_sqlite3.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.14, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1023
	%struct.DSOCacheEntry {
		i64 3980510446, ; hash 0xed41c4ee, from name: aot-System.Formats.Asn1
		i8 0, ; ignore
		i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__DSOCacheEntry_name.154, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1024
	%struct.DSOCacheEntry {
		i64 3983604604, ; hash 0xed70fb7c, from name: aot-Java.Interop
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.185, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1025
	%struct.DSOCacheEntry {
		i64 3992412609, ; hash 0xedf761c1, from name: System.Text.Encoding.Extensions.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.64, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1026
	%struct.DSOCacheEntry {
		i64 3993813431, ; hash 0xee0cc1b7, from name: libaot-Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.27, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1027
	%struct.DSOCacheEntry {
		i64 3996561484, ; hash 0xee36b04c, from name: aot-System.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.169, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1028
	%struct.DSOCacheEntry {
		i64 3996883099, ; hash 0xee3b989b, from name: libaot-System.Net.ServicePoint
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.171, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1029
	%struct.DSOCacheEntry {
		i64 3998341441, ; hash 0xee51d941, from name: aot-SmartPharma5
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1030
	%struct.DSOCacheEntry {
		i64 4008891760, ; hash 0xeef2d570, from name: Xamarin.AndroidX.DrawerLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.129, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1031
	%struct.DSOCacheEntry {
		i64 4010598708, ; hash 0xef0ce134, from name: Mapsui.UI.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.12, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1032
	%struct.DSOCacheEntry {
		i64 4014362288, ; hash 0xef464eb0, from name: CommunityToolkit.Maui.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.2, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1033
	%struct.DSOCacheEntry {
		i64 4019183577, ; hash 0xef8fdfd9, from name: HarfBuzzSharp.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__DSOCacheEntry_name.168, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1034
	%struct.DSOCacheEntry {
		i64 4022681963, ; hash 0xefc5416b, from name: Mapsui.Tiling
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.93, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1035
	%struct.DSOCacheEntry {
		i64 4024005801, ; hash 0xefd974a9, from name: libaot-System.Drawing.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.111, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1036
	%struct.DSOCacheEntry {
		i64 4025723900, ; hash 0xeff3abfc, from name: aot-DevExpress.Android.Grid.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.156, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1037
	%struct.DSOCacheEntry {
		i64 4025784931, ; hash 0xeff49a63, from name: System.Memory
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.77, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1038
	%struct.DSOCacheEntry {
		i64 4027140892, ; hash 0xf0094b1c, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1039
	%struct.DSOCacheEntry {
		i64 4031292811, ; hash 0xf048a58b, from name: Xamarin.AndroidX.CardView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1040
	%struct.DSOCacheEntry {
		i64 4042557652, ; hash 0xf0f488d4, from name: libaot-System.ComponentModel
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.45, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1041
	%struct.DSOCacheEntry {
		i64 4045845481, ; hash 0xf126b3e9, from name: libaot-Syncfusion.Maui.Gauges.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.109, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1042
	%struct.DSOCacheEntry {
		i64 4053846198, ; hash 0xf1a0c8b6, from name: aot-DevExpress.Maui.CollectionView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1043
	%struct.DSOCacheEntry {
		i64 4057390768, ; hash 0xf1d6deb0, from name: Microsoft.Extensions.Primitives.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1044
	%struct.DSOCacheEntry {
		i64 4060821998, ; hash 0xf20b39ee, from name: libDXSchedulerNative
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.173, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1045
	%struct.DSOCacheEntry {
		i64 4063454328, ; hash 0xf2336478, from name: aot-System.IO.Compression.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.88, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1046
	%struct.DSOCacheEntry {
		i64 4066707603, ; hash 0xf2650893, from name: aot-System.Xml.XPath.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.176, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1047
	%struct.DSOCacheEntry {
		i64 4066802364, ; hash 0xf2667abc, from name: SkiaSharp.HarfBuzz
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.139, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1048
	%struct.DSOCacheEntry {
		i64 4078052095, ; hash 0xf31222ff, from name: aot-MvvmHelpers
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.133, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1049
	%struct.DSOCacheEntry {
		i64 4080391378, ; hash 0xf335d4d2, from name: NetTopologySuite.Features.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1050
	%struct.DSOCacheEntry {
		i64 4080500308, ; hash 0xf3377e54, from name: libaot-SQLitePCLRaw.nativelibrary.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.144, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1051
	%struct.DSOCacheEntry {
		i64 4100113165, ; hash 0xf462c30d, from name: System.Private.Uri
		i8 0, ; ignore
		i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__DSOCacheEntry_name.183, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1052
	%struct.DSOCacheEntry {
		i64 4108187297, ; hash 0xf4ddf6a1, from name: libaot-DevExpress.Maui.CollectionView
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.126, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1053
	%struct.DSOCacheEntry {
		i64 4112220824, ; hash 0xf51b8298, from name: aot-Xamarin.AndroidX.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1054
	%struct.DSOCacheEntry {
		i64 4112572424, ; hash 0xf520e008, from name: libaot-Xamarin.AndroidX.Window.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1055
	%struct.DSOCacheEntry {
		i64 4113193990, ; hash 0xf52a5c06, from name: libaot-Xamarin.AndroidX.SwipeRefreshLayout.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.150, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1056
	%struct.DSOCacheEntry {
		i64 4117511225, ; hash 0xf56c3c39, from name: Xamarin.AndroidX.ViewPager2.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([42 x i8], [42 x i8]* @__DSOCacheEntry_name.78, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1057
	%struct.DSOCacheEntry {
		i64 4120199896, ; hash 0xf59542d8, from name: libaot-ShimSkiaSharp.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__DSOCacheEntry_name.90, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1058
	%struct.DSOCacheEntry {
		i64 4124759570, ; hash 0xf5dad612, from name: libaot-System.Private.CoreLib.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1059
	%struct.DSOCacheEntry {
		i64 4125976845, ; hash 0xf5ed690d, from name: System.ComponentModel.TypeConverter.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.148, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1060
	%struct.DSOCacheEntry {
		i64 4126470640, ; hash 0xf5f4f1f0, from name: Microsoft.Extensions.DependencyInjection
		i8 0, ; ignore
		i8* getelementptr inbounds ([55 x i8], [55 x i8]* @__DSOCacheEntry_name.54, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1061
	%struct.DSOCacheEntry {
		i64 4126614450, ; hash 0xf5f723b2, from name: aot-Microsoft.Maui.Graphics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.132, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1062
	%struct.DSOCacheEntry {
		i64 4127599839, ; hash 0xf6062cdf, from name: aot-System.Net.NameResolution.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1063
	%struct.DSOCacheEntry {
		i64 4138783678, ; hash 0xf6b0d3be, from name: aot-Xamarin.AndroidX.Browser.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.57, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1064
	%struct.DSOCacheEntry {
		i64 4141496111, ; hash 0xf6da372f, from name: libaot-Microsoft.Extensions.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__DSOCacheEntry_name.140, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1065
	%struct.DSOCacheEntry {
		i64 4144557198, ; hash 0xf708ec8e, from name: NetTopologySuite.Features
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.95, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1066
	%struct.DSOCacheEntry {
		i64 4145255338, ; hash 0xf71393aa, from name: DevExpress.Android.Editors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1067
	%struct.DSOCacheEntry {
		i64 4147491756, ; hash 0xf735b3ac, from name: Xamarin.AndroidX.RecyclerView.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.165, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1068
	%struct.DSOCacheEntry {
		i64 4151237749, ; hash 0xf76edc75, from name: System.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__DSOCacheEntry_name.33, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1069
	%struct.DSOCacheEntry {
		i64 4154531413, ; hash 0xf7a11e55, from name: aot-System
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.145, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1070
	%struct.DSOCacheEntry {
		i64 4156432864, ; hash 0xf7be21e0, from name: libaot-DevExpress.Android.Editors.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.8, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1071
	%struct.DSOCacheEntry {
		i64 4158287357, ; hash 0xf7da6dfd, from name: aot-CommunityToolkit.Maui.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.100, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1072
	%struct.DSOCacheEntry {
		i64 4159265925, ; hash 0xf7e95c85, from name: System.Xml.XmlSerializer
		i8 0, ; ignore
		i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__DSOCacheEntry_name.41, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1073
	%struct.DSOCacheEntry {
		i64 4161309507, ; hash 0xf8088b43, from name: libaot-System.Private.CoreLib
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.163, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1074
	%struct.DSOCacheEntry {
		i64 4167575852, ; hash 0xf868292c, from name: libaot-AndHUD.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__DSOCacheEntry_name.159, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1075
	%struct.DSOCacheEntry {
		i64 4168181461, ; hash 0xf87166d5, from name: libaot-System.Collections.Immutable
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.138, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1076
	%struct.DSOCacheEntry {
		i64 4169082996, ; hash 0xf87f2874, from name: libaot-Xamarin.AndroidX.Core
		i8 0, ; ignore
		i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__DSOCacheEntry_name.13, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1077
	%struct.DSOCacheEntry {
		i64 4173297316, ; hash 0xf8bf76a4, from name: libaot-System.Net.NameResolution
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.82, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1078
	%struct.DSOCacheEntry {
		i64 4173688994, ; hash 0xf8c570a2, from name: libaot-DevExpress.Maui.Core.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__DSOCacheEntry_name.81, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1079
	%struct.DSOCacheEntry {
		i64 4174629528, ; hash 0xf8d3ca98, from name: aot-Microsoft.Maui.Essentials
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.152, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1080
	%struct.DSOCacheEntry {
		i64 4181436372, ; hash 0xf93ba7d4, from name: System.Runtime.Serialization.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__DSOCacheEntry_name.30, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1081
	%struct.DSOCacheEntry {
		i64 4185748872, ; hash 0xf97d7588, from name: libaot-System.Threading.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__DSOCacheEntry_name.164, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1082
	%struct.DSOCacheEntry {
		i64 4193960527, ; hash 0xf9fac24f, from name: aot-SkiaSharp.Views.Maui.Controls.Compatibility.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__DSOCacheEntry_name.172, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1083
	%struct.DSOCacheEntry {
		i64 4194414906, ; hash 0xfa01b13a, from name: aot-System.Private.Xml.Linq.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.130, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1084
	%struct.DSOCacheEntry {
		i64 4198755985, ; hash 0xfa43ee91, from name: aot-Xamarin.AndroidX.CardView
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.113, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1085
	%struct.DSOCacheEntry {
		i64 4203668311, ; hash 0xfa8ee357, from name: libaot-System.Net.NetworkInformation
		i8 0, ; ignore
		i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__DSOCacheEntry_name.1, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1086
	%struct.DSOCacheEntry {
		i64 4204314694, ; hash 0xfa98c046, from name: aot-DevExpress.Android.Scheduler.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.85, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1087
	%struct.DSOCacheEntry {
		i64 4233212931, ; hash 0xfc51b403, from name: SmartPharma5
		i8 0, ; ignore
		i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__DSOCacheEntry_name.119, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1088
	%struct.DSOCacheEntry {
		i64 4247391487, ; hash 0xfd2a0cff, from name: libaot-SQLitePCLRaw.core
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1089
	%struct.DSOCacheEntry {
		i64 4249989576, ; hash 0xfd51b1c8, from name: aot-Xamarin.AndroidX.Window.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.158, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1090
	%struct.DSOCacheEntry {
		i64 4252030144, ; hash 0xfd70d4c0, from name: aot-BruTile.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__DSOCacheEntry_name.131, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1091
	%struct.DSOCacheEntry {
		i64 4254568634, ; hash 0xfd9790ba, from name: Xamarin.AndroidX.Navigation.Runtime.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__DSOCacheEntry_name.32, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1092
	%struct.DSOCacheEntry {
		i64 4254738242, ; hash 0xfd9a2742, from name: aot-System.Collections.Specialized.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.115, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1093
	%struct.DSOCacheEntry {
		i64 4260525087, ; hash 0xfdf2741f, from name: System.Buffers
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.105, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1094
	%struct.DSOCacheEntry {
		i64 4264044254, ; hash 0xfe2826de, from name: libaot-System.Runtime.InteropServices
		i8 0, ; ignore
		i8* getelementptr inbounds ([45 x i8], [45 x i8]* @__DSOCacheEntry_name.24, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1095
	%struct.DSOCacheEntry {
		i64 4264632430, ; hash 0xfe31206e, from name: libaot-System.Resources.ResourceManager.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__DSOCacheEntry_name.20, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1096
	%struct.DSOCacheEntry {
		i64 4265809558, ; hash 0xfe431696, from name: aot-SkiaSharp
		i8 0, ; ignore
		i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__DSOCacheEntry_name.186, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1097
	%struct.DSOCacheEntry {
		i64 4268523408, ; hash 0xfe6c7f90, from name: aot-Microsoft.Win32.Primitives
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.6, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1098
	%struct.DSOCacheEntry {
		i64 4270991500, ; hash 0xfe92288c, from name: aot-Microsoft.Extensions.Options.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__DSOCacheEntry_name.128, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1099
	%struct.DSOCacheEntry {
		i64 4274711243, ; hash 0xfecaeacb, from name: libaot-System.Diagnostics.Process.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__DSOCacheEntry_name.101, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1100
	%struct.DSOCacheEntry {
		i64 4274976490, ; hash 0xfecef6ea, from name: System.Runtime.Numerics
		i8 0, ; ignore
		i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__DSOCacheEntry_name.103, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1101
	%struct.DSOCacheEntry {
		i64 4280470307, ; hash 0xff22cb23, from name: libaot-System.Text.Encodings.Web
		i8 0, ; ignore
		i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__DSOCacheEntry_name.107, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1102
	%struct.DSOCacheEntry {
		i64 4281329653, ; hash 0xff2fe7f5, from name: libaot-System.IO.Pipes.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__DSOCacheEntry_name.76, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1103
	%struct.DSOCacheEntry {
		i64 4283447791, ; hash 0xff5039ef, from name: aot-SQLitePCLRaw.core
		i8 0, ; ignore
		i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__DSOCacheEntry_name.98, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1104
	%struct.DSOCacheEntry {
		i64 4288835934, ; hash 0xffa2715e, from name: System.Drawing.dll.so
		i8 0, ; ignore
		i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__DSOCacheEntry_name.143, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1105
	%struct.DSOCacheEntry {
		i64 4289040471, ; hash 0xffa59057, from name: aot-System.Web.HttpUtility
		i8 0, ; ignore
		i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__DSOCacheEntry_name.67, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1106
	%struct.DSOCacheEntry {
		i64 4292120959, ; hash 0xffd4917f, from name: Xamarin.AndroidX.Lifecycle.ViewModelSavedState
		i8 0, ; ignore
		i8* getelementptr inbounds ([61 x i8], [61 x i8]* @__DSOCacheEntry_name.106, i32 0, i32 0), ; name
		i8* null; handle
	}, 
	; 1107
	%struct.DSOCacheEntry {
		i64 4294570506, ; hash 0xfff9f20a, from name: libaot-Microsoft.Extensions.DependencyInjection.Abstractions
		i8 0, ; ignore
		i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__DSOCacheEntry_name.75, i32 0, i32 0), ; name
		i8* null; handle
	}
], align 8; end of 'dso_cache' array


; Bundled assembly name buffers, all 0 bytes long
@bundled_assemblies = local_unnamed_addr global [0 x %struct.XamarinAndroidBundledAssembly] zeroinitializer, align 4


; Assembly store individual assembly data
@assembly_store_bundled_assemblies = local_unnamed_addr global [182 x %struct.AssemblyStoreSingleAssemblyRuntimeData] zeroinitializer, align 4

; Assembly store data
@assembly_stores = local_unnamed_addr global [2 x %struct.AssemblyStoreRuntimeData] zeroinitializer, align 4

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/release/7.0.3xx @ 6678e0213cbced08ab39aa1563b84068e751d836"}
