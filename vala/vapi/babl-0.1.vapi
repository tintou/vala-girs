/* babl-0.1.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Babl", gir_namespace = "Babl", gir_version = "0.1", lower_case_cprefix = "babl_")]
namespace Babl {
	[CCode (cheader_filename = "Babl-0.1.h")]
	[Compact]
	public class  {
		[CCode (cname = "babl_get_name")]
		public unowned string et_name ();
		[CCode (cname = "babl_format_get_bytes_per_pixel")]
		public int ormat_get_bytes_per_pixel ();
		[CCode (cname = "babl_format_get_n_components")]
		public int ormat_get_n_components ();
		[CCode (cname = "babl_format_has_alpha")]
		public int ormat_has_alpha ();
		[CCode (cname = "babl_format_is_format_n")]
		public int ormat_is_format_n ();
		[CCode (cname = "babl_process")]
		public long rocess (void* source, void* destination, long n);
	}
	[CCode (cheader_filename = "Babl-0.1.h", has_target = false)]
	public delegate long FuncLinear (string src, string dst, long n);
	[CCode (cheader_filename = "Babl-0.1.h", has_target = false)]
	public delegate long FuncPlanar (int src_bands, string src, int src_pitch, int dst_bands, string dst, int dst_pitch, long n);
	[CCode (cheader_filename = "Babl-0.1.h", cname = "BABL_MAJOR_VERSION")]
	public const int MAJOR_VERSION;
	[CCode (cheader_filename = "Babl-0.1.h", cname = "BABL_MICRO_VERSION")]
	public const int MICRO_VERSION;
	[CCode (cheader_filename = "Babl-0.1.h", cname = "BABL_MINOR_VERSION")]
	public const int MINOR_VERSION;
	[CCode (cheader_filename = "Babl-0.1.h")]
	public static void exit ();
	[CCode (cheader_filename = "Babl-0.1.h")]
	public static void get_version (int major, int minor, int micro);
	[CCode (cheader_filename = "Babl-0.1.h")]
	public static void init ();
}
