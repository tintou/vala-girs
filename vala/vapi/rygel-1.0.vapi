/* rygel-1.0.vapi generated by valac 0.15.0, do not modify. */

namespace Rygel {
	[CCode (cheader_filename = "rygel.h")]
	public class AudioItem : Rygel.MediaItem {
		public int bitrate;
		public int bits_per_sample;
		public int channels;
		public long duration;
		public int sample_freq;
		public const string UPNP_CLASS;
		public AudioItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = AudioItem.UPNP_CLASS);
		public override bool streamable ();
	}
	[CCode (cheader_filename = "rygel.h")]
	[DBus (name = "org.gnome.Rygel1")]
	public class DBusService : GLib.Object, Rygel.DBusInterface {
		public DBusService (Rygel.Main main);
	}
	[CCode (cheader_filename = "rygel.h")]
	public class IconInfo {
		public int depth;
		public string file_extension;
		public int height;
		public string mime_type;
		public int64 size;
		public string uri;
		public int width;
		public IconInfo (string mime_type, string file_extension);
	}
	[CCode (cheader_filename = "rygel.h")]
	public class ImageItem : Rygel.MediaItem, Rygel.VisualItem {
		public const string UPNP_CLASS;
		public ImageItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = ImageItem.UPNP_CLASS);
		public override void add_uri (string uri);
		protected override GUPnP.ProtocolInfo get_protocol_info (string? uri, string protocol);
		public override bool streamable ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public class LogHandler : GLib.Object {
		public static Rygel.LogHandler get_default ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public class LogicalExpression : Rygel.SearchExpression<Rygel.LogicalOperator,Rygel.SearchExpression,Rygel.SearchExpression> {
		public LogicalExpression ();
		public override bool satisfied_by (Rygel.MediaObject media_object);
		public override string to_string ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public class Main : GLib.Object {
		public bool need_restart;
		public void exit (int exit_code);
		public void restart ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public class MediaArtStore : GLib.Object {
		public Rygel.Thumbnail? find_media_art (Rygel.MusicItem item, bool simple = false) throws GLib.Error;
		public Rygel.Thumbnail? find_media_art_any (Rygel.MusicItem item) throws GLib.Error;
		public static Rygel.MediaArtStore? get_default ();
		public GLib.File get_media_art_file (string type, Rygel.MusicItem item, bool simple = false);
	}
	[CCode (cheader_filename = "rygel.h")]
	public abstract class MediaContainer : Rygel.MediaObject {
		public int child_count;
		public int64 storage_used;
		public uint32 update_id;
		public const string MUSIC_ALBUM;
		public const string MUSIC_ARTIST;
		public const string MUSIC_GENRE;
		public const string STORAGE_FOLDER;
		public const string UPNP_CLASS;
		public MediaContainer (string id, Rygel.MediaContainer? parent, string title, int child_count);
		public abstract async Rygel.MediaObject? find_object (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async Rygel.MediaObjects? get_children (uint offset, uint max_count, GLib.Cancellable? cancellable) throws GLib.Error;
		public MediaContainer.root (string title, int child_count);
		public void updated ();
		public signal void container_updated (Rygel.MediaContainer container);
	}
	[CCode (cheader_filename = "rygel.h")]
	public abstract class MediaItem : Rygel.MediaObject {
		protected GLib.Regex address_regex;
		public string date;
		public string dlna_profile;
		public string mime_type;
		public MediaItem (string id, Rygel.MediaContainer parent, string title, string upnp_class);
		protected virtual void add_resources (GUPnP.DIDLLiteItem didl_item, bool allow_internal) throws GLib.Error;
		public virtual void add_uri (string uri);
		public virtual Gst.Element? create_stream_source ();
		protected virtual GUPnP.ProtocolInfo get_protocol_info (string? uri, string protocol);
		public bool is_live_stream ();
		public abstract bool streamable ();
		public bool place_holder { get; set; }
		public int64 size { get; set; }
	}
	[CCode (cheader_filename = "rygel.h")]
	public abstract class MediaObject : GLib.Object {
		public string id;
		public uint64 modified;
		public weak Rygel.MediaContainer parent;
		public string ref_id;
		public string upnp_class;
		public Gee.ArrayList<string> uris;
		public MediaObject ();
		protected int compare_int_props (int prop1, int prop2);
		protected int compare_string_props (string prop1, string prop2);
		public async GLib.File? get_writable (GLib.Cancellable? cancellable) throws GLib.Error;
		public async Gee.ArrayList<GLib.File> get_writables (GLib.Cancellable? cancellable) throws GLib.Error;
		public Rygel.MediaContainer parent_ref { get; set; }
		public string title { get; set; }
	}
	[CCode (cheader_filename = "rygel.h")]
	public class MediaObjects : Gee.ArrayList<Rygel.MediaObject> {
		public const string SORT_CAPS;
		public MediaObjects ();
		public override Gee.List<Rygel.MediaObject>? slice (int start, int stop);
	}
	[CCode (cheader_filename = "rygel.h")]
	public class MediaRendererPlugin : Rygel.Plugin {
		public MediaRendererPlugin (string name, string? title, string? description = null);
		public virtual Rygel.MediaPlayer? get_player ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public abstract class MediaServerPlugin : Rygel.Plugin {
		public Rygel.MediaContainer root_container;
		public MediaServerPlugin (Rygel.MediaContainer root_container, string name, string? description = null);
	}
	[CCode (cheader_filename = "rygel.h")]
	public class MetaConfig : GLib.Object, Rygel.Configuration {
		public MetaConfig ();
		public static Rygel.MetaConfig get_default ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public class MusicItem : Rygel.AudioItem {
		public string album;
		public Rygel.Thumbnail album_art;
		public string artist;
		public string genre;
		public int track_number;
		public const string UPNP_CLASS;
		public MusicItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = MusicItem.UPNP_CLASS);
		public void lookup_album_art ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public class PhotoItem : Rygel.ImageItem {
		public string creator;
		public const string UPNP_CLASS;
		public PhotoItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = PhotoItem.UPNP_CLASS);
	}
	[CCode (cheader_filename = "rygel.h")]
	public class Plugin : GUPnP.ResourceFactory {
		public Gee.ArrayList<Rygel.IconInfo> default_icons;
		public string desc_path;
		public string description;
		public Gee.ArrayList<Rygel.IconInfo> icon_infos;
		public string name;
		public Gee.ArrayList<Rygel.ResourceInfo> resource_infos;
		public string title;
		public Plugin (string desc_path, string name, string? title, string? description = null);
		public void add_icon (Rygel.IconInfo icon_info);
		public void add_resource (Rygel.ResourceInfo resource_info);
		public bool active { get; set; }
	}
	[CCode (cheader_filename = "rygel.h")]
	public class PluginLoader : GLib.Object {
		public PluginLoader ();
		public void add_plugin (Rygel.Plugin plugin);
		public Rygel.Plugin? get_plugin_by_name (string name);
		public Gee.Collection<Rygel.Plugin> list_plugins ();
		public void load_plugins ();
		public bool plugin_disabled (string name);
		public signal void plugin_available (Rygel.Plugin plugin);
	}
	[CCode (cheader_filename = "rygel.h")]
	public class RelationalExpression : Rygel.SearchExpression<GUPnP.SearchCriteriaOp,string,string> {
		public RelationalExpression ();
		public bool compare_int (int integer);
		public bool compare_string (string? str);
		public override bool satisfied_by (Rygel.MediaObject media_object);
		public override string to_string ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public class ResourceInfo {
		public string description_path;
		public GLib.Type type;
		public string upnp_id;
		public string upnp_type;
		public ResourceInfo (string upnp_id, string upnp_type, string description_path, GLib.Type type);
	}
	[CCode (cheader_filename = "rygel.h")]
	public abstract class SearchExpression<G,H,I> {
		public G op;
		public H operand1;
		public I operand2;
		public SearchExpression ();
		public abstract bool satisfied_by (Rygel.MediaObject media_object);
		public abstract string to_string ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public class SignalHandler : GLib.Object {
		public SignalHandler ();
		public static void cleanup ();
		public static void setup (Rygel.Main _main);
	}
	[CCode (cheader_filename = "rygel.h")]
	public class SimpleContainer : Rygel.MediaContainer, Rygel.SearchableContainer {
		public Rygel.MediaObjects children;
		public SimpleContainer (string id, Rygel.MediaContainer? parent, string title);
		public void add_child_container (Rygel.MediaContainer child);
		public void add_child_item (Rygel.MediaItem child);
		public void clear ();
		public override async Rygel.MediaObject? find_object (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public Rygel.MediaObjects get_all_children ();
		public override async Rygel.MediaObjects? get_children (uint offset, uint max_count, GLib.Cancellable? cancellable) throws GLib.Error;
		public bool is_child_id_unique (string child_id);
		public void remove_child (Rygel.MediaObject child);
		public SimpleContainer.root (string title);
	}
	[CCode (cheader_filename = "rygel.h")]
	public class Subtitle {
		public string caption_type;
		public string mime_type;
		public int64 size;
		public string uri;
		public Subtitle (string mime_type = "text/plain", string caption_type = "srt");
	}
	[CCode (cheader_filename = "rygel.h")]
	public class Thumbnail : Rygel.IconInfo {
		public string dlna_profile;
		public Thumbnail (string mime_type = "image/jpeg", string dlna_profile = "JPEG_TN", string file_extension = "jpg");
	}
	[CCode (cheader_filename = "rygel.h")]
	public class UserConfig : GLib.Object, Rygel.Configuration {
		protected GLib.KeyFile key_file;
		protected GLib.KeyFile sys_key_file;
		public const string AAC_TRANSCODER_KEY;
		public const string ALLOW_DELETION_KEY;
		public const string ALLOW_UPLOAD_KEY;
		public const string AVC_TRANSCODER_KEY;
		public const string CONFIG_FILE;
		public const string ENABLED_KEY;
		public const string IFACE_KEY;
		public const string LOG_LEVELS_KEY;
		public const string LPCM_TRANSCODER_KEY;
		public const string MP2TS_TRANSCODER_KEY;
		public const string MP3_TRANSCODER_KEY;
		public const string MUSIC_UPLOAD_DIR_PATH_KEY;
		public const string PICTURE_UPLOAD_DIR_PATH_KEY;
		public const string PLUGIN_PATH_KEY;
		public const string PORT_KEY;
		public const string TITLE_KEY;
		public const string TRANSCODING_KEY;
		public const string UPLOAD_FOLDER_KEY;
		public const string UPNP_ENABLED_KEY;
		public const string VIDEO_UPLOAD_DIR_PATH_KEY;
		public const string WMV_TRANSCODER_KEY;
		public UserConfig (string file) throws GLib.Error;
		public static Rygel.UserConfig get_default () throws GLib.Error;
	}
	[CCode (cheader_filename = "rygel.h")]
	public class VideoItem : Rygel.AudioItem, Rygel.VisualItem {
		public string author;
		public Gee.ArrayList<Rygel.Subtitle> subtitles;
		public const string UPNP_CLASS;
		public VideoItem (string id, Rygel.MediaContainer parent, string title, string upnp_class = VideoItem.UPNP_CLASS);
		public override void add_uri (string uri);
		public override bool streamable ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public class XMLUtils {
		public XMLUtils ();
		public static Xml.Node* get_element (Xml.Node* node, ...);
	}
	[CCode (cheader_filename = "rygel.h")]
	public interface Configuration : GLib.Object {
		public abstract bool get_aac_transcoder () throws GLib.Error;
		public abstract bool get_allow_deletion () throws GLib.Error;
		public abstract bool get_allow_upload () throws GLib.Error;
		public abstract bool get_avc_transcoder () throws GLib.Error;
		public abstract bool get_bool (string section, string key) throws GLib.Error;
		public abstract bool get_enabled (string section) throws GLib.Error;
		public abstract int get_int (string section, string key, int min, int max) throws GLib.Error;
		public abstract Gee.ArrayList<int> get_int_list (string section, string key) throws GLib.Error;
		public abstract string get_interface () throws GLib.Error;
		public abstract string get_log_levels () throws GLib.Error;
		public abstract bool get_lpcm_transcoder () throws GLib.Error;
		public abstract bool get_mp2ts_transcoder () throws GLib.Error;
		public abstract bool get_mp3_transcoder () throws GLib.Error;
		public abstract string get_music_upload_folder () throws GLib.Error;
		public abstract string get_picture_upload_folder () throws GLib.Error;
		public abstract string get_plugin_path () throws GLib.Error;
		public abstract int get_port () throws GLib.Error;
		public abstract string get_string (string section, string key) throws GLib.Error;
		public abstract Gee.ArrayList<string> get_string_list (string section, string key) throws GLib.Error;
		public abstract string get_title (string section) throws GLib.Error;
		public abstract bool get_transcoding () throws GLib.Error;
		public abstract bool get_upnp_enabled () throws GLib.Error;
		public abstract string get_video_upload_folder () throws GLib.Error;
		public abstract bool get_wmv_transcoder () throws GLib.Error;
	}
	[CCode (cheader_filename = "rygel.h")]
	[DBus (name = "org.gnome.Rygel1")]
	public interface DBusInterface : GLib.Object {
		public const string OBJECT_PATH;
		public const string SERVICE_NAME;
		public abstract void shutdown () throws GLib.IOError;
	}
	[CCode (cheader_filename = "rygel.h")]
	public interface MediaPlayer : GLib.Object {
		public abstract string[] get_mime_types ();
		public abstract string[] get_protocols ();
		public abstract bool seek (Gst.ClockTime time);
		public abstract int64 duration { get; }
		public string duration_as_str { owned get; }
		public abstract string playback_state { owned get; set; }
		public abstract int64 position { get; }
		public string position_as_str { owned get; }
		public abstract string? uri { owned get; set; }
		public abstract double volume { get; set; }
	}
	[CCode (cheader_filename = "rygel.h")]
	public interface SearchableContainer : Rygel.MediaContainer {
		public async Rygel.MediaObject? find_object (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async Rygel.MediaObjects? search (Rygel.SearchExpression? expression, uint offset, uint max_count, out uint total_matches, GLib.Cancellable? cancellable) throws GLib.Error;
		public async Rygel.MediaObjects? simple_search (Rygel.SearchExpression? expression, uint offset, uint max_count, out uint total_matches, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract Gee.ArrayList<string> search_classes { get; set; }
	}
	[CCode (cheader_filename = "rygel.h")]
	public interface StateMachine : GLib.Object {
		public abstract async void run ();
		public abstract GLib.Cancellable cancellable { get; set; }
		public signal void completed ();
	}
	[CCode (cheader_filename = "rygel.h")]
	public interface VisualItem : Rygel.MediaItem {
		public abstract int color_depth { get; set; }
		public abstract int height { get; set; }
		public abstract int pixel_height { get; set; }
		public abstract int pixel_width { get; set; }
		public abstract Gee.ArrayList<Rygel.Thumbnail> thumbnails { get; protected set; }
		public abstract int width { get; set; }
	}
	[CCode (cheader_filename = "rygel.h")]
	public interface WritableContainer : Rygel.MediaContainer {
		public abstract async void add_item (Rygel.MediaItem item, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract async void remove_item (string id, GLib.Cancellable? cancellable) throws GLib.Error;
		public abstract Gee.ArrayList<string> create_classes { get; set; }
	}
	[CCode (cheader_filename = "rygel.h")]
	public enum LogLevel {
		INVALID,
		CRITICAL,
		ERROR,
		WARNING,
		INFO,
		DEFAULT,
		DEBUG
	}
	[CCode (cheader_filename = "rygel.h")]
	public enum LogicalOperator {
		AND,
		OR
	}
	[CCode (cheader_filename = "rygel.h")]
	public errordomain ConfigurationError {
		NO_VALUE_SET,
		VALUE_OUT_OF_RANGE
	}
	[CCode (cheader_filename = "rygel.h")]
	public errordomain ContentDirectoryError {
		NO_SUCH_OBJECT,
		INVALID_SORT_CRITERIA,
		RESTRICTED_OBJECT,
		BAD_METADATA,
		RESTRICTED_PARENT,
		NO_SUCH_DESTINATION_RESOURCE,
		CANT_PROCESS,
		INVALID_ARGS
	}
}
namespace FreeDesktop {
	[CCode (cheader_filename = "rygel.h")]
	[DBus (name = "org.freedesktop.DBus")]
	public interface DBusObject : GLib.Object {
		public abstract async string[] list_activatable_names () throws GLib.DBusError;
		public abstract async string[] list_names () throws GLib.DBusError;
		public abstract uint32 request_name (string name, uint32 flags) throws GLib.DBusError;
		public abstract uint32 start_service_by_name (string name, uint32 flags) throws GLib.DBusError;
		public signal void name_owner_changed (string name, string old_owner, string new_owner);
	}
	[CCode (cheader_filename = "rygel.h")]
	[DBus (name = "org.freedesktop.DBus.Properties")]
	public interface Properties : GLib.Object {
		public abstract async GLib.HashTable<string,GLib.Variant> get_all (string iface) throws GLib.DBusError;
	}
	[CCode (cheader_filename = "rygel.h")]
	public enum DBusRequestNameReply {
		PRIMARY_OWNER,
		IN_QUEUE,
		EXISTS,
		ALREADY_OWNER
	}
	[CCode (cheader_filename = "rygel.h")]
	public const string DBUS_OBJECT;
	[CCode (cheader_filename = "rygel.h")]
	public const string DBUS_SERVICE;
}
[CCode (cheader_filename = "rygel.h")]
public errordomain RootDeviceFactoryError {
	XML_PARSE
}
