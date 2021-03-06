/* spice-client-gtk-3.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "Spice", gir_namespace = "SpiceClientGtk", gir_version = "3.0", lower_case_cprefix = "spice_")]
namespace Spice {
	[CCode (cheader_filename = "spice-widget.h", type_id = "spice_display_get_type ()")]
	public class Display : Gtk.DrawingArea, Atk.Implementor, Gtk.Buildable {
		[CCode (has_construct_function = false)]
		public Display (Spice.Session session, int id);
		[Deprecated (since = "0.8")]
		public void copy_to_guest ();
		public Spice.GrabSequence get_grab_keys ();
		public Gdk.Pixbuf get_pixbuf ();
		public void mouse_ungrab ();
		[Deprecated (since = "0.8")]
		public void paste_from_guest ();
		public void send_keys (uint keyvals, int nkeyvals, Spice.DisplayKeyEvent kind);
		public void set_grab_keys (Spice.GrabSequence seq);
		[Deprecated (since = "0.8")]
		[NoAccessorMethod]
		public bool auto_clipboard { get; set; }
		[NoAccessorMethod]
		public int channel_id { get; construct; }
		[NoAccessorMethod]
		public bool disable_inputs { get; set construct; }
		[NoAccessorMethod]
		public bool grab_keyboard { get; set construct; }
		[NoAccessorMethod]
		public bool grab_mouse { get; set construct; }
		[NoAccessorMethod]
		public bool resize_guest { get; set construct; }
		[NoAccessorMethod]
		public bool scaling { get; set construct; }
		[NoAccessorMethod]
		public Spice.Session session { owned get; construct; }
		public signal void grab_keys_pressed ();
		public virtual signal void keyboard_grab (int grabbed);
		public virtual signal void mouse_grab (int grabbed);
	}
	[CCode (cheader_filename = "spice-widget.h", copy_function = "g_boxed_copy", free_function = "g_boxed_free", type_id = "spice_grab_sequence_get_type ()")]
	[Compact]
	public class GrabSequence {
		[CCode (has_construct_function = false)]
		public GrabSequence (uint nkeysyms, uint keysyms);
		public string as_string ();
		public Spice.GrabSequence copy ();
		public void free ();
		[CCode (has_construct_function = false)]
		public GrabSequence.from_string (string str);
	}
	[CCode (cheader_filename = "spice-widget.h", type_id = "spice_gtk_session_get_type ()")]
	public class GtkSession : GLib.Object {
		[CCode (has_construct_function = false)]
		protected GtkSession ();
		public void copy_to_guest ();
		public static unowned Spice.GtkSession @get (Spice.Session session);
		public void paste_from_guest ();
		[NoAccessorMethod]
		public bool auto_clipboard { get; set construct; }
		[NoAccessorMethod]
		public bool auto_usbredir { get; set construct; }
		[NoAccessorMethod]
		public Spice.Session session { owned get; construct; }
	}
	[CCode (cheader_filename = "spice-widget.h")]
	public enum DisplayKeyEvent {
		[CCode (cname = "SPICE_DISPLAY_KEY_EVENT_PRESS")]
		PRESS,
		[CCode (cname = "SPICE_DISPLAY_KEY_EVENT_RELEASE")]
		RELEASE,
		[CCode (cname = "SPICE_DISPLAY_KEY_EVENT_CLICK")]
		CLICK
	}
}
