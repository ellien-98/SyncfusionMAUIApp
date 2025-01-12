; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [349 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [692 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 67
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 66
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 107
	i32 29184114, ; 3: Syncfusion.Maui.Toolkit.resources.dll => 0x1bd5072 => 215
	i32 32687329, ; 4: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 261
	i32 34715100, ; 5: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 295
	i32 34839235, ; 6: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 47
	i32 39485524, ; 7: System.Net.WebSockets.dll => 0x25a8054 => 79
	i32 42639949, ; 8: System.Threading.Thread => 0x28aa24d => 144
	i32 66541672, ; 9: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 10: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 336
	i32 68219467, ; 11: System.Security.Cryptography.Primitives => 0x410f24b => 123
	i32 72070932, ; 12: Microsoft.Maui.Graphics.dll => 0x44bb714 => 188
	i32 82292897, ; 13: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 101
	i32 101534019, ; 14: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 279
	i32 117431740, ; 15: System.Runtime.InteropServices => 0x6ffddbc => 106
	i32 120558881, ; 16: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 279
	i32 122350210, ; 17: System.Threading.Channels.dll => 0x74aea82 => 138
	i32 134690465, ; 18: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 299
	i32 142721839, ; 19: System.Net.WebHeaderCollection => 0x881c32f => 76
	i32 149972175, ; 20: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 123
	i32 159306688, ; 21: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 22: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 235
	i32 172961045, ; 23: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 196
	i32 176265551, ; 24: System.ServiceProcess => 0xa81994f => 131
	i32 182336117, ; 25: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 281
	i32 184328833, ; 26: System.ValueTuple.dll => 0xafca281 => 150
	i32 195452805, ; 27: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 333
	i32 199333315, ; 28: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 334
	i32 205061960, ; 29: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 30: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 233
	i32 219383992, ; 31: en-US\Syncfusion.Maui.Scheduler.resources => 0xd1388b8 => 341
	i32 220171995, ; 32: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 33: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 255
	i32 230752869, ; 34: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 35: System.Linq.Parallel => 0xdcb05c4 => 58
	i32 231814094, ; 36: System.Globalization => 0xdd133ce => 41
	i32 246610117, ; 37: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 90
	i32 257818971, ; 38: Syncfusion.Pdf.NET.dll => 0xf5e015b => 218
	i32 258215456, ; 39: Syncfusion.Maui.PdfToImageConverter.dll => 0xf640e20 => 206
	i32 259487786, ; 40: Syncfusion.Maui.Charts => 0xf77782a => 195
	i32 261689757, ; 41: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 238
	i32 276479776, ; 42: System.Threading.Timer.dll => 0x107abf20 => 146
	i32 278686392, ; 43: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 257
	i32 280482487, ; 44: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 254
	i32 280992041, ; 45: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 305
	i32 291076382, ; 46: System.IO.Pipes.AccessControl.dll => 0x1159791e => 53
	i32 297101052, ; 47: Syncfusion.Maui.Maps.dll => 0x11b566fc => 205
	i32 298918909, ; 48: System.Net.Ping.dll => 0x11d123fd => 68
	i32 311908887, ; 49: Syncfusion.Maui.Maps => 0x12975a17 => 205
	i32 317674968, ; 50: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 333
	i32 318968648, ; 51: Xamarin.AndroidX.Activity.dll => 0x13031348 => 224
	i32 321597661, ; 52: System.Numerics => 0x132b30dd => 82
	i32 336156722, ; 53: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 318
	i32 342366114, ; 54: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 256
	i32 356389973, ; 55: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 317
	i32 360082299, ; 56: System.ServiceModel.Web => 0x15766b7b => 130
	i32 367780167, ; 57: System.IO.Pipes => 0x15ebe147 => 54
	i32 374376850, ; 58: Syncfusion.Maui.Popup.dll => 0x16508992 => 208
	i32 374794515, ; 59: Syncfusion.Maui.Data.dll => 0x1656e913 => 197
	i32 374914964, ; 60: System.Transactions.Local => 0x1658bf94 => 148
	i32 375677976, ; 61: System.Net.ServicePoint.dll => 0x16646418 => 73
	i32 376991480, ; 62: en-US/Syncfusion.Maui.Buttons.resources.dll => 0x16786ef8 => 337
	i32 379916513, ; 63: System.Threading.Thread.dll => 0x16a510e1 => 144
	i32 385762202, ; 64: System.Memory.dll => 0x16fe439a => 61
	i32 392610295, ; 65: System.Threading.ThreadPool.dll => 0x1766c1f7 => 145
	i32 395744057, ; 66: _Microsoft.Android.Resource.Designer => 0x17969339 => 345
	i32 403441872, ; 67: WindowsBase => 0x180c08d0 => 164
	i32 435591531, ; 68: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 329
	i32 441335492, ; 69: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 239
	i32 442565967, ; 70: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 71: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 252
	i32 451504562, ; 72: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 124
	i32 456227837, ; 73: System.Web.HttpUtility.dll => 0x1b317bfd => 151
	i32 456681651, ; 74: Syncfusion.Maui.GridCommon.dll => 0x1b3868b3 => 202
	i32 459347974, ; 75: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 112
	i32 465846621, ; 76: mscorlib => 0x1bc4415d => 165
	i32 469710990, ; 77: System.dll => 0x1bff388e => 163
	i32 476646585, ; 78: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 254
	i32 486930444, ; 79: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 267
	i32 488065789, ; 80: en-US/Syncfusion.Maui.DataGrid.resources.dll => 0x1d174afd => 338
	i32 498788369, ; 81: System.ObjectModel => 0x1dbae811 => 83
	i32 500358224, ; 82: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 316
	i32 503918385, ; 83: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 310
	i32 513247710, ; 84: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 182
	i32 525008092, ; 85: SkiaSharp.dll => 0x1f4afcdc => 190
	i32 526420162, ; 86: System.Transactions.dll => 0x1f6088c2 => 149
	i32 527452488, ; 87: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 299
	i32 530272170, ; 88: System.Linq.Queryable => 0x1f9b4faa => 59
	i32 539058512, ; 89: Microsoft.Extensions.Logging => 0x20216150 => 178
	i32 540030774, ; 90: System.IO.FileSystem.dll => 0x20303736 => 50
	i32 545304856, ; 91: System.Runtime.Extensions => 0x2080b118 => 102
	i32 546455878, ; 92: System.Runtime.Serialization.Xml => 0x20924146 => 113
	i32 549171840, ; 93: System.Globalization.Calendars => 0x20bbb280 => 39
	i32 557405415, ; 94: Jsr305Binding => 0x213954e7 => 292
	i32 569601784, ; 95: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 290
	i32 577335427, ; 96: System.Security.Cryptography.Cng => 0x22697083 => 119
	i32 592146354, ; 97: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 324
	i32 601371474, ; 98: System.IO.IsolatedStorage.dll => 0x23d83352 => 51
	i32 605376203, ; 99: System.IO.Compression.FileSystem => 0x24154ecb => 43
	i32 613668793, ; 100: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 118
	i32 619197891, ; 101: BitMiracle.LibTiff.NET => 0x24e835c3 => 172
	i32 627609679, ; 102: Xamarin.AndroidX.CustomView => 0x2568904f => 244
	i32 627931235, ; 103: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 322
	i32 638254240, ; 104: Syncfusion.Maui.TreeMap.dll => 0x260afca0 => 216
	i32 639843206, ; 105: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 250
	i32 643868501, ; 106: System.Net => 0x2660a755 => 80
	i32 662205335, ; 107: System.Text.Encodings.Web.dll => 0x27787397 => 135
	i32 663517072, ; 108: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 286
	i32 666292255, ; 109: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 231
	i32 672442732, ; 110: System.Collections.Concurrent => 0x2814a96c => 8
	i32 676419328, ; 111: en-US\Syncfusion.Maui.Buttons.resources => 0x28515700 => 337
	i32 683518922, ; 112: System.Net.Security => 0x28bdabca => 72
	i32 688181140, ; 113: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 304
	i32 690569205, ; 114: System.Xml.Linq.dll => 0x29293ff5 => 154
	i32 691348768, ; 115: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 301
	i32 693804605, ; 116: System.Windows => 0x295a9e3d => 153
	i32 695450347, ; 117: Syncfusion.Maui.Popup => 0x2973baeb => 208
	i32 699345723, ; 118: System.Reflection.Emit => 0x29af2b3b => 91
	i32 700284507, ; 119: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 296
	i32 700358131, ; 120: System.IO.Compression.ZipFile => 0x29be9df3 => 44
	i32 706645707, ; 121: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 319
	i32 709557578, ; 122: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 307
	i32 720511267, ; 123: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 300
	i32 722857257, ; 124: System.Runtime.Loader.dll => 0x2b15ed29 => 108
	i32 735137430, ; 125: System.Security.SecureString.dll => 0x2bd14e96 => 128
	i32 752232764, ; 126: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 127: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 221
	i32 759454413, ; 128: System.Net.Requests => 0x2d445acd => 71
	i32 762598435, ; 129: System.IO.Pipes.dll => 0x2d745423 => 54
	i32 775507847, ; 130: System.IO.Compression => 0x2e394f87 => 45
	i32 777317022, ; 131: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 328
	i32 789151979, ; 132: Microsoft.Extensions.Options => 0x2f0980eb => 181
	i32 790371945, ; 133: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 245
	i32 804715423, ; 134: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 135: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 259
	i32 823281589, ; 136: System.Private.Uri.dll => 0x311247b5 => 85
	i32 830298997, ; 137: System.IO.Compression.Brotli => 0x317d5b75 => 42
	i32 832635846, ; 138: System.Xml.XPath.dll => 0x31a103c6 => 159
	i32 834051424, ; 139: System.Net.Quic => 0x31b69d60 => 70
	i32 843511501, ; 140: Xamarin.AndroidX.Print => 0x3246f6cd => 272
	i32 873119928, ; 141: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 142: System.Globalization.dll => 0x34505120 => 41
	i32 878833237, ; 143: en-US\Syncfusion.Maui.DataGrid.resources => 0x3461ee55 => 338
	i32 878954865, ; 144: System.Net.Http.Json => 0x3463c971 => 62
	i32 884721263, ; 145: en-US\Syncfusion.Maui.PdfViewer.resources => 0x34bbc66f => 340
	i32 904024072, ; 146: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 908505502, ; 147: Syncfusion.Maui.SignaturePad => 0x3626b19e => 211
	i32 911108515, ; 148: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 52
	i32 919194361, ; 149: Syncfusion.Maui.Calendar.dll => 0x36c9caf9 => 194
	i32 926902833, ; 150: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 331
	i32 928116545, ; 151: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 295
	i32 952186615, ; 152: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 104
	i32 956575887, ; 153: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 300
	i32 966729478, ; 154: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 293
	i32 967690846, ; 155: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 256
	i32 975236339, ; 156: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 157: System.Xml.XDocument => 0x3a2aaa1d => 157
	i32 986514023, ; 158: System.Private.DataContractSerialization.dll => 0x3acd0267 => 84
	i32 987214855, ; 159: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 160: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 161: System.IO.FileSystem => 0x3b45fb35 => 50
	i32 1001831731, ; 162: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 55
	i32 1012816738, ; 163: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 276
	i32 1019214401, ; 164: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 165: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 177
	i32 1029334545, ; 166: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 306
	i32 1031528504, ; 167: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 294
	i32 1035644815, ; 168: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 229
	i32 1036536393, ; 169: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 170: System.Linq.Expressions.dll => 0x3e444eb4 => 57
	i32 1052210849, ; 171: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 263
	i32 1067306892, ; 172: GoogleGson => 0x3f9dcf8c => 173
	i32 1082857460, ; 173: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 174: Xamarin.Kotlin.StdLib => 0x409e66d8 => 297
	i32 1098259244, ; 175: System => 0x41761b2c => 163
	i32 1118262833, ; 176: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 319
	i32 1121599056, ; 177: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 262
	i32 1126950560, ; 178: Syncfusion.Maui.PullToRefresh.dll => 0x432be6a0 => 209
	i32 1127624469, ; 179: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 180
	i32 1149092582, ; 180: Xamarin.AndroidX.Window => 0x447dc2e6 => 289
	i32 1168523401, ; 181: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 325
	i32 1170634674, ; 182: System.Web.dll => 0x45c677b2 => 152
	i32 1175144683, ; 183: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 285
	i32 1175781585, ; 184: en-US/Syncfusion.Maui.PdfViewer.resources.dll => 0x461500d1 => 340
	i32 1176943841, ; 185: Syncfusion.Maui.TabView => 0x4626bce1 => 213
	i32 1178241025, ; 186: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 270
	i32 1203215381, ; 187: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 323
	i32 1204270330, ; 188: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 231
	i32 1208641965, ; 189: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1219128291, ; 190: System.IO.IsolatedStorage => 0x48aa6be3 => 51
	i32 1234928153, ; 191: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 321
	i32 1243150071, ; 192: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 290
	i32 1246475894, ; 193: Syncfusion.Maui.PdfViewer.dll => 0x4a4bb676 => 207
	i32 1253011324, ; 194: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 195: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 305
	i32 1264511973, ; 196: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 280
	i32 1267360935, ; 197: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 284
	i32 1273260888, ; 198: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 236
	i32 1275534314, ; 199: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 301
	i32 1278448581, ; 200: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 228
	i32 1293217323, ; 201: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 247
	i32 1301909732, ; 202: Syncfusion.Maui.Scheduler => 0x4d9990e4 => 210
	i32 1309188875, ; 203: System.Private.DataContractSerialization => 0x4e08a30b => 84
	i32 1322716291, ; 204: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 289
	i32 1324164729, ; 205: System.Linq => 0x4eed2679 => 60
	i32 1335329327, ; 206: System.Runtime.Serialization.Json.dll => 0x4f97822f => 111
	i32 1364015309, ; 207: System.IO => 0x514d38cd => 56
	i32 1364190142, ; 208: Syncfusion.Maui.Gauges => 0x514fe3be => 201
	i32 1366448151, ; 209: Syncfusion.Maui.DataForm => 0x51725817 => 198
	i32 1373134921, ; 210: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 335
	i32 1375879472, ; 211: Nager.Country.dll => 0x52024130 => 189
	i32 1376866003, ; 212: Xamarin.AndroidX.SavedState => 0x52114ed3 => 276
	i32 1379779777, ; 213: System.Resources.ResourceManager => 0x523dc4c1 => 98
	i32 1402170036, ; 214: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 215: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 240
	i32 1408764838, ; 216: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 110
	i32 1411638395, ; 217: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 100
	i32 1422545099, ; 218: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 101
	i32 1430672901, ; 219: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 303
	i32 1434145427, ; 220: System.Runtime.Handles => 0x557b5293 => 103
	i32 1435222561, ; 221: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 293
	i32 1439761251, ; 222: System.Net.Quic.dll => 0x55d10363 => 70
	i32 1452070440, ; 223: System.Formats.Asn1.dll => 0x568cd628 => 37
	i32 1453312822, ; 224: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1453641697, ; 225: Syncfusion.Maui.Toolkit.dll => 0x56a4cfe1 => 214
	i32 1457743152, ; 226: System.Runtime.Extensions.dll => 0x56e36530 => 102
	i32 1458022317, ; 227: System.Net.Security.dll => 0x56e7a7ad => 72
	i32 1461004990, ; 228: es\Microsoft.Maui.Controls.resources => 0x57152abe => 309
	i32 1461234159, ; 229: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 230: System.Security.Cryptography.OpenSsl => 0x57201017 => 122
	i32 1462112819, ; 231: System.IO.Compression.dll => 0x57261233 => 45
	i32 1469204771, ; 232: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 230
	i32 1470490898, ; 233: Microsoft.Extensions.Primitives => 0x57a5e912 => 182
	i32 1479771757, ; 234: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 235: System.IO.Compression.Brotli.dll => 0x583e844f => 42
	i32 1487239319, ; 236: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 237: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 277
	i32 1493001747, ; 238: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 313
	i32 1514721132, ; 239: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 308
	i32 1536373174, ; 240: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1537889881, ; 241: Syncfusion.Maui.Buttons.dll => 0x5baa5659 => 193
	i32 1543031311, ; 242: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 137
	i32 1543355203, ; 243: System.Reflection.Emit.dll => 0x5bfdbb43 => 91
	i32 1550322496, ; 244: System.Reflection.Extensions.dll => 0x5c680b40 => 92
	i32 1551623176, ; 245: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 328
	i32 1565862583, ; 246: System.IO.FileSystem.Primitives => 0x5d552ab7 => 48
	i32 1566207040, ; 247: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 140
	i32 1573704789, ; 248: System.Runtime.Serialization.Json => 0x5dccd455 => 111
	i32 1580037396, ; 249: System.Threading.Overlapped => 0x5e2d7514 => 139
	i32 1582372066, ; 250: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 246
	i32 1589115732, ; 251: Syncfusion.Maui.Data => 0x5eb7fb54 => 197
	i32 1592978981, ; 252: System.Runtime.Serialization.dll => 0x5ef2ee25 => 114
	i32 1596911864, ; 253: Syncfusion.Maui.Buttons => 0x5f2ef0f8 => 193
	i32 1597949149, ; 254: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 294
	i32 1601112923, ; 255: System.Xml.Serialization => 0x5f6f0b5b => 156
	i32 1603525486, ; 256: Microsoft.Maui.Controls.HotReload.Forms.dll => 0x5f93db6e => 342
	i32 1604827217, ; 257: System.Net.WebClient => 0x5fa7b851 => 75
	i32 1616563424, ; 258: Syncfusion.Pdf.Imaging.NET => 0x605acce0 => 217
	i32 1618516317, ; 259: System.Net.WebSockets.Client.dll => 0x6078995d => 78
	i32 1622152042, ; 260: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 266
	i32 1622358360, ; 261: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 262: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 288
	i32 1635184631, ; 263: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 250
	i32 1636350590, ; 264: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 243
	i32 1639515021, ; 265: System.Net.Http.dll => 0x61b9038d => 63
	i32 1639986890, ; 266: System.Text.RegularExpressions => 0x61c036ca => 137
	i32 1641389582, ; 267: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1653151792, ; 268: Syncfusion.Maui.Inputs.dll => 0x62891830 => 203
	i32 1657153582, ; 269: System.Runtime => 0x62c6282e => 115
	i32 1658241508, ; 270: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 282
	i32 1658251792, ; 271: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 291
	i32 1670060433, ; 272: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 238
	i32 1675553242, ; 273: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 47
	i32 1677501392, ; 274: System.Net.Primitives.dll => 0x63fca3d0 => 69
	i32 1677521517, ; 275: Syncfusion.Pdf.Imaging.NET.dll => 0x63fcf26d => 217
	i32 1678508291, ; 276: System.Net.WebSockets => 0x640c0103 => 79
	i32 1679769178, ; 277: System.Security.Cryptography => 0x641f3e5a => 125
	i32 1691477237, ; 278: System.Reflection.Metadata => 0x64d1e4f5 => 93
	i32 1696967625, ; 279: System.Security.Cryptography.Csp => 0x6525abc9 => 120
	i32 1698840827, ; 280: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 298
	i32 1701541528, ; 281: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1716397933, ; 282: en-US/Syncfusion.Maui.Scheduler.resources.dll => 0x664e276d => 341
	i32 1720223769, ; 283: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 259
	i32 1726116996, ; 284: System.Reflection.dll => 0x66e27484 => 96
	i32 1728033016, ; 285: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 286: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 234
	i32 1732996618, ; 287: Syncfusion.Maui.TabView.dll => 0x674b6e0a => 213
	i32 1736233607, ; 288: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 326
	i32 1743415430, ; 289: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 304
	i32 1744735666, ; 290: System.Transactions.Local.dll => 0x67fe8db2 => 148
	i32 1746316138, ; 291: Mono.Android.Export => 0x6816ab6a => 168
	i32 1749607256, ; 292: Syncfusion.Pdf.NET => 0x6848e358 => 218
	i32 1750234357, ; 293: Syncfusion.Maui.TreeMap => 0x685274f5 => 216
	i32 1750313021, ; 294: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 295: System.Resources.Reader.dll => 0x68cc9d1e => 97
	i32 1763938596, ; 296: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 297: System.Reflection.Extensions => 0x6942234e => 92
	i32 1766324549, ; 298: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 281
	i32 1770582343, ; 299: Microsoft.Extensions.Logging.dll => 0x6988f147 => 178
	i32 1776026572, ; 300: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 301: System.Globalization.Extensions.dll => 0x69ec0683 => 40
	i32 1779859068, ; 302: Syncfusion.Maui.DataGrid.dll => 0x6a167e7c => 199
	i32 1780572499, ; 303: Mono.Android.Runtime.dll => 0x6a216153 => 169
	i32 1782862114, ; 304: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 320
	i32 1788241197, ; 305: Xamarin.AndroidX.Fragment => 0x6a96652d => 252
	i32 1793755602, ; 306: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 312
	i32 1808609942, ; 307: Xamarin.AndroidX.Loader => 0x6bcd3296 => 266
	i32 1813058853, ; 308: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 297
	i32 1813201214, ; 309: Xamarin.Google.Android.Material => 0x6c13413e => 291
	i32 1818569960, ; 310: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 271
	i32 1818787751, ; 311: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 312: System.Text.Encoding.Extensions => 0x6cbab720 => 133
	i32 1824722060, ; 313: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 110
	i32 1827303595, ; 314: Microsoft.VisualStudio.DesignTools.TapContract => 0x6cea70ab => 344
	i32 1828688058, ; 315: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 179
	i32 1839537106, ; 316: SyncfusionMAUIApp.dll => 0x6da51bd2 => 0
	i32 1842015223, ; 317: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 332
	i32 1847515442, ; 318: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 221
	i32 1853025655, ; 319: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 329
	i32 1858542181, ; 320: System.Linq.Expressions => 0x6ec71a65 => 57
	i32 1870277092, ; 321: System.Reflection.Primitives => 0x6f7a29e4 => 94
	i32 1870466325, ; 322: Syncfusion.Maui.SignaturePad.dll => 0x6f7d0d15 => 211
	i32 1875935024, ; 323: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 311
	i32 1879696579, ; 324: System.Formats.Tar.dll => 0x7009e4c3 => 38
	i32 1885316902, ; 325: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 232
	i32 1885918049, ; 326: Microsoft.VisualStudio.DesignTools.TapContract.dll => 0x7068d361 => 344
	i32 1888955245, ; 327: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 328: System.Reflection.Metadata.dll => 0x70a66bdd => 93
	i32 1898237753, ; 329: System.Reflection.DispatchProxy => 0x7124cf39 => 88
	i32 1900610850, ; 330: System.Resources.ResourceManager.dll => 0x71490522 => 98
	i32 1910275211, ; 331: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 332: System.Private.Xml.Linq => 0x739bd4a8 => 86
	i32 1956758971, ; 333: System.Resources.Writer => 0x74a1c5bb => 99
	i32 1961813231, ; 334: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 278
	i32 1968388702, ; 335: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 174
	i32 1983156543, ; 336: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 298
	i32 1985761444, ; 337: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 223
	i32 2003115576, ; 338: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 308
	i32 2011961780, ; 339: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 340: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 263
	i32 2025202353, ; 341: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 303
	i32 2031763787, ; 342: Xamarin.Android.Glide => 0x791a414b => 220
	i32 2045470958, ; 343: System.Private.Xml => 0x79eb68ee => 87
	i32 2055257422, ; 344: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 258
	i32 2060060697, ; 345: System.Windows.dll => 0x7aca0819 => 153
	i32 2066184531, ; 346: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 307
	i32 2070888862, ; 347: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2079903147, ; 348: System.Runtime.dll => 0x7bf8cdab => 115
	i32 2090596640, ; 349: System.Numerics.Vectors => 0x7c9bf920 => 81
	i32 2127167465, ; 350: System.Console => 0x7ec9ffe9 => 20
	i32 2134827680, ; 351: Syncfusion.Maui.Sliders.dll => 0x7f3ee2a0 => 212
	i32 2142473426, ; 352: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 353: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 161
	i32 2146852085, ; 354: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2155820306, ; 355: Syncfusion.Maui.Gauges.dll => 0x807f3512 => 201
	i32 2159891885, ; 356: Microsoft.Maui => 0x80bd55ad => 186
	i32 2169148018, ; 357: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 315
	i32 2181898931, ; 358: Microsoft.Extensions.Options.dll => 0x820d22b3 => 181
	i32 2192057212, ; 359: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 179
	i32 2193016926, ; 360: System.ObjectModel.dll => 0x82b6c85e => 83
	i32 2201107256, ; 361: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 302
	i32 2201231467, ; 362: System.Net.Http => 0x8334206b => 63
	i32 2207618523, ; 363: it\Microsoft.Maui.Controls.resources => 0x839595db => 317
	i32 2217644978, ; 364: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 285
	i32 2222056684, ; 365: System.Threading.Tasks.Parallel => 0x8471e4ec => 142
	i32 2244775296, ; 366: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 267
	i32 2252106437, ; 367: System.Xml.Serialization.dll => 0x863c6ac5 => 156
	i32 2256313426, ; 368: System.Globalization.Extensions => 0x867c9c52 => 40
	i32 2265110946, ; 369: System.Security.AccessControl.dll => 0x8702d9a2 => 116
	i32 2266799131, ; 370: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 175
	i32 2267999099, ; 371: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 222
	i32 2270573516, ; 372: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 311
	i32 2279755925, ; 373: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 274
	i32 2293034957, ; 374: System.ServiceModel.Web.dll => 0x88acefcd => 130
	i32 2295906218, ; 375: System.Net.Sockets => 0x88d8bfaa => 74
	i32 2298471582, ; 376: System.Net.Mail => 0x88ffe49e => 65
	i32 2303942373, ; 377: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 321
	i32 2305521784, ; 378: System.Private.CoreLib.dll => 0x896b7878 => 171
	i32 2315684594, ; 379: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 226
	i32 2320631194, ; 380: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 142
	i32 2340441535, ; 381: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 105
	i32 2344264397, ; 382: System.ValueTuple => 0x8bbaa2cd => 150
	i32 2353062107, ; 383: System.Net.Primitives => 0x8c40e0db => 69
	i32 2354730003, ; 384: Syncfusion.Licensing => 0x8c5a5413 => 192
	i32 2368005991, ; 385: System.Xml.ReaderWriter.dll => 0x8d24e767 => 155
	i32 2371007202, ; 386: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 174
	i32 2378619854, ; 387: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 120
	i32 2383496789, ; 388: System.Security.Principal.Windows.dll => 0x8e114655 => 126
	i32 2395872292, ; 389: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 316
	i32 2401565422, ; 390: System.Web.HttpUtility => 0x8f24faee => 151
	i32 2403452196, ; 391: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 249
	i32 2409983638, ; 392: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 0x8fa56e96 => 343
	i32 2421380589, ; 393: System.Threading.Tasks.Dataflow => 0x905355ed => 140
	i32 2423080555, ; 394: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 236
	i32 2426750280, ; 395: en-US\Syncfusion.Maui.Inputs.resources => 0x90a54548 => 339
	i32 2427813419, ; 396: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 313
	i32 2435356389, ; 397: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 398: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 399: System.Text.Encoding.dll => 0x924edee6 => 134
	i32 2458678730, ; 400: System.Net.Sockets.dll => 0x928c75ca => 74
	i32 2459001652, ; 401: System.Linq.Parallel.dll => 0x92916334 => 58
	i32 2465532216, ; 402: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 239
	i32 2471841756, ; 403: netstandard.dll => 0x93554fdc => 166
	i32 2475788418, ; 404: Java.Interop.dll => 0x93918882 => 167
	i32 2480646305, ; 405: Microsoft.Maui.Controls => 0x93dba8a1 => 184
	i32 2483903535, ; 406: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 407: System.Net.ServicePoint => 0x94147f61 => 73
	i32 2490993605, ; 408: System.AppContext.dll => 0x94798bc5 => 6
	i32 2494250323, ; 409: Nager.Country => 0x94ab3d53 => 189
	i32 2501346920, ; 410: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 411: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 261
	i32 2519222276, ; 412: Syncfusion.Maui.Calendar => 0x96284804 => 194
	i32 2522472828, ; 413: Xamarin.Android.Glide.dll => 0x9659e17c => 220
	i32 2538310050, ; 414: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 90
	i32 2550873716, ; 415: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 314
	i32 2562349572, ; 416: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 417: System.Text.Encodings.Web => 0x9930ee42 => 135
	i32 2581783588, ; 418: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 262
	i32 2581819634, ; 419: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 284
	i32 2585220780, ; 420: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 133
	i32 2585805581, ; 421: System.Net.Ping => 0x9a20430d => 68
	i32 2589602615, ; 422: System.Threading.ThreadPool => 0x9a5a3337 => 145
	i32 2593496499, ; 423: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 323
	i32 2605712449, ; 424: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 302
	i32 2615233544, ; 425: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 253
	i32 2616218305, ; 426: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 180
	i32 2617129537, ; 427: System.Private.Xml.dll => 0x9bfe3a41 => 87
	i32 2618712057, ; 428: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 95
	i32 2620871830, ; 429: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 243
	i32 2624644809, ; 430: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 248
	i32 2626831493, ; 431: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 318
	i32 2627185994, ; 432: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2629843544, ; 433: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 44
	i32 2633051222, ; 434: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 257
	i32 2663391936, ; 435: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 222
	i32 2663698177, ; 436: System.Runtime.Loader => 0x9ec4cf01 => 108
	i32 2664396074, ; 437: System.Xml.XDocument.dll => 0x9ecf752a => 157
	i32 2665622720, ; 438: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 439: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 440: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 113
	i32 2693849962, ; 441: System.IO.dll => 0xa090e36a => 56
	i32 2701096212, ; 442: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 282
	i32 2707746672, ; 443: Syncfusion.Maui.PullToRefresh => 0xa164ef70 => 209
	i32 2715334215, ; 444: System.Threading.Tasks.dll => 0xa1d8b647 => 143
	i32 2717744543, ; 445: System.Security.Claims => 0xa1fd7d9f => 117
	i32 2719963679, ; 446: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 119
	i32 2724373263, ; 447: System.Runtime.Numerics.dll => 0xa262a30f => 109
	i32 2732626843, ; 448: Xamarin.AndroidX.Activity => 0xa2e0939b => 224
	i32 2735172069, ; 449: System.Threading.Channels => 0xa30769e5 => 138
	i32 2737747696, ; 450: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 230
	i32 2740948882, ; 451: System.IO.Pipes.AccessControl => 0xa35f8f92 => 53
	i32 2743368605, ; 452: Syncfusion.Maui.DataSource => 0xa3847b9d => 200
	i32 2748088231, ; 453: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 104
	i32 2752995522, ; 454: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 324
	i32 2758225723, ; 455: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 185
	i32 2764765095, ; 456: Microsoft.Maui.dll => 0xa4caf7a7 => 186
	i32 2765824710, ; 457: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 132
	i32 2768327176, ; 458: Syncfusion.Maui.Scheduler.dll => 0xa5015208 => 210
	i32 2770495804, ; 459: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 296
	i32 2778768386, ; 460: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 287
	i32 2779977773, ; 461: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 275
	i32 2785988530, ; 462: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 330
	i32 2788224221, ; 463: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 253
	i32 2801831435, ; 464: Microsoft.Maui.Graphics => 0xa7008e0b => 188
	i32 2803228030, ; 465: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 158
	i32 2806116107, ; 466: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 309
	i32 2810250172, ; 467: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 240
	i32 2819470561, ; 468: System.Xml.dll => 0xa80db4e1 => 162
	i32 2821205001, ; 469: System.ServiceProcess.dll => 0xa8282c09 => 131
	i32 2821294376, ; 470: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 275
	i32 2824502124, ; 471: System.Xml.XmlDocument => 0xa85a7b6c => 160
	i32 2831556043, ; 472: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 322
	i32 2838993487, ; 473: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 264
	i32 2842426040, ; 474: Syncfusion.Maui.Sliders => 0xa96bfab8 => 212
	i32 2849599387, ; 475: System.Threading.Overlapped.dll => 0xa9d96f9b => 139
	i32 2853208004, ; 476: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 287
	i32 2855708567, ; 477: Xamarin.AndroidX.Transition => 0xaa36a797 => 283
	i32 2861098320, ; 478: Mono.Android.Export.dll => 0xaa88e550 => 168
	i32 2861189240, ; 479: Microsoft.Maui.Essentials => 0xaa8a4878 => 187
	i32 2868557005, ; 480: Syncfusion.Licensing.dll => 0xaafab4cd => 192
	i32 2870099610, ; 481: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 225
	i32 2871867422, ; 482: Syncfusion.Maui.Toolkit => 0xab2d381e => 214
	i32 2875164099, ; 483: Jsr305Binding.dll => 0xab5f85c3 => 292
	i32 2875220617, ; 484: System.Globalization.Calendars.dll => 0xab606289 => 39
	i32 2884993177, ; 485: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 251
	i32 2887636118, ; 486: System.Net.dll => 0xac1dd496 => 80
	i32 2899753641, ; 487: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 55
	i32 2900621748, ; 488: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 489: System.Reflection => 0xacf080de => 96
	i32 2905242038, ; 490: mscorlib.dll => 0xad2a79b6 => 165
	i32 2909740682, ; 491: System.Private.CoreLib => 0xad6f1e8a => 171
	i32 2915140907, ; 492: Syncfusion.Maui.DataGrid => 0xadc1852b => 199
	i32 2916838712, ; 493: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 288
	i32 2919462931, ; 494: System.Numerics.Vectors.dll => 0xae037813 => 81
	i32 2921128767, ; 495: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 227
	i32 2936416060, ; 496: System.Resources.Reader => 0xaf06273c => 97
	i32 2940926066, ; 497: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 498: System.Xml.XPath.XDocument => 0xaf624531 => 158
	i32 2959614098, ; 499: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 500: System.Security.Principal.Windows => 0xb0ed41f3 => 126
	i32 2972252294, ; 501: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 118
	i32 2978675010, ; 502: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 247
	i32 2987532451, ; 503: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 278
	i32 2996846495, ; 504: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 260
	i32 3001463412, ; 505: Syncfusion.Maui.PdfViewer => 0xb2e6b274 => 207
	i32 3016983068, ; 506: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 280
	i32 3023353419, ; 507: WindowsBase.dll => 0xb434b64b => 164
	i32 3024354802, ; 508: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 255
	i32 3038032645, ; 509: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 345
	i32 3056245963, ; 510: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 277
	i32 3057625584, ; 511: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 268
	i32 3059408633, ; 512: Mono.Android.Runtime => 0xb65adef9 => 169
	i32 3059793426, ; 513: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3061806605, ; 514: Syncfusion.Maui.DataForm.dll => 0xb67f760d => 198
	i32 3075834255, ; 515: System.Threading.Tasks => 0xb755818f => 143
	i32 3077302341, ; 516: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 315
	i32 3078489293, ; 517: BitMiracle.LibTiff.NET.dll => 0xb77e04cd => 172
	i32 3090735792, ; 518: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 124
	i32 3099732863, ; 519: System.Security.Claims.dll => 0xb8c22b7f => 117
	i32 3103600923, ; 520: System.Formats.Asn1 => 0xb8fd311b => 37
	i32 3111772706, ; 521: System.Runtime.Serialization => 0xb979e222 => 114
	i32 3121463068, ; 522: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 46
	i32 3124832203, ; 523: System.Threading.Tasks.Extensions => 0xba4127cb => 141
	i32 3132293585, ; 524: System.Security.AccessControl => 0xbab301d1 => 116
	i32 3140633799, ; 525: Syncfusion.Maui.ListView => 0xbb3244c7 => 204
	i32 3147165239, ; 526: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3147228406, ; 527: Syncfusion.Maui.Core => 0xbb96e4f6 => 196
	i32 3148237826, ; 528: GoogleGson.dll => 0xbba64c02 => 173
	i32 3159123045, ; 529: System.Reflection.Primitives.dll => 0xbc4c6465 => 94
	i32 3160747431, ; 530: System.IO.MemoryMappedFiles => 0xbc652da7 => 52
	i32 3170039328, ; 531: Syncfusion.Maui.ListView.dll => 0xbcf2f620 => 204
	i32 3178803400, ; 532: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 269
	i32 3192346100, ; 533: System.Security.SecureString => 0xbe4755f4 => 128
	i32 3193515020, ; 534: System.Web => 0xbe592c0c => 152
	i32 3204380047, ; 535: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 536: System.Xml.XmlDocument.dll => 0xbf506931 => 160
	i32 3211777861, ; 537: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 246
	i32 3220365878, ; 538: System.Threading => 0xbff2e236 => 147
	i32 3224776939, ; 539: Syncfusion.Maui.PdfToImageConverter => 0xc03630eb => 206
	i32 3226221578, ; 540: System.Runtime.Handles.dll => 0xc04c3c0a => 103
	i32 3245644316, ; 541: Syncfusion.Maui.Charts.dll => 0xc1749a1c => 195
	i32 3251039220, ; 542: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 88
	i32 3258312781, ; 543: Xamarin.AndroidX.CardView => 0xc235e84d => 234
	i32 3265493905, ; 544: System.Linq.Queryable.dll => 0xc2a37b91 => 59
	i32 3265893370, ; 545: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 141
	i32 3277815716, ; 546: System.Resources.Writer.dll => 0xc35f7fa4 => 99
	i32 3279906254, ; 547: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 548: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 549: System.Security.Cryptography.Encoding => 0xc4251ff9 => 121
	i32 3299363146, ; 550: System.Text.Encoding => 0xc4a8494a => 134
	i32 3303498502, ; 551: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 552: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 310
	i32 3306970809, ; 553: Syncfusion.Maui.Inputs => 0xc51c5eb9 => 203
	i32 3316684772, ; 554: System.Net.Requests.dll => 0xc5b097e4 => 71
	i32 3317135071, ; 555: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 244
	i32 3317144872, ; 556: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 557: SkiaSharp => 0xc71a4669 => 190
	i32 3340431453, ; 558: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 232
	i32 3345895724, ; 559: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 273
	i32 3346324047, ; 560: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 270
	i32 3357674450, ; 561: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 327
	i32 3358260929, ; 562: System.Text.Json => 0xc82afec1 => 136
	i32 3362336904, ; 563: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 225
	i32 3362522851, ; 564: Xamarin.AndroidX.Core => 0xc86c06e3 => 241
	i32 3366347497, ; 565: Java.Interop => 0xc8a662e9 => 167
	i32 3374999561, ; 566: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 274
	i32 3381016424, ; 567: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 306
	i32 3381934622, ; 568: Syncfusion.Maui.GridCommon => 0xc9943a1e => 202
	i32 3395150330, ; 569: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 100
	i32 3403906625, ; 570: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 122
	i32 3405233483, ; 571: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 245
	i32 3428513518, ; 572: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 176
	i32 3429136800, ; 573: System.Xml => 0xcc6479a0 => 162
	i32 3430777524, ; 574: netstandard => 0xcc7d82b4 => 166
	i32 3441283291, ; 575: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 248
	i32 3445260447, ; 576: System.Formats.Tar => 0xcd5a809f => 38
	i32 3452344032, ; 577: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 183
	i32 3463511458, ; 578: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 314
	i32 3471940407, ; 579: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 580: Mono.Android => 0xcf3163e6 => 170
	i32 3479583265, ; 581: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 327
	i32 3484440000, ; 582: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 326
	i32 3485117614, ; 583: System.Text.Json.dll => 0xcfbaacae => 136
	i32 3486566296, ; 584: System.Transactions => 0xcfd0c798 => 149
	i32 3488622557, ; 585: SyncfusionMAUIApp => 0xcff027dd => 0
	i32 3493954962, ; 586: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 237
	i32 3509114376, ; 587: System.Xml.Linq => 0xd128d608 => 154
	i32 3515174580, ; 588: System.Security.dll => 0xd1854eb4 => 129
	i32 3530912306, ; 589: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 590: System.Net.HttpListener => 0xd2ff69f1 => 64
	i32 3558305335, ; 591: Syncfusion.Maui.DataSource.dll => 0xd4176e37 => 200
	i32 3560100363, ; 592: System.Threading.Timer => 0xd432d20b => 146
	i32 3570554715, ; 593: System.IO.FileSystem.AccessControl => 0xd4d2575b => 46
	i32 3580758918, ; 594: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 334
	i32 3597029428, ; 595: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 223
	i32 3598340787, ; 596: System.Net.WebSockets.Client => 0xd67a52b3 => 78
	i32 3608519521, ; 597: System.Linq.dll => 0xd715a361 => 60
	i32 3624195450, ; 598: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 105
	i32 3627220390, ; 599: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 272
	i32 3632281949, ; 600: Syncfusion.Compression.NET.dll => 0xd880395d => 191
	i32 3633644679, ; 601: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 227
	i32 3638274909, ; 602: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 48
	i32 3641597786, ; 603: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 258
	i32 3643446276, ; 604: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 331
	i32 3643854240, ; 605: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 269
	i32 3645089577, ; 606: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 607: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 175
	i32 3660523487, ; 608: System.Net.NetworkInformation => 0xda2f27df => 67
	i32 3672681054, ; 609: Mono.Android.dll => 0xdae8aa5e => 170
	i32 3676670898, ; 610: Microsoft.Maui.Controls.HotReload.Forms => 0xdb258bb2 => 342
	i32 3682565725, ; 611: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 233
	i32 3684561358, ; 612: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 237
	i32 3697841164, ; 613: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 336
	i32 3700866549, ; 614: System.Net.WebProxy.dll => 0xdc96bdf5 => 77
	i32 3706696989, ; 615: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 242
	i32 3710506397, ; 616: Syncfusion.Compression.NET => 0xdd29d59d => 191
	i32 3716563718, ; 617: System.Runtime.Intrinsics => 0xdd864306 => 107
	i32 3718780102, ; 618: Xamarin.AndroidX.Annotation => 0xdda814c6 => 226
	i32 3724971120, ; 619: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 268
	i32 3732100267, ; 620: System.Net.NameResolution => 0xde7354ab => 66
	i32 3737834244, ; 621: System.Net.Http.Json.dll => 0xdecad304 => 62
	i32 3748608112, ; 622: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 219
	i32 3751444290, ; 623: System.Xml.XPath => 0xdf9a7f42 => 159
	i32 3772175043, ; 624: Syncfusion.Maui.Toolkit.resources => 0xe0d6d2c3 => 215
	i32 3786282454, ; 625: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 235
	i32 3792276235, ; 626: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 627: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 183
	i32 3802395368, ; 628: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 629: System.Net.WebProxy => 0xe3a54a09 => 77
	i32 3823082795, ; 630: System.Security.Cryptography.dll => 0xe3df9d2b => 125
	i32 3829621856, ; 631: System.Numerics.dll => 0xe4436460 => 82
	i32 3841636137, ; 632: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 177
	i32 3844307129, ; 633: System.Net.Mail.dll => 0xe52378b9 => 65
	i32 3849253459, ; 634: System.Runtime.InteropServices.dll => 0xe56ef253 => 106
	i32 3870376305, ; 635: System.Net.HttpListener.dll => 0xe6b14171 => 64
	i32 3873536506, ; 636: System.Security.Principal => 0xe6e179fa => 127
	i32 3875112723, ; 637: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 121
	i32 3885497537, ; 638: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 76
	i32 3885922214, ; 639: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 283
	i32 3888767677, ; 640: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 273
	i32 3889960447, ; 641: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 335
	i32 3896106733, ; 642: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 643: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 241
	i32 3901907137, ; 644: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 645: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 43
	i32 3921031405, ; 646: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 286
	i32 3928044579, ; 647: System.Xml.ReaderWriter => 0xea213423 => 155
	i32 3930554604, ; 648: System.Security.Principal.dll => 0xea4780ec => 127
	i32 3931092270, ; 649: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 271
	i32 3945713374, ; 650: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 651: System.Text.Encoding.CodePages => 0xebac8bfe => 132
	i32 3955647286, ; 652: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 229
	i32 3959773229, ; 653: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 260
	i32 3980434154, ; 654: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 330
	i32 3982571493, ; 655: en-US/Syncfusion.Maui.Inputs.resources.dll => 0xed6137e5 => 339
	i32 3987592930, ; 656: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 312
	i32 4003436829, ; 657: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 658: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 228
	i32 4025784931, ; 659: System.Memory => 0xeff49a63 => 61
	i32 4046471985, ; 660: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 185
	i32 4054681211, ; 661: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 89
	i32 4068434129, ; 662: System.Private.Xml.Linq.dll => 0xf27f60d1 => 86
	i32 4073602200, ; 663: System.Threading.dll => 0xf2ce3c98 => 147
	i32 4094352644, ; 664: Microsoft.Maui.Essentials.dll => 0xf40add04 => 187
	i32 4099507663, ; 665: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 666: System.Private.Uri => 0xf462c30d => 85
	i32 4101593132, ; 667: Xamarin.AndroidX.Emoji2 => 0xf479582c => 249
	i32 4102112229, ; 668: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 325
	i32 4125707920, ; 669: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 320
	i32 4126470640, ; 670: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 176
	i32 4127667938, ; 671: System.IO.FileSystem.Watcher => 0xf60736e2 => 49
	i32 4130442656, ; 672: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 673: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 89
	i32 4150914736, ; 674: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 332
	i32 4151237749, ; 675: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 676: System.Xml.XmlSerializer => 0xf7e95c85 => 161
	i32 4161255271, ; 677: System.Reflection.TypeExtensions => 0xf807b767 => 95
	i32 4164802419, ; 678: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 49
	i32 4181436372, ; 679: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 112
	i32 4182413190, ; 680: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 265
	i32 4182880526, ; 681: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 0xf951b10e => 343
	i32 4185676441, ; 682: System.Security => 0xf97c5a99 => 129
	i32 4196529839, ; 683: System.Net.WebClient.dll => 0xfa21f6af => 75
	i32 4213026141, ; 684: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 219
	i32 4256097574, ; 685: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 242
	i32 4258378803, ; 686: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 264
	i32 4260525087, ; 687: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 688: Microsoft.Maui.Controls.dll => 0xfea12dee => 184
	i32 4274976490, ; 689: System.Runtime.Numerics => 0xfecef6ea => 109
	i32 4292120959, ; 690: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 265
	i32 4294763496 ; 691: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 251
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [692 x i32] [
	i32 67, ; 0
	i32 66, ; 1
	i32 107, ; 2
	i32 215, ; 3
	i32 261, ; 4
	i32 295, ; 5
	i32 47, ; 6
	i32 79, ; 7
	i32 144, ; 8
	i32 29, ; 9
	i32 336, ; 10
	i32 123, ; 11
	i32 188, ; 12
	i32 101, ; 13
	i32 279, ; 14
	i32 106, ; 15
	i32 279, ; 16
	i32 138, ; 17
	i32 299, ; 18
	i32 76, ; 19
	i32 123, ; 20
	i32 13, ; 21
	i32 235, ; 22
	i32 196, ; 23
	i32 131, ; 24
	i32 281, ; 25
	i32 150, ; 26
	i32 333, ; 27
	i32 334, ; 28
	i32 18, ; 29
	i32 233, ; 30
	i32 341, ; 31
	i32 26, ; 32
	i32 255, ; 33
	i32 1, ; 34
	i32 58, ; 35
	i32 41, ; 36
	i32 90, ; 37
	i32 218, ; 38
	i32 206, ; 39
	i32 195, ; 40
	i32 238, ; 41
	i32 146, ; 42
	i32 257, ; 43
	i32 254, ; 44
	i32 305, ; 45
	i32 53, ; 46
	i32 205, ; 47
	i32 68, ; 48
	i32 205, ; 49
	i32 333, ; 50
	i32 224, ; 51
	i32 82, ; 52
	i32 318, ; 53
	i32 256, ; 54
	i32 317, ; 55
	i32 130, ; 56
	i32 54, ; 57
	i32 208, ; 58
	i32 197, ; 59
	i32 148, ; 60
	i32 73, ; 61
	i32 337, ; 62
	i32 144, ; 63
	i32 61, ; 64
	i32 145, ; 65
	i32 345, ; 66
	i32 164, ; 67
	i32 329, ; 68
	i32 239, ; 69
	i32 12, ; 70
	i32 252, ; 71
	i32 124, ; 72
	i32 151, ; 73
	i32 202, ; 74
	i32 112, ; 75
	i32 165, ; 76
	i32 163, ; 77
	i32 254, ; 78
	i32 267, ; 79
	i32 338, ; 80
	i32 83, ; 81
	i32 316, ; 82
	i32 310, ; 83
	i32 182, ; 84
	i32 190, ; 85
	i32 149, ; 86
	i32 299, ; 87
	i32 59, ; 88
	i32 178, ; 89
	i32 50, ; 90
	i32 102, ; 91
	i32 113, ; 92
	i32 39, ; 93
	i32 292, ; 94
	i32 290, ; 95
	i32 119, ; 96
	i32 324, ; 97
	i32 51, ; 98
	i32 43, ; 99
	i32 118, ; 100
	i32 172, ; 101
	i32 244, ; 102
	i32 322, ; 103
	i32 216, ; 104
	i32 250, ; 105
	i32 80, ; 106
	i32 135, ; 107
	i32 286, ; 108
	i32 231, ; 109
	i32 8, ; 110
	i32 337, ; 111
	i32 72, ; 112
	i32 304, ; 113
	i32 154, ; 114
	i32 301, ; 115
	i32 153, ; 116
	i32 208, ; 117
	i32 91, ; 118
	i32 296, ; 119
	i32 44, ; 120
	i32 319, ; 121
	i32 307, ; 122
	i32 300, ; 123
	i32 108, ; 124
	i32 128, ; 125
	i32 25, ; 126
	i32 221, ; 127
	i32 71, ; 128
	i32 54, ; 129
	i32 45, ; 130
	i32 328, ; 131
	i32 181, ; 132
	i32 245, ; 133
	i32 22, ; 134
	i32 259, ; 135
	i32 85, ; 136
	i32 42, ; 137
	i32 159, ; 138
	i32 70, ; 139
	i32 272, ; 140
	i32 3, ; 141
	i32 41, ; 142
	i32 338, ; 143
	i32 62, ; 144
	i32 340, ; 145
	i32 16, ; 146
	i32 211, ; 147
	i32 52, ; 148
	i32 194, ; 149
	i32 331, ; 150
	i32 295, ; 151
	i32 104, ; 152
	i32 300, ; 153
	i32 293, ; 154
	i32 256, ; 155
	i32 33, ; 156
	i32 157, ; 157
	i32 84, ; 158
	i32 31, ; 159
	i32 12, ; 160
	i32 50, ; 161
	i32 55, ; 162
	i32 276, ; 163
	i32 35, ; 164
	i32 177, ; 165
	i32 306, ; 166
	i32 294, ; 167
	i32 229, ; 168
	i32 34, ; 169
	i32 57, ; 170
	i32 263, ; 171
	i32 173, ; 172
	i32 17, ; 173
	i32 297, ; 174
	i32 163, ; 175
	i32 319, ; 176
	i32 262, ; 177
	i32 209, ; 178
	i32 180, ; 179
	i32 289, ; 180
	i32 325, ; 181
	i32 152, ; 182
	i32 285, ; 183
	i32 340, ; 184
	i32 213, ; 185
	i32 270, ; 186
	i32 323, ; 187
	i32 231, ; 188
	i32 28, ; 189
	i32 51, ; 190
	i32 321, ; 191
	i32 290, ; 192
	i32 207, ; 193
	i32 5, ; 194
	i32 305, ; 195
	i32 280, ; 196
	i32 284, ; 197
	i32 236, ; 198
	i32 301, ; 199
	i32 228, ; 200
	i32 247, ; 201
	i32 210, ; 202
	i32 84, ; 203
	i32 289, ; 204
	i32 60, ; 205
	i32 111, ; 206
	i32 56, ; 207
	i32 201, ; 208
	i32 198, ; 209
	i32 335, ; 210
	i32 189, ; 211
	i32 276, ; 212
	i32 98, ; 213
	i32 19, ; 214
	i32 240, ; 215
	i32 110, ; 216
	i32 100, ; 217
	i32 101, ; 218
	i32 303, ; 219
	i32 103, ; 220
	i32 293, ; 221
	i32 70, ; 222
	i32 37, ; 223
	i32 31, ; 224
	i32 214, ; 225
	i32 102, ; 226
	i32 72, ; 227
	i32 309, ; 228
	i32 9, ; 229
	i32 122, ; 230
	i32 45, ; 231
	i32 230, ; 232
	i32 182, ; 233
	i32 9, ; 234
	i32 42, ; 235
	i32 4, ; 236
	i32 277, ; 237
	i32 313, ; 238
	i32 308, ; 239
	i32 30, ; 240
	i32 193, ; 241
	i32 137, ; 242
	i32 91, ; 243
	i32 92, ; 244
	i32 328, ; 245
	i32 48, ; 246
	i32 140, ; 247
	i32 111, ; 248
	i32 139, ; 249
	i32 246, ; 250
	i32 197, ; 251
	i32 114, ; 252
	i32 193, ; 253
	i32 294, ; 254
	i32 156, ; 255
	i32 342, ; 256
	i32 75, ; 257
	i32 217, ; 258
	i32 78, ; 259
	i32 266, ; 260
	i32 36, ; 261
	i32 288, ; 262
	i32 250, ; 263
	i32 243, ; 264
	i32 63, ; 265
	i32 137, ; 266
	i32 15, ; 267
	i32 203, ; 268
	i32 115, ; 269
	i32 282, ; 270
	i32 291, ; 271
	i32 238, ; 272
	i32 47, ; 273
	i32 69, ; 274
	i32 217, ; 275
	i32 79, ; 276
	i32 125, ; 277
	i32 93, ; 278
	i32 120, ; 279
	i32 298, ; 280
	i32 26, ; 281
	i32 341, ; 282
	i32 259, ; 283
	i32 96, ; 284
	i32 27, ; 285
	i32 234, ; 286
	i32 213, ; 287
	i32 326, ; 288
	i32 304, ; 289
	i32 148, ; 290
	i32 168, ; 291
	i32 218, ; 292
	i32 216, ; 293
	i32 4, ; 294
	i32 97, ; 295
	i32 32, ; 296
	i32 92, ; 297
	i32 281, ; 298
	i32 178, ; 299
	i32 21, ; 300
	i32 40, ; 301
	i32 199, ; 302
	i32 169, ; 303
	i32 320, ; 304
	i32 252, ; 305
	i32 312, ; 306
	i32 266, ; 307
	i32 297, ; 308
	i32 291, ; 309
	i32 271, ; 310
	i32 2, ; 311
	i32 133, ; 312
	i32 110, ; 313
	i32 344, ; 314
	i32 179, ; 315
	i32 0, ; 316
	i32 332, ; 317
	i32 221, ; 318
	i32 329, ; 319
	i32 57, ; 320
	i32 94, ; 321
	i32 211, ; 322
	i32 311, ; 323
	i32 38, ; 324
	i32 232, ; 325
	i32 344, ; 326
	i32 25, ; 327
	i32 93, ; 328
	i32 88, ; 329
	i32 98, ; 330
	i32 10, ; 331
	i32 86, ; 332
	i32 99, ; 333
	i32 278, ; 334
	i32 174, ; 335
	i32 298, ; 336
	i32 223, ; 337
	i32 308, ; 338
	i32 7, ; 339
	i32 263, ; 340
	i32 303, ; 341
	i32 220, ; 342
	i32 87, ; 343
	i32 258, ; 344
	i32 153, ; 345
	i32 307, ; 346
	i32 32, ; 347
	i32 115, ; 348
	i32 81, ; 349
	i32 20, ; 350
	i32 212, ; 351
	i32 11, ; 352
	i32 161, ; 353
	i32 3, ; 354
	i32 201, ; 355
	i32 186, ; 356
	i32 315, ; 357
	i32 181, ; 358
	i32 179, ; 359
	i32 83, ; 360
	i32 302, ; 361
	i32 63, ; 362
	i32 317, ; 363
	i32 285, ; 364
	i32 142, ; 365
	i32 267, ; 366
	i32 156, ; 367
	i32 40, ; 368
	i32 116, ; 369
	i32 175, ; 370
	i32 222, ; 371
	i32 311, ; 372
	i32 274, ; 373
	i32 130, ; 374
	i32 74, ; 375
	i32 65, ; 376
	i32 321, ; 377
	i32 171, ; 378
	i32 226, ; 379
	i32 142, ; 380
	i32 105, ; 381
	i32 150, ; 382
	i32 69, ; 383
	i32 192, ; 384
	i32 155, ; 385
	i32 174, ; 386
	i32 120, ; 387
	i32 126, ; 388
	i32 316, ; 389
	i32 151, ; 390
	i32 249, ; 391
	i32 343, ; 392
	i32 140, ; 393
	i32 236, ; 394
	i32 339, ; 395
	i32 313, ; 396
	i32 20, ; 397
	i32 14, ; 398
	i32 134, ; 399
	i32 74, ; 400
	i32 58, ; 401
	i32 239, ; 402
	i32 166, ; 403
	i32 167, ; 404
	i32 184, ; 405
	i32 15, ; 406
	i32 73, ; 407
	i32 6, ; 408
	i32 189, ; 409
	i32 23, ; 410
	i32 261, ; 411
	i32 194, ; 412
	i32 220, ; 413
	i32 90, ; 414
	i32 314, ; 415
	i32 1, ; 416
	i32 135, ; 417
	i32 262, ; 418
	i32 284, ; 419
	i32 133, ; 420
	i32 68, ; 421
	i32 145, ; 422
	i32 323, ; 423
	i32 302, ; 424
	i32 253, ; 425
	i32 180, ; 426
	i32 87, ; 427
	i32 95, ; 428
	i32 243, ; 429
	i32 248, ; 430
	i32 318, ; 431
	i32 30, ; 432
	i32 44, ; 433
	i32 257, ; 434
	i32 222, ; 435
	i32 108, ; 436
	i32 157, ; 437
	i32 34, ; 438
	i32 22, ; 439
	i32 113, ; 440
	i32 56, ; 441
	i32 282, ; 442
	i32 209, ; 443
	i32 143, ; 444
	i32 117, ; 445
	i32 119, ; 446
	i32 109, ; 447
	i32 224, ; 448
	i32 138, ; 449
	i32 230, ; 450
	i32 53, ; 451
	i32 200, ; 452
	i32 104, ; 453
	i32 324, ; 454
	i32 185, ; 455
	i32 186, ; 456
	i32 132, ; 457
	i32 210, ; 458
	i32 296, ; 459
	i32 287, ; 460
	i32 275, ; 461
	i32 330, ; 462
	i32 253, ; 463
	i32 188, ; 464
	i32 158, ; 465
	i32 309, ; 466
	i32 240, ; 467
	i32 162, ; 468
	i32 131, ; 469
	i32 275, ; 470
	i32 160, ; 471
	i32 322, ; 472
	i32 264, ; 473
	i32 212, ; 474
	i32 139, ; 475
	i32 287, ; 476
	i32 283, ; 477
	i32 168, ; 478
	i32 187, ; 479
	i32 192, ; 480
	i32 225, ; 481
	i32 214, ; 482
	i32 292, ; 483
	i32 39, ; 484
	i32 251, ; 485
	i32 80, ; 486
	i32 55, ; 487
	i32 36, ; 488
	i32 96, ; 489
	i32 165, ; 490
	i32 171, ; 491
	i32 199, ; 492
	i32 288, ; 493
	i32 81, ; 494
	i32 227, ; 495
	i32 97, ; 496
	i32 29, ; 497
	i32 158, ; 498
	i32 18, ; 499
	i32 126, ; 500
	i32 118, ; 501
	i32 247, ; 502
	i32 278, ; 503
	i32 260, ; 504
	i32 207, ; 505
	i32 280, ; 506
	i32 164, ; 507
	i32 255, ; 508
	i32 345, ; 509
	i32 277, ; 510
	i32 268, ; 511
	i32 169, ; 512
	i32 16, ; 513
	i32 198, ; 514
	i32 143, ; 515
	i32 315, ; 516
	i32 172, ; 517
	i32 124, ; 518
	i32 117, ; 519
	i32 37, ; 520
	i32 114, ; 521
	i32 46, ; 522
	i32 141, ; 523
	i32 116, ; 524
	i32 204, ; 525
	i32 33, ; 526
	i32 196, ; 527
	i32 173, ; 528
	i32 94, ; 529
	i32 52, ; 530
	i32 204, ; 531
	i32 269, ; 532
	i32 128, ; 533
	i32 152, ; 534
	i32 24, ; 535
	i32 160, ; 536
	i32 246, ; 537
	i32 147, ; 538
	i32 206, ; 539
	i32 103, ; 540
	i32 195, ; 541
	i32 88, ; 542
	i32 234, ; 543
	i32 59, ; 544
	i32 141, ; 545
	i32 99, ; 546
	i32 5, ; 547
	i32 13, ; 548
	i32 121, ; 549
	i32 134, ; 550
	i32 27, ; 551
	i32 310, ; 552
	i32 203, ; 553
	i32 71, ; 554
	i32 244, ; 555
	i32 24, ; 556
	i32 190, ; 557
	i32 232, ; 558
	i32 273, ; 559
	i32 270, ; 560
	i32 327, ; 561
	i32 136, ; 562
	i32 225, ; 563
	i32 241, ; 564
	i32 167, ; 565
	i32 274, ; 566
	i32 306, ; 567
	i32 202, ; 568
	i32 100, ; 569
	i32 122, ; 570
	i32 245, ; 571
	i32 176, ; 572
	i32 162, ; 573
	i32 166, ; 574
	i32 248, ; 575
	i32 38, ; 576
	i32 183, ; 577
	i32 314, ; 578
	i32 17, ; 579
	i32 170, ; 580
	i32 327, ; 581
	i32 326, ; 582
	i32 136, ; 583
	i32 149, ; 584
	i32 0, ; 585
	i32 237, ; 586
	i32 154, ; 587
	i32 129, ; 588
	i32 19, ; 589
	i32 64, ; 590
	i32 200, ; 591
	i32 146, ; 592
	i32 46, ; 593
	i32 334, ; 594
	i32 223, ; 595
	i32 78, ; 596
	i32 60, ; 597
	i32 105, ; 598
	i32 272, ; 599
	i32 191, ; 600
	i32 227, ; 601
	i32 48, ; 602
	i32 258, ; 603
	i32 331, ; 604
	i32 269, ; 605
	i32 14, ; 606
	i32 175, ; 607
	i32 67, ; 608
	i32 170, ; 609
	i32 342, ; 610
	i32 233, ; 611
	i32 237, ; 612
	i32 336, ; 613
	i32 77, ; 614
	i32 242, ; 615
	i32 191, ; 616
	i32 107, ; 617
	i32 226, ; 618
	i32 268, ; 619
	i32 66, ; 620
	i32 62, ; 621
	i32 219, ; 622
	i32 159, ; 623
	i32 215, ; 624
	i32 235, ; 625
	i32 10, ; 626
	i32 183, ; 627
	i32 11, ; 628
	i32 77, ; 629
	i32 125, ; 630
	i32 82, ; 631
	i32 177, ; 632
	i32 65, ; 633
	i32 106, ; 634
	i32 64, ; 635
	i32 127, ; 636
	i32 121, ; 637
	i32 76, ; 638
	i32 283, ; 639
	i32 273, ; 640
	i32 335, ; 641
	i32 8, ; 642
	i32 241, ; 643
	i32 2, ; 644
	i32 43, ; 645
	i32 286, ; 646
	i32 155, ; 647
	i32 127, ; 648
	i32 271, ; 649
	i32 23, ; 650
	i32 132, ; 651
	i32 229, ; 652
	i32 260, ; 653
	i32 330, ; 654
	i32 339, ; 655
	i32 312, ; 656
	i32 28, ; 657
	i32 228, ; 658
	i32 61, ; 659
	i32 185, ; 660
	i32 89, ; 661
	i32 86, ; 662
	i32 147, ; 663
	i32 187, ; 664
	i32 35, ; 665
	i32 85, ; 666
	i32 249, ; 667
	i32 325, ; 668
	i32 320, ; 669
	i32 176, ; 670
	i32 49, ; 671
	i32 6, ; 672
	i32 89, ; 673
	i32 332, ; 674
	i32 21, ; 675
	i32 161, ; 676
	i32 95, ; 677
	i32 49, ; 678
	i32 112, ; 679
	i32 265, ; 680
	i32 343, ; 681
	i32 129, ; 682
	i32 75, ; 683
	i32 219, ; 684
	i32 242, ; 685
	i32 264, ; 686
	i32 7, ; 687
	i32 184, ; 688
	i32 109, ; 689
	i32 265, ; 690
	i32 251 ; 691
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ df9aaf29a52042a4fbf800daf2f3a38964b9e958"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
