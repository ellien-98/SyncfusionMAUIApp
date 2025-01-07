; ModuleID = 'marshal_methods.armeabi-v7a.ll'
source_filename = "marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [344 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [682 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 68
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 67
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 108
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 259
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 293
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 48
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 80
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 145
	i32 66541672, ; 8: System.Diagnostics.StackTrace => 0x3f75868 => 30
	i32 67008169, ; 9: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 334
	i32 68219467, ; 10: System.Security.Cryptography.Primitives => 0x410f24b => 124
	i32 72070932, ; 11: Microsoft.Maui.Graphics.dll => 0x44bb714 => 189
	i32 82292897, ; 12: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 102
	i32 101534019, ; 13: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 277
	i32 117431740, ; 14: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 15: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 277
	i32 122350210, ; 16: System.Threading.Channels.dll => 0x74aea82 => 139
	i32 134690465, ; 17: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 297
	i32 142721839, ; 18: System.Net.WebHeaderCollection => 0x881c32f => 77
	i32 149972175, ; 19: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 124
	i32 159306688, ; 20: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 21: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 233
	i32 172961045, ; 22: Syncfusion.Maui.Core.dll => 0xa4f2d15 => 197
	i32 176265551, ; 23: System.ServiceProcess => 0xa81994f => 132
	i32 182336117, ; 24: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 279
	i32 184328833, ; 25: System.ValueTuple.dll => 0xafca281 => 151
	i32 195452805, ; 26: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 331
	i32 199333315, ; 27: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 332
	i32 205061960, ; 28: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 29: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 231
	i32 219383992, ; 30: en-US\Syncfusion.Maui.Scheduler.resources => 0xd1388b8 => 339
	i32 220171995, ; 31: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 32: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 253
	i32 230752869, ; 33: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 34: System.Linq.Parallel => 0xdcb05c4 => 59
	i32 231814094, ; 35: System.Globalization => 0xdd133ce => 42
	i32 246610117, ; 36: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 91
	i32 257818971, ; 37: Syncfusion.Pdf.NET.dll => 0xf5e015b => 217
	i32 258215456, ; 38: Syncfusion.Maui.PdfToImageConverter.dll => 0xf640e20 => 207
	i32 259487786, ; 39: Syncfusion.Maui.Charts => 0xf77782a => 196
	i32 261689757, ; 40: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 236
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 147
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 255
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 252
	i32 280992041, ; 44: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 303
	i32 291076382, ; 45: System.IO.Pipes.AccessControl.dll => 0x1159791e => 54
	i32 297101052, ; 46: Syncfusion.Maui.Maps.dll => 0x11b566fc => 206
	i32 298918909, ; 47: System.Net.Ping.dll => 0x11d123fd => 69
	i32 311908887, ; 48: Syncfusion.Maui.Maps => 0x12975a17 => 206
	i32 317674968, ; 49: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 331
	i32 318968648, ; 50: Xamarin.AndroidX.Activity.dll => 0x13031348 => 222
	i32 321597661, ; 51: System.Numerics => 0x132b30dd => 83
	i32 336156722, ; 52: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 316
	i32 342366114, ; 53: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 254
	i32 356389973, ; 54: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 315
	i32 360082299, ; 55: System.ServiceModel.Web => 0x15766b7b => 131
	i32 367780167, ; 56: System.IO.Pipes => 0x15ebe147 => 55
	i32 374376850, ; 57: Syncfusion.Maui.Popup.dll => 0x16508992 => 209
	i32 374794515, ; 58: Syncfusion.Maui.Data.dll => 0x1656e913 => 198
	i32 374914964, ; 59: System.Transactions.Local => 0x1658bf94 => 149
	i32 375677976, ; 60: System.Net.ServicePoint.dll => 0x16646418 => 74
	i32 376991480, ; 61: en-US/Syncfusion.Maui.Buttons.resources.dll => 0x16786ef8 => 335
	i32 379916513, ; 62: System.Threading.Thread.dll => 0x16a510e1 => 145
	i32 385762202, ; 63: System.Memory.dll => 0x16fe439a => 62
	i32 392610295, ; 64: System.Threading.ThreadPool.dll => 0x1766c1f7 => 146
	i32 395744057, ; 65: _Microsoft.Android.Resource.Designer => 0x17969339 => 340
	i32 403441872, ; 66: WindowsBase => 0x180c08d0 => 165
	i32 435591531, ; 67: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 327
	i32 441335492, ; 68: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 237
	i32 442565967, ; 69: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 70: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 250
	i32 451504562, ; 71: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 125
	i32 456227837, ; 72: System.Web.HttpUtility.dll => 0x1b317bfd => 152
	i32 456681651, ; 73: Syncfusion.Maui.GridCommon.dll => 0x1b3868b3 => 203
	i32 459347974, ; 74: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 113
	i32 465846621, ; 75: mscorlib => 0x1bc4415d => 166
	i32 469710990, ; 76: System.dll => 0x1bff388e => 164
	i32 476646585, ; 77: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 252
	i32 486930444, ; 78: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 265
	i32 488065789, ; 79: en-US/Syncfusion.Maui.DataGrid.resources.dll => 0x1d174afd => 336
	i32 498788369, ; 80: System.ObjectModel => 0x1dbae811 => 84
	i32 500358224, ; 81: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 314
	i32 503918385, ; 82: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 308
	i32 513247710, ; 83: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 183
	i32 525008092, ; 84: SkiaSharp.dll => 0x1f4afcdc => 191
	i32 526420162, ; 85: System.Transactions.dll => 0x1f6088c2 => 150
	i32 527452488, ; 86: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 297
	i32 530272170, ; 87: System.Linq.Queryable => 0x1f9b4faa => 60
	i32 539058512, ; 88: Microsoft.Extensions.Logging => 0x20216150 => 179
	i32 540030774, ; 89: System.IO.FileSystem.dll => 0x20303736 => 51
	i32 545304856, ; 90: System.Runtime.Extensions => 0x2080b118 => 103
	i32 546455878, ; 91: System.Runtime.Serialization.Xml => 0x20924146 => 114
	i32 549171840, ; 92: System.Globalization.Calendars => 0x20bbb280 => 40
	i32 557405415, ; 93: Jsr305Binding => 0x213954e7 => 290
	i32 569601784, ; 94: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 288
	i32 577335427, ; 95: System.Security.Cryptography.Cng => 0x22697083 => 120
	i32 592146354, ; 96: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 322
	i32 601371474, ; 97: System.IO.IsolatedStorage.dll => 0x23d83352 => 52
	i32 605376203, ; 98: System.IO.Compression.FileSystem => 0x24154ecb => 44
	i32 613668793, ; 99: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 119
	i32 619197891, ; 100: BitMiracle.LibTiff.NET => 0x24e835c3 => 173
	i32 627609679, ; 101: Xamarin.AndroidX.CustomView => 0x2568904f => 242
	i32 627931235, ; 102: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 320
	i32 638254240, ; 103: Syncfusion.Maui.TreeMap.dll => 0x260afca0 => 215
	i32 639843206, ; 104: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 248
	i32 643868501, ; 105: System.Net => 0x2660a755 => 81
	i32 662205335, ; 106: System.Text.Encodings.Web.dll => 0x27787397 => 136
	i32 663517072, ; 107: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 284
	i32 666292255, ; 108: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 229
	i32 672442732, ; 109: System.Collections.Concurrent => 0x2814a96c => 8
	i32 676419328, ; 110: en-US\Syncfusion.Maui.Buttons.resources => 0x28515700 => 335
	i32 683518922, ; 111: System.Net.Security => 0x28bdabca => 73
	i32 688181140, ; 112: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 302
	i32 690569205, ; 113: System.Xml.Linq.dll => 0x29293ff5 => 155
	i32 691348768, ; 114: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 299
	i32 693804605, ; 115: System.Windows => 0x295a9e3d => 154
	i32 695450347, ; 116: Syncfusion.Maui.Popup => 0x2973baeb => 209
	i32 699345723, ; 117: System.Reflection.Emit => 0x29af2b3b => 92
	i32 700284507, ; 118: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 294
	i32 700358131, ; 119: System.IO.Compression.ZipFile => 0x29be9df3 => 45
	i32 706645707, ; 120: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 317
	i32 709557578, ; 121: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 305
	i32 720511267, ; 122: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 298
	i32 722857257, ; 123: System.Runtime.Loader.dll => 0x2b15ed29 => 109
	i32 735137430, ; 124: System.Security.SecureString.dll => 0x2bd14e96 => 129
	i32 752232764, ; 125: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 126: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 219
	i32 759454413, ; 127: System.Net.Requests => 0x2d445acd => 72
	i32 762598435, ; 128: System.IO.Pipes.dll => 0x2d745423 => 55
	i32 775507847, ; 129: System.IO.Compression => 0x2e394f87 => 46
	i32 777317022, ; 130: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 326
	i32 789151979, ; 131: Microsoft.Extensions.Options => 0x2f0980eb => 182
	i32 790371945, ; 132: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 243
	i32 804715423, ; 133: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 134: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 257
	i32 823281589, ; 135: System.Private.Uri.dll => 0x311247b5 => 86
	i32 830298997, ; 136: System.IO.Compression.Brotli => 0x317d5b75 => 43
	i32 832635846, ; 137: System.Xml.XPath.dll => 0x31a103c6 => 160
	i32 834051424, ; 138: System.Net.Quic => 0x31b69d60 => 71
	i32 843511501, ; 139: Xamarin.AndroidX.Print => 0x3246f6cd => 270
	i32 873119928, ; 140: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 141: System.Globalization.dll => 0x34505120 => 42
	i32 878833237, ; 142: en-US\Syncfusion.Maui.DataGrid.resources => 0x3461ee55 => 336
	i32 878954865, ; 143: System.Net.Http.Json => 0x3463c971 => 63
	i32 884721263, ; 144: en-US\Syncfusion.Maui.PdfViewer.resources => 0x34bbc66f => 338
	i32 904024072, ; 145: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 908505502, ; 146: Syncfusion.Maui.SignaturePad => 0x3626b19e => 212
	i32 911108515, ; 147: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 53
	i32 919194361, ; 148: Syncfusion.Maui.Calendar.dll => 0x36c9caf9 => 195
	i32 926902833, ; 149: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 329
	i32 928116545, ; 150: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 293
	i32 952186615, ; 151: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 105
	i32 956575887, ; 152: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 298
	i32 966729478, ; 153: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 291
	i32 967690846, ; 154: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 254
	i32 975236339, ; 155: System.Diagnostics.Tracing => 0x3a20ecf3 => 34
	i32 975874589, ; 156: System.Xml.XDocument => 0x3a2aaa1d => 158
	i32 986514023, ; 157: System.Private.DataContractSerialization.dll => 0x3acd0267 => 85
	i32 987214855, ; 158: System.Diagnostics.Tools => 0x3ad7b407 => 32
	i32 992768348, ; 159: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 160: System.IO.FileSystem => 0x3b45fb35 => 51
	i32 1001831731, ; 161: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 56
	i32 1012816738, ; 162: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 274
	i32 1019214401, ; 163: System.Drawing => 0x3cbffa41 => 36
	i32 1028951442, ; 164: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 178
	i32 1029334545, ; 165: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 304
	i32 1031528504, ; 166: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 292
	i32 1035644815, ; 167: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 227
	i32 1036536393, ; 168: System.Drawing.Primitives.dll => 0x3dc84a49 => 35
	i32 1044663988, ; 169: System.Linq.Expressions.dll => 0x3e444eb4 => 58
	i32 1052210849, ; 170: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 261
	i32 1067306892, ; 171: GoogleGson => 0x3f9dcf8c => 174
	i32 1082857460, ; 172: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 173: Xamarin.Kotlin.StdLib => 0x409e66d8 => 295
	i32 1098259244, ; 174: System => 0x41761b2c => 164
	i32 1118262833, ; 175: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 317
	i32 1121599056, ; 176: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 260
	i32 1126950560, ; 177: Syncfusion.Maui.PullToRefresh.dll => 0x432be6a0 => 210
	i32 1127624469, ; 178: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 181
	i32 1149092582, ; 179: Xamarin.AndroidX.Window => 0x447dc2e6 => 287
	i32 1168523401, ; 180: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 323
	i32 1170634674, ; 181: System.Web.dll => 0x45c677b2 => 153
	i32 1175144683, ; 182: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 283
	i32 1175781585, ; 183: en-US/Syncfusion.Maui.PdfViewer.resources.dll => 0x461500d1 => 338
	i32 1176943841, ; 184: Syncfusion.Maui.TabView => 0x4626bce1 => 214
	i32 1178241025, ; 185: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 268
	i32 1203215381, ; 186: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 321
	i32 1204270330, ; 187: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 229
	i32 1208641965, ; 188: System.Diagnostics.Process => 0x480a69ad => 29
	i32 1219128291, ; 189: System.IO.IsolatedStorage => 0x48aa6be3 => 52
	i32 1234928153, ; 190: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 319
	i32 1243150071, ; 191: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 288
	i32 1246475894, ; 192: Syncfusion.Maui.PdfViewer.dll => 0x4a4bb676 => 208
	i32 1253011324, ; 193: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 194: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 303
	i32 1264511973, ; 195: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 278
	i32 1267360935, ; 196: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 282
	i32 1273260888, ; 197: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 234
	i32 1275534314, ; 198: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 299
	i32 1278448581, ; 199: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 226
	i32 1293217323, ; 200: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 245
	i32 1301909732, ; 201: Syncfusion.Maui.Scheduler => 0x4d9990e4 => 211
	i32 1309188875, ; 202: System.Private.DataContractSerialization => 0x4e08a30b => 85
	i32 1322716291, ; 203: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 287
	i32 1324164729, ; 204: System.Linq => 0x4eed2679 => 61
	i32 1335329327, ; 205: System.Runtime.Serialization.Json.dll => 0x4f97822f => 112
	i32 1364015309, ; 206: System.IO => 0x514d38cd => 57
	i32 1364190142, ; 207: Syncfusion.Maui.Gauges => 0x514fe3be => 202
	i32 1366448151, ; 208: Syncfusion.Maui.DataForm => 0x51725817 => 199
	i32 1373134921, ; 209: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 333
	i32 1375879472, ; 210: Nager.Country.dll => 0x52024130 => 190
	i32 1376866003, ; 211: Xamarin.AndroidX.SavedState => 0x52114ed3 => 274
	i32 1379779777, ; 212: System.Resources.ResourceManager => 0x523dc4c1 => 99
	i32 1402170036, ; 213: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 214: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 238
	i32 1408764838, ; 215: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 111
	i32 1411638395, ; 216: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 101
	i32 1422545099, ; 217: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 102
	i32 1430672901, ; 218: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 301
	i32 1434145427, ; 219: System.Runtime.Handles => 0x557b5293 => 104
	i32 1435222561, ; 220: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 291
	i32 1439761251, ; 221: System.Net.Quic.dll => 0x55d10363 => 71
	i32 1452070440, ; 222: System.Formats.Asn1.dll => 0x568cd628 => 38
	i32 1453312822, ; 223: System.Diagnostics.Tools.dll => 0x569fcb36 => 32
	i32 1457743152, ; 224: System.Runtime.Extensions.dll => 0x56e36530 => 103
	i32 1458022317, ; 225: System.Net.Security.dll => 0x56e7a7ad => 73
	i32 1461004990, ; 226: es\Microsoft.Maui.Controls.resources => 0x57152abe => 307
	i32 1461234159, ; 227: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 228: System.Security.Cryptography.OpenSsl => 0x57201017 => 123
	i32 1462112819, ; 229: System.IO.Compression.dll => 0x57261233 => 46
	i32 1469204771, ; 230: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 228
	i32 1470490898, ; 231: Microsoft.Extensions.Primitives => 0x57a5e912 => 183
	i32 1479771757, ; 232: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 233: System.IO.Compression.Brotli.dll => 0x583e844f => 43
	i32 1487239319, ; 234: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 235: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 275
	i32 1493001747, ; 236: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 311
	i32 1514721132, ; 237: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 306
	i32 1536373174, ; 238: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 31
	i32 1537889881, ; 239: Syncfusion.Maui.Buttons.dll => 0x5baa5659 => 194
	i32 1543031311, ; 240: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 138
	i32 1543355203, ; 241: System.Reflection.Emit.dll => 0x5bfdbb43 => 92
	i32 1550322496, ; 242: System.Reflection.Extensions.dll => 0x5c680b40 => 93
	i32 1551623176, ; 243: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 326
	i32 1565862583, ; 244: System.IO.FileSystem.Primitives => 0x5d552ab7 => 49
	i32 1566207040, ; 245: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 141
	i32 1573704789, ; 246: System.Runtime.Serialization.Json => 0x5dccd455 => 112
	i32 1580037396, ; 247: System.Threading.Overlapped => 0x5e2d7514 => 140
	i32 1582372066, ; 248: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 244
	i32 1589115732, ; 249: Syncfusion.Maui.Data => 0x5eb7fb54 => 198
	i32 1592978981, ; 250: System.Runtime.Serialization.dll => 0x5ef2ee25 => 115
	i32 1596911864, ; 251: Syncfusion.Maui.Buttons => 0x5f2ef0f8 => 194
	i32 1597949149, ; 252: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 292
	i32 1601112923, ; 253: System.Xml.Serialization => 0x5f6f0b5b => 157
	i32 1604827217, ; 254: System.Net.WebClient => 0x5fa7b851 => 76
	i32 1616563424, ; 255: Syncfusion.Pdf.Imaging.NET => 0x605acce0 => 216
	i32 1618516317, ; 256: System.Net.WebSockets.Client.dll => 0x6078995d => 79
	i32 1622152042, ; 257: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 264
	i32 1622358360, ; 258: System.Dynamic.Runtime => 0x60b33958 => 37
	i32 1624863272, ; 259: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 286
	i32 1635184631, ; 260: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 248
	i32 1636350590, ; 261: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 241
	i32 1639515021, ; 262: System.Net.Http.dll => 0x61b9038d => 64
	i32 1639986890, ; 263: System.Text.RegularExpressions => 0x61c036ca => 138
	i32 1641389582, ; 264: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1653151792, ; 265: Syncfusion.Maui.Inputs.dll => 0x62891830 => 204
	i32 1657153582, ; 266: System.Runtime => 0x62c6282e => 116
	i32 1658241508, ; 267: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 280
	i32 1658251792, ; 268: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 289
	i32 1670060433, ; 269: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 236
	i32 1675553242, ; 270: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 48
	i32 1677501392, ; 271: System.Net.Primitives.dll => 0x63fca3d0 => 70
	i32 1677521517, ; 272: Syncfusion.Pdf.Imaging.NET.dll => 0x63fcf26d => 216
	i32 1678508291, ; 273: System.Net.WebSockets => 0x640c0103 => 80
	i32 1679769178, ; 274: System.Security.Cryptography => 0x641f3e5a => 126
	i32 1691477237, ; 275: System.Reflection.Metadata => 0x64d1e4f5 => 94
	i32 1696967625, ; 276: System.Security.Cryptography.Csp => 0x6525abc9 => 121
	i32 1698840827, ; 277: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 296
	i32 1701541528, ; 278: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1716397933, ; 279: en-US/Syncfusion.Maui.Scheduler.resources.dll => 0x664e276d => 339
	i32 1720223769, ; 280: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 257
	i32 1726116996, ; 281: System.Reflection.dll => 0x66e27484 => 97
	i32 1728033016, ; 282: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 28
	i32 1729485958, ; 283: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 232
	i32 1732996618, ; 284: Syncfusion.Maui.TabView.dll => 0x674b6e0a => 214
	i32 1736233607, ; 285: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 324
	i32 1743415430, ; 286: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 302
	i32 1744735666, ; 287: System.Transactions.Local.dll => 0x67fe8db2 => 149
	i32 1746316138, ; 288: Mono.Android.Export => 0x6816ab6a => 169
	i32 1749607256, ; 289: Syncfusion.Pdf.NET => 0x6848e358 => 217
	i32 1750234357, ; 290: Syncfusion.Maui.TreeMap => 0x685274f5 => 215
	i32 1750313021, ; 291: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 292: System.Resources.Reader.dll => 0x68cc9d1e => 98
	i32 1763938596, ; 293: System.Diagnostics.TraceSource.dll => 0x69239124 => 33
	i32 1765942094, ; 294: System.Reflection.Extensions => 0x6942234e => 93
	i32 1766324549, ; 295: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 279
	i32 1770582343, ; 296: Microsoft.Extensions.Logging.dll => 0x6988f147 => 179
	i32 1776026572, ; 297: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 298: System.Globalization.Extensions.dll => 0x69ec0683 => 41
	i32 1779859068, ; 299: Syncfusion.Maui.DataGrid.dll => 0x6a167e7c => 200
	i32 1780572499, ; 300: Mono.Android.Runtime.dll => 0x6a216153 => 170
	i32 1782862114, ; 301: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 318
	i32 1788241197, ; 302: Xamarin.AndroidX.Fragment => 0x6a96652d => 250
	i32 1793755602, ; 303: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 310
	i32 1808609942, ; 304: Xamarin.AndroidX.Loader => 0x6bcd3296 => 264
	i32 1813058853, ; 305: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 295
	i32 1813201214, ; 306: Xamarin.Google.Android.Material => 0x6c13413e => 289
	i32 1818569960, ; 307: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 269
	i32 1818787751, ; 308: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 309: System.Text.Encoding.Extensions => 0x6cbab720 => 134
	i32 1824722060, ; 310: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 111
	i32 1828688058, ; 311: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 180
	i32 1839537106, ; 312: SyncfusionMAUIApp.dll => 0x6da51bd2 => 0
	i32 1842015223, ; 313: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 330
	i32 1847515442, ; 314: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 219
	i32 1853025655, ; 315: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 327
	i32 1858542181, ; 316: System.Linq.Expressions => 0x6ec71a65 => 58
	i32 1870277092, ; 317: System.Reflection.Primitives => 0x6f7a29e4 => 95
	i32 1870466325, ; 318: Syncfusion.Maui.SignaturePad.dll => 0x6f7d0d15 => 212
	i32 1875935024, ; 319: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 309
	i32 1879696579, ; 320: System.Formats.Tar.dll => 0x7009e4c3 => 39
	i32 1885316902, ; 321: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 230
	i32 1888955245, ; 322: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 323: System.Reflection.Metadata.dll => 0x70a66bdd => 94
	i32 1898237753, ; 324: System.Reflection.DispatchProxy => 0x7124cf39 => 89
	i32 1900610850, ; 325: System.Resources.ResourceManager.dll => 0x71490522 => 99
	i32 1910275211, ; 326: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1939592360, ; 327: System.Private.Xml.Linq => 0x739bd4a8 => 87
	i32 1956758971, ; 328: System.Resources.Writer => 0x74a1c5bb => 100
	i32 1961813231, ; 329: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 276
	i32 1968388702, ; 330: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 175
	i32 1983156543, ; 331: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 296
	i32 1985761444, ; 332: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 221
	i32 2003115576, ; 333: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 306
	i32 2011961780, ; 334: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 335: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 261
	i32 2025202353, ; 336: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 301
	i32 2031763787, ; 337: Xamarin.Android.Glide => 0x791a414b => 218
	i32 2045470958, ; 338: System.Private.Xml => 0x79eb68ee => 88
	i32 2055257422, ; 339: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 256
	i32 2060060697, ; 340: System.Windows.dll => 0x7aca0819 => 154
	i32 2066184531, ; 341: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 305
	i32 2070888862, ; 342: System.Diagnostics.TraceSource => 0x7b6f419e => 33
	i32 2079903147, ; 343: System.Runtime.dll => 0x7bf8cdab => 116
	i32 2090596640, ; 344: System.Numerics.Vectors => 0x7c9bf920 => 82
	i32 2127167465, ; 345: System.Console => 0x7ec9ffe9 => 20
	i32 2134827680, ; 346: Syncfusion.Maui.Sliders.dll => 0x7f3ee2a0 => 213
	i32 2142473426, ; 347: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 348: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 162
	i32 2146852085, ; 349: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2155820306, ; 350: Syncfusion.Maui.Gauges.dll => 0x807f3512 => 202
	i32 2159891885, ; 351: Microsoft.Maui => 0x80bd55ad => 187
	i32 2169148018, ; 352: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 313
	i32 2181898931, ; 353: Microsoft.Extensions.Options.dll => 0x820d22b3 => 182
	i32 2192057212, ; 354: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 180
	i32 2193016926, ; 355: System.ObjectModel.dll => 0x82b6c85e => 84
	i32 2201107256, ; 356: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 300
	i32 2201231467, ; 357: System.Net.Http => 0x8334206b => 64
	i32 2207618523, ; 358: it\Microsoft.Maui.Controls.resources => 0x839595db => 315
	i32 2217644978, ; 359: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 283
	i32 2222056684, ; 360: System.Threading.Tasks.Parallel => 0x8471e4ec => 143
	i32 2244775296, ; 361: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 265
	i32 2252106437, ; 362: System.Xml.Serialization.dll => 0x863c6ac5 => 157
	i32 2256313426, ; 363: System.Globalization.Extensions => 0x867c9c52 => 41
	i32 2265110946, ; 364: System.Security.AccessControl.dll => 0x8702d9a2 => 117
	i32 2266799131, ; 365: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 176
	i32 2267999099, ; 366: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 220
	i32 2270573516, ; 367: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 309
	i32 2279755925, ; 368: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 272
	i32 2293034957, ; 369: System.ServiceModel.Web.dll => 0x88acefcd => 131
	i32 2295906218, ; 370: System.Net.Sockets => 0x88d8bfaa => 75
	i32 2298471582, ; 371: System.Net.Mail => 0x88ffe49e => 66
	i32 2303942373, ; 372: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 319
	i32 2305521784, ; 373: System.Private.CoreLib.dll => 0x896b7878 => 172
	i32 2315684594, ; 374: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 224
	i32 2320631194, ; 375: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 143
	i32 2340441535, ; 376: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 106
	i32 2344264397, ; 377: System.ValueTuple => 0x8bbaa2cd => 151
	i32 2353062107, ; 378: System.Net.Primitives => 0x8c40e0db => 70
	i32 2354730003, ; 379: Syncfusion.Licensing => 0x8c5a5413 => 193
	i32 2368005991, ; 380: System.Xml.ReaderWriter.dll => 0x8d24e767 => 156
	i32 2371007202, ; 381: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 175
	i32 2378619854, ; 382: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 121
	i32 2383496789, ; 383: System.Security.Principal.Windows.dll => 0x8e114655 => 127
	i32 2395872292, ; 384: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 314
	i32 2401565422, ; 385: System.Web.HttpUtility => 0x8f24faee => 152
	i32 2403452196, ; 386: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 247
	i32 2421380589, ; 387: System.Threading.Tasks.Dataflow => 0x905355ed => 141
	i32 2423080555, ; 388: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 234
	i32 2426750280, ; 389: en-US\Syncfusion.Maui.Inputs.resources => 0x90a54548 => 337
	i32 2427813419, ; 390: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 311
	i32 2435356389, ; 391: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 392: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 393: System.Text.Encoding.dll => 0x924edee6 => 135
	i32 2458678730, ; 394: System.Net.Sockets.dll => 0x928c75ca => 75
	i32 2459001652, ; 395: System.Linq.Parallel.dll => 0x92916334 => 59
	i32 2465532216, ; 396: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 237
	i32 2471841756, ; 397: netstandard.dll => 0x93554fdc => 167
	i32 2475788418, ; 398: Java.Interop.dll => 0x93918882 => 168
	i32 2480646305, ; 399: Microsoft.Maui.Controls => 0x93dba8a1 => 185
	i32 2483903535, ; 400: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 401: System.Net.ServicePoint => 0x94147f61 => 74
	i32 2490993605, ; 402: System.AppContext.dll => 0x94798bc5 => 6
	i32 2494250323, ; 403: Nager.Country => 0x94ab3d53 => 190
	i32 2501346920, ; 404: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 405: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 259
	i32 2519222276, ; 406: Syncfusion.Maui.Calendar => 0x96284804 => 195
	i32 2522472828, ; 407: Xamarin.Android.Glide.dll => 0x9659e17c => 218
	i32 2538310050, ; 408: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 91
	i32 2550873716, ; 409: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 312
	i32 2562349572, ; 410: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 411: System.Text.Encodings.Web => 0x9930ee42 => 136
	i32 2581783588, ; 412: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 260
	i32 2581819634, ; 413: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 282
	i32 2585220780, ; 414: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 134
	i32 2585805581, ; 415: System.Net.Ping => 0x9a20430d => 69
	i32 2589602615, ; 416: System.Threading.ThreadPool => 0x9a5a3337 => 146
	i32 2593496499, ; 417: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 321
	i32 2605712449, ; 418: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 300
	i32 2615233544, ; 419: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 251
	i32 2616218305, ; 420: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 181
	i32 2617129537, ; 421: System.Private.Xml.dll => 0x9bfe3a41 => 88
	i32 2618712057, ; 422: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 96
	i32 2620871830, ; 423: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 241
	i32 2624644809, ; 424: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 246
	i32 2626831493, ; 425: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 316
	i32 2627185994, ; 426: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 31
	i32 2629843544, ; 427: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 45
	i32 2633051222, ; 428: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 255
	i32 2663391936, ; 429: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 220
	i32 2663698177, ; 430: System.Runtime.Loader => 0x9ec4cf01 => 109
	i32 2664396074, ; 431: System.Xml.XDocument.dll => 0x9ecf752a => 158
	i32 2665622720, ; 432: System.Drawing.Primitives => 0x9ee22cc0 => 35
	i32 2676780864, ; 433: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2686887180, ; 434: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 114
	i32 2693849962, ; 435: System.IO.dll => 0xa090e36a => 57
	i32 2701096212, ; 436: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 280
	i32 2707746672, ; 437: Syncfusion.Maui.PullToRefresh => 0xa164ef70 => 210
	i32 2715334215, ; 438: System.Threading.Tasks.dll => 0xa1d8b647 => 144
	i32 2717744543, ; 439: System.Security.Claims => 0xa1fd7d9f => 118
	i32 2719963679, ; 440: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 120
	i32 2724373263, ; 441: System.Runtime.Numerics.dll => 0xa262a30f => 110
	i32 2732626843, ; 442: Xamarin.AndroidX.Activity => 0xa2e0939b => 222
	i32 2735172069, ; 443: System.Threading.Channels => 0xa30769e5 => 139
	i32 2737747696, ; 444: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 228
	i32 2740948882, ; 445: System.IO.Pipes.AccessControl => 0xa35f8f92 => 54
	i32 2743368605, ; 446: Syncfusion.Maui.DataSource => 0xa3847b9d => 201
	i32 2748088231, ; 447: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 105
	i32 2752995522, ; 448: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 322
	i32 2758225723, ; 449: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 186
	i32 2764765095, ; 450: Microsoft.Maui.dll => 0xa4caf7a7 => 187
	i32 2765824710, ; 451: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 133
	i32 2768327176, ; 452: Syncfusion.Maui.Scheduler.dll => 0xa5015208 => 211
	i32 2770495804, ; 453: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 294
	i32 2778768386, ; 454: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 285
	i32 2779977773, ; 455: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 273
	i32 2785988530, ; 456: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 328
	i32 2788224221, ; 457: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 251
	i32 2801831435, ; 458: Microsoft.Maui.Graphics => 0xa7008e0b => 189
	i32 2803228030, ; 459: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 159
	i32 2806116107, ; 460: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 307
	i32 2810250172, ; 461: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 238
	i32 2819470561, ; 462: System.Xml.dll => 0xa80db4e1 => 163
	i32 2821205001, ; 463: System.ServiceProcess.dll => 0xa8282c09 => 132
	i32 2821294376, ; 464: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 273
	i32 2824502124, ; 465: System.Xml.XmlDocument => 0xa85a7b6c => 161
	i32 2831556043, ; 466: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 320
	i32 2838993487, ; 467: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 262
	i32 2842426040, ; 468: Syncfusion.Maui.Sliders => 0xa96bfab8 => 213
	i32 2849599387, ; 469: System.Threading.Overlapped.dll => 0xa9d96f9b => 140
	i32 2853208004, ; 470: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 285
	i32 2855708567, ; 471: Xamarin.AndroidX.Transition => 0xaa36a797 => 281
	i32 2861098320, ; 472: Mono.Android.Export.dll => 0xaa88e550 => 169
	i32 2861189240, ; 473: Microsoft.Maui.Essentials => 0xaa8a4878 => 188
	i32 2868557005, ; 474: Syncfusion.Licensing.dll => 0xaafab4cd => 193
	i32 2870099610, ; 475: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 223
	i32 2875164099, ; 476: Jsr305Binding.dll => 0xab5f85c3 => 290
	i32 2875220617, ; 477: System.Globalization.Calendars.dll => 0xab606289 => 40
	i32 2884993177, ; 478: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 249
	i32 2887636118, ; 479: System.Net.dll => 0xac1dd496 => 81
	i32 2899753641, ; 480: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 56
	i32 2900621748, ; 481: System.Dynamic.Runtime.dll => 0xace3f9b4 => 37
	i32 2901442782, ; 482: System.Reflection => 0xacf080de => 97
	i32 2905242038, ; 483: mscorlib.dll => 0xad2a79b6 => 166
	i32 2909740682, ; 484: System.Private.CoreLib => 0xad6f1e8a => 172
	i32 2915140907, ; 485: Syncfusion.Maui.DataGrid => 0xadc1852b => 200
	i32 2916838712, ; 486: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 286
	i32 2919462931, ; 487: System.Numerics.Vectors.dll => 0xae037813 => 82
	i32 2921128767, ; 488: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 225
	i32 2936416060, ; 489: System.Resources.Reader => 0xaf06273c => 98
	i32 2940926066, ; 490: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 30
	i32 2942453041, ; 491: System.Xml.XPath.XDocument => 0xaf624531 => 159
	i32 2959614098, ; 492: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 493: System.Security.Principal.Windows => 0xb0ed41f3 => 127
	i32 2972252294, ; 494: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 119
	i32 2978675010, ; 495: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 245
	i32 2987532451, ; 496: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 276
	i32 2996846495, ; 497: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 258
	i32 3001463412, ; 498: Syncfusion.Maui.PdfViewer => 0xb2e6b274 => 208
	i32 3016983068, ; 499: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 278
	i32 3023353419, ; 500: WindowsBase.dll => 0xb434b64b => 165
	i32 3024354802, ; 501: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 253
	i32 3038032645, ; 502: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 340
	i32 3056245963, ; 503: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 275
	i32 3057625584, ; 504: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 266
	i32 3059408633, ; 505: Mono.Android.Runtime => 0xb65adef9 => 170
	i32 3059793426, ; 506: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3061806605, ; 507: Syncfusion.Maui.DataForm.dll => 0xb67f760d => 199
	i32 3075834255, ; 508: System.Threading.Tasks => 0xb755818f => 144
	i32 3077302341, ; 509: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 313
	i32 3078489293, ; 510: BitMiracle.LibTiff.NET.dll => 0xb77e04cd => 173
	i32 3090735792, ; 511: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 125
	i32 3099732863, ; 512: System.Security.Claims.dll => 0xb8c22b7f => 118
	i32 3103600923, ; 513: System.Formats.Asn1 => 0xb8fd311b => 38
	i32 3111772706, ; 514: System.Runtime.Serialization => 0xb979e222 => 115
	i32 3121463068, ; 515: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 47
	i32 3124832203, ; 516: System.Threading.Tasks.Extensions => 0xba4127cb => 142
	i32 3132293585, ; 517: System.Security.AccessControl => 0xbab301d1 => 117
	i32 3140633799, ; 518: Syncfusion.Maui.ListView => 0xbb3244c7 => 205
	i32 3147165239, ; 519: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 34
	i32 3147228406, ; 520: Syncfusion.Maui.Core => 0xbb96e4f6 => 197
	i32 3148237826, ; 521: GoogleGson.dll => 0xbba64c02 => 174
	i32 3159123045, ; 522: System.Reflection.Primitives.dll => 0xbc4c6465 => 95
	i32 3160747431, ; 523: System.IO.MemoryMappedFiles => 0xbc652da7 => 53
	i32 3170039328, ; 524: Syncfusion.Maui.ListView.dll => 0xbcf2f620 => 205
	i32 3178803400, ; 525: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 267
	i32 3192346100, ; 526: System.Security.SecureString => 0xbe4755f4 => 129
	i32 3193515020, ; 527: System.Web => 0xbe592c0c => 153
	i32 3204380047, ; 528: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 529: System.Xml.XmlDocument.dll => 0xbf506931 => 161
	i32 3211777861, ; 530: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 244
	i32 3220365878, ; 531: System.Threading => 0xbff2e236 => 148
	i32 3224776939, ; 532: Syncfusion.Maui.PdfToImageConverter => 0xc03630eb => 207
	i32 3226221578, ; 533: System.Runtime.Handles.dll => 0xc04c3c0a => 104
	i32 3245644316, ; 534: Syncfusion.Maui.Charts.dll => 0xc1749a1c => 196
	i32 3251039220, ; 535: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 89
	i32 3258312781, ; 536: Xamarin.AndroidX.CardView => 0xc235e84d => 232
	i32 3265493905, ; 537: System.Linq.Queryable.dll => 0xc2a37b91 => 60
	i32 3265893370, ; 538: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 142
	i32 3277815716, ; 539: System.Resources.Writer.dll => 0xc35f7fa4 => 100
	i32 3279906254, ; 540: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 541: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 542: System.Security.Cryptography.Encoding => 0xc4251ff9 => 122
	i32 3299363146, ; 543: System.Text.Encoding => 0xc4a8494a => 135
	i32 3303498502, ; 544: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 28
	i32 3305363605, ; 545: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 308
	i32 3306970809, ; 546: Syncfusion.Maui.Inputs => 0xc51c5eb9 => 204
	i32 3316684772, ; 547: System.Net.Requests.dll => 0xc5b097e4 => 72
	i32 3317135071, ; 548: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 242
	i32 3317144872, ; 549: System.Data => 0xc5b79d28 => 24
	i32 3340387945, ; 550: SkiaSharp => 0xc71a4669 => 191
	i32 3340431453, ; 551: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 230
	i32 3345895724, ; 552: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 271
	i32 3346324047, ; 553: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 268
	i32 3357674450, ; 554: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 325
	i32 3358260929, ; 555: System.Text.Json => 0xc82afec1 => 137
	i32 3362336904, ; 556: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 223
	i32 3362522851, ; 557: Xamarin.AndroidX.Core => 0xc86c06e3 => 239
	i32 3366347497, ; 558: Java.Interop => 0xc8a662e9 => 168
	i32 3374999561, ; 559: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 272
	i32 3381016424, ; 560: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 304
	i32 3381934622, ; 561: Syncfusion.Maui.GridCommon => 0xc9943a1e => 203
	i32 3395150330, ; 562: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 101
	i32 3403906625, ; 563: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 123
	i32 3405233483, ; 564: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 243
	i32 3428513518, ; 565: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 177
	i32 3429136800, ; 566: System.Xml => 0xcc6479a0 => 163
	i32 3430777524, ; 567: netstandard => 0xcc7d82b4 => 167
	i32 3441283291, ; 568: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 246
	i32 3445260447, ; 569: System.Formats.Tar => 0xcd5a809f => 39
	i32 3452344032, ; 570: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 184
	i32 3463511458, ; 571: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 312
	i32 3471940407, ; 572: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 573: Mono.Android => 0xcf3163e6 => 171
	i32 3479583265, ; 574: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 325
	i32 3484440000, ; 575: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 324
	i32 3485117614, ; 576: System.Text.Json.dll => 0xcfbaacae => 137
	i32 3486566296, ; 577: System.Transactions => 0xcfd0c798 => 150
	i32 3488622557, ; 578: SyncfusionMAUIApp => 0xcff027dd => 0
	i32 3493954962, ; 579: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 235
	i32 3509114376, ; 580: System.Xml.Linq => 0xd128d608 => 155
	i32 3515174580, ; 581: System.Security.dll => 0xd1854eb4 => 130
	i32 3530912306, ; 582: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 583: System.Net.HttpListener => 0xd2ff69f1 => 65
	i32 3558305335, ; 584: Syncfusion.Maui.DataSource.dll => 0xd4176e37 => 201
	i32 3560100363, ; 585: System.Threading.Timer => 0xd432d20b => 147
	i32 3570554715, ; 586: System.IO.FileSystem.AccessControl => 0xd4d2575b => 47
	i32 3580758918, ; 587: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 332
	i32 3597029428, ; 588: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 221
	i32 3598340787, ; 589: System.Net.WebSockets.Client => 0xd67a52b3 => 79
	i32 3608519521, ; 590: System.Linq.dll => 0xd715a361 => 61
	i32 3624195450, ; 591: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 106
	i32 3627220390, ; 592: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 270
	i32 3632281949, ; 593: Syncfusion.Compression.NET.dll => 0xd880395d => 192
	i32 3633644679, ; 594: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 225
	i32 3638274909, ; 595: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 49
	i32 3641597786, ; 596: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 256
	i32 3643446276, ; 597: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 329
	i32 3643854240, ; 598: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 267
	i32 3645089577, ; 599: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 600: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 176
	i32 3660523487, ; 601: System.Net.NetworkInformation => 0xda2f27df => 68
	i32 3672681054, ; 602: Mono.Android.dll => 0xdae8aa5e => 171
	i32 3682565725, ; 603: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 231
	i32 3684561358, ; 604: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 235
	i32 3697841164, ; 605: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 334
	i32 3700866549, ; 606: System.Net.WebProxy.dll => 0xdc96bdf5 => 78
	i32 3706696989, ; 607: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 240
	i32 3710506397, ; 608: Syncfusion.Compression.NET => 0xdd29d59d => 192
	i32 3716563718, ; 609: System.Runtime.Intrinsics => 0xdd864306 => 108
	i32 3718780102, ; 610: Xamarin.AndroidX.Annotation => 0xdda814c6 => 224
	i32 3724971120, ; 611: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 266
	i32 3732100267, ; 612: System.Net.NameResolution => 0xde7354ab => 67
	i32 3737834244, ; 613: System.Net.Http.Json.dll => 0xdecad304 => 63
	i32 3748608112, ; 614: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 27
	i32 3751444290, ; 615: System.Xml.XPath => 0xdf9a7f42 => 160
	i32 3786282454, ; 616: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 233
	i32 3792276235, ; 617: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 618: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 184
	i32 3802395368, ; 619: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3819260425, ; 620: System.Net.WebProxy => 0xe3a54a09 => 78
	i32 3823082795, ; 621: System.Security.Cryptography.dll => 0xe3df9d2b => 126
	i32 3829621856, ; 622: System.Numerics.dll => 0xe4436460 => 83
	i32 3841636137, ; 623: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 178
	i32 3844307129, ; 624: System.Net.Mail.dll => 0xe52378b9 => 66
	i32 3849253459, ; 625: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3870376305, ; 626: System.Net.HttpListener.dll => 0xe6b14171 => 65
	i32 3873536506, ; 627: System.Security.Principal => 0xe6e179fa => 128
	i32 3875112723, ; 628: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 122
	i32 3885497537, ; 629: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 77
	i32 3885922214, ; 630: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 281
	i32 3888767677, ; 631: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 271
	i32 3889960447, ; 632: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 333
	i32 3896106733, ; 633: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 634: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 239
	i32 3901907137, ; 635: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 636: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 44
	i32 3921031405, ; 637: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 284
	i32 3928044579, ; 638: System.Xml.ReaderWriter => 0xea213423 => 156
	i32 3930554604, ; 639: System.Security.Principal.dll => 0xea4780ec => 128
	i32 3931092270, ; 640: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 269
	i32 3945713374, ; 641: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 642: System.Text.Encoding.CodePages => 0xebac8bfe => 133
	i32 3955647286, ; 643: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 227
	i32 3959773229, ; 644: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 258
	i32 3980434154, ; 645: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 328
	i32 3982571493, ; 646: en-US/Syncfusion.Maui.Inputs.resources.dll => 0xed6137e5 => 337
	i32 3987592930, ; 647: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 310
	i32 4003436829, ; 648: System.Diagnostics.Process.dll => 0xee9f991d => 29
	i32 4015948917, ; 649: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 226
	i32 4025784931, ; 650: System.Memory => 0xeff49a63 => 62
	i32 4046471985, ; 651: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 186
	i32 4054681211, ; 652: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 90
	i32 4068434129, ; 653: System.Private.Xml.Linq.dll => 0xf27f60d1 => 87
	i32 4073602200, ; 654: System.Threading.dll => 0xf2ce3c98 => 148
	i32 4094352644, ; 655: Microsoft.Maui.Essentials.dll => 0xf40add04 => 188
	i32 4099507663, ; 656: System.Drawing.dll => 0xf45985cf => 36
	i32 4100113165, ; 657: System.Private.Uri => 0xf462c30d => 86
	i32 4101593132, ; 658: Xamarin.AndroidX.Emoji2 => 0xf479582c => 247
	i32 4102112229, ; 659: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 323
	i32 4125707920, ; 660: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 318
	i32 4126470640, ; 661: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 177
	i32 4127667938, ; 662: System.IO.FileSystem.Watcher => 0xf60736e2 => 50
	i32 4130442656, ; 663: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 664: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 90
	i32 4150914736, ; 665: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 330
	i32 4151237749, ; 666: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 667: System.Xml.XmlSerializer => 0xf7e95c85 => 162
	i32 4161255271, ; 668: System.Reflection.TypeExtensions => 0xf807b767 => 96
	i32 4164802419, ; 669: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 50
	i32 4181436372, ; 670: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 113
	i32 4182413190, ; 671: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 263
	i32 4185676441, ; 672: System.Security => 0xf97c5a99 => 130
	i32 4196529839, ; 673: System.Net.WebClient.dll => 0xfa21f6af => 76
	i32 4213026141, ; 674: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 27
	i32 4256097574, ; 675: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 240
	i32 4258378803, ; 676: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 262
	i32 4260525087, ; 677: System.Buffers => 0xfdf2741f => 7
	i32 4271975918, ; 678: Microsoft.Maui.Controls.dll => 0xfea12dee => 185
	i32 4274976490, ; 679: System.Runtime.Numerics => 0xfecef6ea => 110
	i32 4292120959, ; 680: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 263
	i32 4294763496 ; 681: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 249
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [682 x i32] [
	i32 68, ; 0
	i32 67, ; 1
	i32 108, ; 2
	i32 259, ; 3
	i32 293, ; 4
	i32 48, ; 5
	i32 80, ; 6
	i32 145, ; 7
	i32 30, ; 8
	i32 334, ; 9
	i32 124, ; 10
	i32 189, ; 11
	i32 102, ; 12
	i32 277, ; 13
	i32 107, ; 14
	i32 277, ; 15
	i32 139, ; 16
	i32 297, ; 17
	i32 77, ; 18
	i32 124, ; 19
	i32 13, ; 20
	i32 233, ; 21
	i32 197, ; 22
	i32 132, ; 23
	i32 279, ; 24
	i32 151, ; 25
	i32 331, ; 26
	i32 332, ; 27
	i32 18, ; 28
	i32 231, ; 29
	i32 339, ; 30
	i32 26, ; 31
	i32 253, ; 32
	i32 1, ; 33
	i32 59, ; 34
	i32 42, ; 35
	i32 91, ; 36
	i32 217, ; 37
	i32 207, ; 38
	i32 196, ; 39
	i32 236, ; 40
	i32 147, ; 41
	i32 255, ; 42
	i32 252, ; 43
	i32 303, ; 44
	i32 54, ; 45
	i32 206, ; 46
	i32 69, ; 47
	i32 206, ; 48
	i32 331, ; 49
	i32 222, ; 50
	i32 83, ; 51
	i32 316, ; 52
	i32 254, ; 53
	i32 315, ; 54
	i32 131, ; 55
	i32 55, ; 56
	i32 209, ; 57
	i32 198, ; 58
	i32 149, ; 59
	i32 74, ; 60
	i32 335, ; 61
	i32 145, ; 62
	i32 62, ; 63
	i32 146, ; 64
	i32 340, ; 65
	i32 165, ; 66
	i32 327, ; 67
	i32 237, ; 68
	i32 12, ; 69
	i32 250, ; 70
	i32 125, ; 71
	i32 152, ; 72
	i32 203, ; 73
	i32 113, ; 74
	i32 166, ; 75
	i32 164, ; 76
	i32 252, ; 77
	i32 265, ; 78
	i32 336, ; 79
	i32 84, ; 80
	i32 314, ; 81
	i32 308, ; 82
	i32 183, ; 83
	i32 191, ; 84
	i32 150, ; 85
	i32 297, ; 86
	i32 60, ; 87
	i32 179, ; 88
	i32 51, ; 89
	i32 103, ; 90
	i32 114, ; 91
	i32 40, ; 92
	i32 290, ; 93
	i32 288, ; 94
	i32 120, ; 95
	i32 322, ; 96
	i32 52, ; 97
	i32 44, ; 98
	i32 119, ; 99
	i32 173, ; 100
	i32 242, ; 101
	i32 320, ; 102
	i32 215, ; 103
	i32 248, ; 104
	i32 81, ; 105
	i32 136, ; 106
	i32 284, ; 107
	i32 229, ; 108
	i32 8, ; 109
	i32 335, ; 110
	i32 73, ; 111
	i32 302, ; 112
	i32 155, ; 113
	i32 299, ; 114
	i32 154, ; 115
	i32 209, ; 116
	i32 92, ; 117
	i32 294, ; 118
	i32 45, ; 119
	i32 317, ; 120
	i32 305, ; 121
	i32 298, ; 122
	i32 109, ; 123
	i32 129, ; 124
	i32 25, ; 125
	i32 219, ; 126
	i32 72, ; 127
	i32 55, ; 128
	i32 46, ; 129
	i32 326, ; 130
	i32 182, ; 131
	i32 243, ; 132
	i32 22, ; 133
	i32 257, ; 134
	i32 86, ; 135
	i32 43, ; 136
	i32 160, ; 137
	i32 71, ; 138
	i32 270, ; 139
	i32 3, ; 140
	i32 42, ; 141
	i32 336, ; 142
	i32 63, ; 143
	i32 338, ; 144
	i32 16, ; 145
	i32 212, ; 146
	i32 53, ; 147
	i32 195, ; 148
	i32 329, ; 149
	i32 293, ; 150
	i32 105, ; 151
	i32 298, ; 152
	i32 291, ; 153
	i32 254, ; 154
	i32 34, ; 155
	i32 158, ; 156
	i32 85, ; 157
	i32 32, ; 158
	i32 12, ; 159
	i32 51, ; 160
	i32 56, ; 161
	i32 274, ; 162
	i32 36, ; 163
	i32 178, ; 164
	i32 304, ; 165
	i32 292, ; 166
	i32 227, ; 167
	i32 35, ; 168
	i32 58, ; 169
	i32 261, ; 170
	i32 174, ; 171
	i32 17, ; 172
	i32 295, ; 173
	i32 164, ; 174
	i32 317, ; 175
	i32 260, ; 176
	i32 210, ; 177
	i32 181, ; 178
	i32 287, ; 179
	i32 323, ; 180
	i32 153, ; 181
	i32 283, ; 182
	i32 338, ; 183
	i32 214, ; 184
	i32 268, ; 185
	i32 321, ; 186
	i32 229, ; 187
	i32 29, ; 188
	i32 52, ; 189
	i32 319, ; 190
	i32 288, ; 191
	i32 208, ; 192
	i32 5, ; 193
	i32 303, ; 194
	i32 278, ; 195
	i32 282, ; 196
	i32 234, ; 197
	i32 299, ; 198
	i32 226, ; 199
	i32 245, ; 200
	i32 211, ; 201
	i32 85, ; 202
	i32 287, ; 203
	i32 61, ; 204
	i32 112, ; 205
	i32 57, ; 206
	i32 202, ; 207
	i32 199, ; 208
	i32 333, ; 209
	i32 190, ; 210
	i32 274, ; 211
	i32 99, ; 212
	i32 19, ; 213
	i32 238, ; 214
	i32 111, ; 215
	i32 101, ; 216
	i32 102, ; 217
	i32 301, ; 218
	i32 104, ; 219
	i32 291, ; 220
	i32 71, ; 221
	i32 38, ; 222
	i32 32, ; 223
	i32 103, ; 224
	i32 73, ; 225
	i32 307, ; 226
	i32 9, ; 227
	i32 123, ; 228
	i32 46, ; 229
	i32 228, ; 230
	i32 183, ; 231
	i32 9, ; 232
	i32 43, ; 233
	i32 4, ; 234
	i32 275, ; 235
	i32 311, ; 236
	i32 306, ; 237
	i32 31, ; 238
	i32 194, ; 239
	i32 138, ; 240
	i32 92, ; 241
	i32 93, ; 242
	i32 326, ; 243
	i32 49, ; 244
	i32 141, ; 245
	i32 112, ; 246
	i32 140, ; 247
	i32 244, ; 248
	i32 198, ; 249
	i32 115, ; 250
	i32 194, ; 251
	i32 292, ; 252
	i32 157, ; 253
	i32 76, ; 254
	i32 216, ; 255
	i32 79, ; 256
	i32 264, ; 257
	i32 37, ; 258
	i32 286, ; 259
	i32 248, ; 260
	i32 241, ; 261
	i32 64, ; 262
	i32 138, ; 263
	i32 15, ; 264
	i32 204, ; 265
	i32 116, ; 266
	i32 280, ; 267
	i32 289, ; 268
	i32 236, ; 269
	i32 48, ; 270
	i32 70, ; 271
	i32 216, ; 272
	i32 80, ; 273
	i32 126, ; 274
	i32 94, ; 275
	i32 121, ; 276
	i32 296, ; 277
	i32 26, ; 278
	i32 339, ; 279
	i32 257, ; 280
	i32 97, ; 281
	i32 28, ; 282
	i32 232, ; 283
	i32 214, ; 284
	i32 324, ; 285
	i32 302, ; 286
	i32 149, ; 287
	i32 169, ; 288
	i32 217, ; 289
	i32 215, ; 290
	i32 4, ; 291
	i32 98, ; 292
	i32 33, ; 293
	i32 93, ; 294
	i32 279, ; 295
	i32 179, ; 296
	i32 21, ; 297
	i32 41, ; 298
	i32 200, ; 299
	i32 170, ; 300
	i32 318, ; 301
	i32 250, ; 302
	i32 310, ; 303
	i32 264, ; 304
	i32 295, ; 305
	i32 289, ; 306
	i32 269, ; 307
	i32 2, ; 308
	i32 134, ; 309
	i32 111, ; 310
	i32 180, ; 311
	i32 0, ; 312
	i32 330, ; 313
	i32 219, ; 314
	i32 327, ; 315
	i32 58, ; 316
	i32 95, ; 317
	i32 212, ; 318
	i32 309, ; 319
	i32 39, ; 320
	i32 230, ; 321
	i32 25, ; 322
	i32 94, ; 323
	i32 89, ; 324
	i32 99, ; 325
	i32 10, ; 326
	i32 87, ; 327
	i32 100, ; 328
	i32 276, ; 329
	i32 175, ; 330
	i32 296, ; 331
	i32 221, ; 332
	i32 306, ; 333
	i32 7, ; 334
	i32 261, ; 335
	i32 301, ; 336
	i32 218, ; 337
	i32 88, ; 338
	i32 256, ; 339
	i32 154, ; 340
	i32 305, ; 341
	i32 33, ; 342
	i32 116, ; 343
	i32 82, ; 344
	i32 20, ; 345
	i32 213, ; 346
	i32 11, ; 347
	i32 162, ; 348
	i32 3, ; 349
	i32 202, ; 350
	i32 187, ; 351
	i32 313, ; 352
	i32 182, ; 353
	i32 180, ; 354
	i32 84, ; 355
	i32 300, ; 356
	i32 64, ; 357
	i32 315, ; 358
	i32 283, ; 359
	i32 143, ; 360
	i32 265, ; 361
	i32 157, ; 362
	i32 41, ; 363
	i32 117, ; 364
	i32 176, ; 365
	i32 220, ; 366
	i32 309, ; 367
	i32 272, ; 368
	i32 131, ; 369
	i32 75, ; 370
	i32 66, ; 371
	i32 319, ; 372
	i32 172, ; 373
	i32 224, ; 374
	i32 143, ; 375
	i32 106, ; 376
	i32 151, ; 377
	i32 70, ; 378
	i32 193, ; 379
	i32 156, ; 380
	i32 175, ; 381
	i32 121, ; 382
	i32 127, ; 383
	i32 314, ; 384
	i32 152, ; 385
	i32 247, ; 386
	i32 141, ; 387
	i32 234, ; 388
	i32 337, ; 389
	i32 311, ; 390
	i32 20, ; 391
	i32 14, ; 392
	i32 135, ; 393
	i32 75, ; 394
	i32 59, ; 395
	i32 237, ; 396
	i32 167, ; 397
	i32 168, ; 398
	i32 185, ; 399
	i32 15, ; 400
	i32 74, ; 401
	i32 6, ; 402
	i32 190, ; 403
	i32 23, ; 404
	i32 259, ; 405
	i32 195, ; 406
	i32 218, ; 407
	i32 91, ; 408
	i32 312, ; 409
	i32 1, ; 410
	i32 136, ; 411
	i32 260, ; 412
	i32 282, ; 413
	i32 134, ; 414
	i32 69, ; 415
	i32 146, ; 416
	i32 321, ; 417
	i32 300, ; 418
	i32 251, ; 419
	i32 181, ; 420
	i32 88, ; 421
	i32 96, ; 422
	i32 241, ; 423
	i32 246, ; 424
	i32 316, ; 425
	i32 31, ; 426
	i32 45, ; 427
	i32 255, ; 428
	i32 220, ; 429
	i32 109, ; 430
	i32 158, ; 431
	i32 35, ; 432
	i32 22, ; 433
	i32 114, ; 434
	i32 57, ; 435
	i32 280, ; 436
	i32 210, ; 437
	i32 144, ; 438
	i32 118, ; 439
	i32 120, ; 440
	i32 110, ; 441
	i32 222, ; 442
	i32 139, ; 443
	i32 228, ; 444
	i32 54, ; 445
	i32 201, ; 446
	i32 105, ; 447
	i32 322, ; 448
	i32 186, ; 449
	i32 187, ; 450
	i32 133, ; 451
	i32 211, ; 452
	i32 294, ; 453
	i32 285, ; 454
	i32 273, ; 455
	i32 328, ; 456
	i32 251, ; 457
	i32 189, ; 458
	i32 159, ; 459
	i32 307, ; 460
	i32 238, ; 461
	i32 163, ; 462
	i32 132, ; 463
	i32 273, ; 464
	i32 161, ; 465
	i32 320, ; 466
	i32 262, ; 467
	i32 213, ; 468
	i32 140, ; 469
	i32 285, ; 470
	i32 281, ; 471
	i32 169, ; 472
	i32 188, ; 473
	i32 193, ; 474
	i32 223, ; 475
	i32 290, ; 476
	i32 40, ; 477
	i32 249, ; 478
	i32 81, ; 479
	i32 56, ; 480
	i32 37, ; 481
	i32 97, ; 482
	i32 166, ; 483
	i32 172, ; 484
	i32 200, ; 485
	i32 286, ; 486
	i32 82, ; 487
	i32 225, ; 488
	i32 98, ; 489
	i32 30, ; 490
	i32 159, ; 491
	i32 18, ; 492
	i32 127, ; 493
	i32 119, ; 494
	i32 245, ; 495
	i32 276, ; 496
	i32 258, ; 497
	i32 208, ; 498
	i32 278, ; 499
	i32 165, ; 500
	i32 253, ; 501
	i32 340, ; 502
	i32 275, ; 503
	i32 266, ; 504
	i32 170, ; 505
	i32 16, ; 506
	i32 199, ; 507
	i32 144, ; 508
	i32 313, ; 509
	i32 173, ; 510
	i32 125, ; 511
	i32 118, ; 512
	i32 38, ; 513
	i32 115, ; 514
	i32 47, ; 515
	i32 142, ; 516
	i32 117, ; 517
	i32 205, ; 518
	i32 34, ; 519
	i32 197, ; 520
	i32 174, ; 521
	i32 95, ; 522
	i32 53, ; 523
	i32 205, ; 524
	i32 267, ; 525
	i32 129, ; 526
	i32 153, ; 527
	i32 24, ; 528
	i32 161, ; 529
	i32 244, ; 530
	i32 148, ; 531
	i32 207, ; 532
	i32 104, ; 533
	i32 196, ; 534
	i32 89, ; 535
	i32 232, ; 536
	i32 60, ; 537
	i32 142, ; 538
	i32 100, ; 539
	i32 5, ; 540
	i32 13, ; 541
	i32 122, ; 542
	i32 135, ; 543
	i32 28, ; 544
	i32 308, ; 545
	i32 204, ; 546
	i32 72, ; 547
	i32 242, ; 548
	i32 24, ; 549
	i32 191, ; 550
	i32 230, ; 551
	i32 271, ; 552
	i32 268, ; 553
	i32 325, ; 554
	i32 137, ; 555
	i32 223, ; 556
	i32 239, ; 557
	i32 168, ; 558
	i32 272, ; 559
	i32 304, ; 560
	i32 203, ; 561
	i32 101, ; 562
	i32 123, ; 563
	i32 243, ; 564
	i32 177, ; 565
	i32 163, ; 566
	i32 167, ; 567
	i32 246, ; 568
	i32 39, ; 569
	i32 184, ; 570
	i32 312, ; 571
	i32 17, ; 572
	i32 171, ; 573
	i32 325, ; 574
	i32 324, ; 575
	i32 137, ; 576
	i32 150, ; 577
	i32 0, ; 578
	i32 235, ; 579
	i32 155, ; 580
	i32 130, ; 581
	i32 19, ; 582
	i32 65, ; 583
	i32 201, ; 584
	i32 147, ; 585
	i32 47, ; 586
	i32 332, ; 587
	i32 221, ; 588
	i32 79, ; 589
	i32 61, ; 590
	i32 106, ; 591
	i32 270, ; 592
	i32 192, ; 593
	i32 225, ; 594
	i32 49, ; 595
	i32 256, ; 596
	i32 329, ; 597
	i32 267, ; 598
	i32 14, ; 599
	i32 176, ; 600
	i32 68, ; 601
	i32 171, ; 602
	i32 231, ; 603
	i32 235, ; 604
	i32 334, ; 605
	i32 78, ; 606
	i32 240, ; 607
	i32 192, ; 608
	i32 108, ; 609
	i32 224, ; 610
	i32 266, ; 611
	i32 67, ; 612
	i32 63, ; 613
	i32 27, ; 614
	i32 160, ; 615
	i32 233, ; 616
	i32 10, ; 617
	i32 184, ; 618
	i32 11, ; 619
	i32 78, ; 620
	i32 126, ; 621
	i32 83, ; 622
	i32 178, ; 623
	i32 66, ; 624
	i32 107, ; 625
	i32 65, ; 626
	i32 128, ; 627
	i32 122, ; 628
	i32 77, ; 629
	i32 281, ; 630
	i32 271, ; 631
	i32 333, ; 632
	i32 8, ; 633
	i32 239, ; 634
	i32 2, ; 635
	i32 44, ; 636
	i32 284, ; 637
	i32 156, ; 638
	i32 128, ; 639
	i32 269, ; 640
	i32 23, ; 641
	i32 133, ; 642
	i32 227, ; 643
	i32 258, ; 644
	i32 328, ; 645
	i32 337, ; 646
	i32 310, ; 647
	i32 29, ; 648
	i32 226, ; 649
	i32 62, ; 650
	i32 186, ; 651
	i32 90, ; 652
	i32 87, ; 653
	i32 148, ; 654
	i32 188, ; 655
	i32 36, ; 656
	i32 86, ; 657
	i32 247, ; 658
	i32 323, ; 659
	i32 318, ; 660
	i32 177, ; 661
	i32 50, ; 662
	i32 6, ; 663
	i32 90, ; 664
	i32 330, ; 665
	i32 21, ; 666
	i32 162, ; 667
	i32 96, ; 668
	i32 50, ; 669
	i32 113, ; 670
	i32 263, ; 671
	i32 130, ; 672
	i32 76, ; 673
	i32 27, ; 674
	i32 240, ; 675
	i32 262, ; 676
	i32 7, ; 677
	i32 185, ; 678
	i32 110, ; 679
	i32 263, ; 680
	i32 249 ; 681
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
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-thumb-mode,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }

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
!7 = !{i32 1, !"min_enum_size", i32 4}
