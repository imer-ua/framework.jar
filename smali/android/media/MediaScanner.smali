.class public Landroid/media/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScanner$FileEntry;,
        Landroid/media/MediaScanner$MediaBulkDeleter;,
        Landroid/media/MediaScanner$MyMediaScannerClient;,
        Landroid/media/MediaScanner$PlaylistEntry;,
        Landroid/media/MediaScanner$WplHandler;
    }
.end annotation


# static fields
.field private static final ALARMS_DIR:Ljava/lang/String; = "/alarms/"

.field private static final DATE_MODIFIED_PLAYLISTS_COLUMN_INDEX:I = 0x2

.field private static final DEFAULT_RINGTONE_PROPERTY_PREFIX:Ljava/lang/String; = "ro.config."

.field private static final ENABLE_BULK_INSERTS:Z = true

.field private static final FILES_PRESCAN_DATE_MODIFIED_COLUMN_INDEX:I = 0x3

.field private static final FILES_PRESCAN_FORMAT_COLUMN_INDEX:I = 0x2

.field private static final FILES_PRESCAN_ID_COLUMN_INDEX:I = 0x0

.field private static final FILES_PRESCAN_PATH_COLUMN_INDEX:I = 0x1

.field private static final FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static final ID_PLAYLISTS_COLUMN_INDEX:I = 0x0

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final LAST_INTERNAL_SCAN_FINGERPRINT:Ljava/lang/String; = "lastScanFingerprint"

.field private static final MUSIC_DIR:Ljava/lang/String; = "/music/"

.field private static final NOTIFICATIONS_DIR:Ljava/lang/String; = "/notifications/"

.field private static final PATH_PLAYLISTS_COLUMN_INDEX:I = 0x1

.field private static final PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

.field private static final PODCAST_DIR:Ljava/lang/String; = "/podcasts/"

.field private static final RINGTONES_DIR:Ljava/lang/String; = "/ringtones/"

.field public static final SCANNED_BUILD_PREFS_NAME:Ljava/lang/String; = "MediaScanBuild"

.field private static final SYSTEM_SOUNDS_DIR:Ljava/lang/String; = "/system/media/audio"

.field private static final TAG:Ljava/lang/String; = "MediaScanner"

.field private static mMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mNoMediaPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastInternalScanFingerprint:Ljava/lang/String;


# instance fields
.field private final mAudioUri:Landroid/net/Uri;

.field private final mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

.field private final mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContext:Landroid/content/Context;

.field private mDefaultAlarmAlertFilename:Ljava/lang/String;

.field private mDefaultAlarmSet:Z

.field private mDefaultNotificationFilename:Ljava/lang/String;

.field private mDefaultNotificationSet:Z

.field private mDefaultRingtoneFilename:Ljava/lang/String;

.field private mDefaultRingtoneSet:Z

.field private mDrmManagerClient:Landroid/drm/DrmManagerClient;

.field private final mFilesUri:Landroid/net/Uri;

.field private final mFilesUriNoNotify:Landroid/net/Uri;

.field private final mImagesUri:Landroid/net/Uri;

.field private mMediaInserter:Landroid/media/MediaInserter;

.field private final mMediaProvider:Landroid/content/ContentProviderClient;

.field private mMtpObjectHandle:I

.field private mNativeContext:J

.field private mOriginalCount:I

.field private final mPackageName:Ljava/lang/String;

.field private final mPlayLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/MediaScanner$PlaylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaylistsUri:Landroid/net/Uri;

.field private final mProcessGenres:Z

.field private final mProcessPlaylists:Z

.field private final mThumbsUri:Landroid/net/Uri;

.field private final mVideoUri:Landroid/net/Uri;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object v0
.end method

.method static synthetic -get11(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get12(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get13(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    return-object v0
.end method

.method static synthetic -get14(Landroid/media/MediaScanner;)Landroid/content/ContentProviderClient;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    return-object v0
.end method

.method static synthetic -get15(Landroid/media/MediaScanner;)I
    .locals 1

    iget v0, p0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    return v0
.end method

.method static synthetic -get16(Landroid/media/MediaScanner;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get17(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    return v0
.end method

.method static synthetic -get18(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    return v0
.end method

.method static synthetic -get19(Landroid/media/MediaScanner;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    return-object v0
.end method

.method static synthetic -get20()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/MediaScanner;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return v0
.end method

.method static synthetic -get6(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return v0
.end method

.method static synthetic -get8(Landroid/media/MediaScanner;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Landroid/media/MediaScanner;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return v0
.end method

.method static synthetic -set0(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    return p1
.end method

.method static synthetic -set1(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    return p1
.end method

.method static synthetic -set2(Landroid/media/MediaScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    return p1
.end method

.method static synthetic -set3(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;
    .locals 0

    iput-object p1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/MediaScanner;)Z
    .locals 1

    invoke-direct {p0}, Landroid/media/MediaScanner;->isDrmEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/media/MediaScanner;->isSystemSoundWithMetadata(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/media/MediaScanner;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "base"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "client"    # Landroid/media/MediaScannerClient;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Landroid/media/MediaScanner;->native_init()V

    .line 128
    new-array v0, v6, [Ljava/lang/String;

    .line 129
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 130
    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    .line 131
    const-string/jumbo v1, "format"

    aput-object v1, v0, v4

    .line 132
    const-string/jumbo v1, "date_modified"

    aput-object v1, v0, v5

    .line 128
    sput-object v0, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 135
    new-array v0, v3, [Ljava/lang/String;

    .line 136
    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    .line 135
    sput-object v0, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    .line 144
    new-array v0, v3, [Ljava/lang/String;

    .line 145
    const-string/jumbo v1, "playlist_id"

    aput-object v1, v0, v2

    .line 144
    sput-object v0, Landroid/media/MediaScanner;->PLAYLIST_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 163
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    .line 165
    const-string/jumbo v1, "Blues"

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "Classic Rock"

    aput-object v1, v0, v3

    .line 167
    const-string/jumbo v1, "Country"

    aput-object v1, v0, v4

    .line 168
    const-string/jumbo v1, "Dance"

    aput-object v1, v0, v5

    .line 169
    const-string/jumbo v1, "Disco"

    aput-object v1, v0, v6

    .line 170
    const-string/jumbo v1, "Funk"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "Grunge"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "Hip-Hop"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "Jazz"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "Metal"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 175
    const-string/jumbo v1, "New Age"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 176
    const-string/jumbo v1, "Oldies"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 177
    const-string/jumbo v1, "Other"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 178
    const-string/jumbo v1, "Pop"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 179
    const-string/jumbo v1, "R&B"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 180
    const-string/jumbo v1, "Rap"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 181
    const-string/jumbo v1, "Reggae"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 182
    const-string/jumbo v1, "Rock"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 183
    const-string/jumbo v1, "Techno"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 184
    const-string/jumbo v1, "Industrial"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 185
    const-string/jumbo v1, "Alternative"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 186
    const-string/jumbo v1, "Ska"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 187
    const-string/jumbo v1, "Death Metal"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 188
    const-string/jumbo v1, "Pranks"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 189
    const-string/jumbo v1, "Soundtrack"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 190
    const-string/jumbo v1, "Euro-Techno"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 191
    const-string/jumbo v1, "Ambient"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 192
    const-string/jumbo v1, "Trip-Hop"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 193
    const-string/jumbo v1, "Vocal"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 194
    const-string/jumbo v1, "Jazz+Funk"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 195
    const-string/jumbo v1, "Fusion"

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    .line 196
    const-string/jumbo v1, "Trance"

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    .line 197
    const-string/jumbo v1, "Classical"

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 198
    const-string/jumbo v1, "Instrumental"

    const/16 v2, 0x21

    aput-object v1, v0, v2

    .line 199
    const-string/jumbo v1, "Acid"

    const/16 v2, 0x22

    aput-object v1, v0, v2

    .line 200
    const-string/jumbo v1, "House"

    const/16 v2, 0x23

    aput-object v1, v0, v2

    .line 201
    const-string/jumbo v1, "Game"

    const/16 v2, 0x24

    aput-object v1, v0, v2

    .line 202
    const-string/jumbo v1, "Sound Clip"

    const/16 v2, 0x25

    aput-object v1, v0, v2

    .line 203
    const-string/jumbo v1, "Gospel"

    const/16 v2, 0x26

    aput-object v1, v0, v2

    .line 204
    const-string/jumbo v1, "Noise"

    const/16 v2, 0x27

    aput-object v1, v0, v2

    .line 205
    const-string/jumbo v1, "AlternRock"

    const/16 v2, 0x28

    aput-object v1, v0, v2

    .line 206
    const-string/jumbo v1, "Bass"

    const/16 v2, 0x29

    aput-object v1, v0, v2

    .line 207
    const-string/jumbo v1, "Soul"

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    .line 208
    const-string/jumbo v1, "Punk"

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    .line 209
    const-string/jumbo v1, "Space"

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    .line 210
    const-string/jumbo v1, "Meditative"

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    .line 211
    const-string/jumbo v1, "Instrumental Pop"

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    .line 212
    const-string/jumbo v1, "Instrumental Rock"

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    .line 213
    const-string/jumbo v1, "Ethnic"

    const/16 v2, 0x30

    aput-object v1, v0, v2

    .line 214
    const-string/jumbo v1, "Gothic"

    const/16 v2, 0x31

    aput-object v1, v0, v2

    .line 215
    const-string/jumbo v1, "Darkwave"

    const/16 v2, 0x32

    aput-object v1, v0, v2

    .line 216
    const-string/jumbo v1, "Techno-Industrial"

    const/16 v2, 0x33

    aput-object v1, v0, v2

    .line 217
    const-string/jumbo v1, "Electronic"

    const/16 v2, 0x34

    aput-object v1, v0, v2

    .line 218
    const-string/jumbo v1, "Pop-Folk"

    const/16 v2, 0x35

    aput-object v1, v0, v2

    .line 219
    const-string/jumbo v1, "Eurodance"

    const/16 v2, 0x36

    aput-object v1, v0, v2

    .line 220
    const-string/jumbo v1, "Dream"

    const/16 v2, 0x37

    aput-object v1, v0, v2

    .line 221
    const-string/jumbo v1, "Southern Rock"

    const/16 v2, 0x38

    aput-object v1, v0, v2

    .line 222
    const-string/jumbo v1, "Comedy"

    const/16 v2, 0x39

    aput-object v1, v0, v2

    .line 223
    const-string/jumbo v1, "Cult"

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    .line 224
    const-string/jumbo v1, "Gangsta"

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    .line 225
    const-string/jumbo v1, "Top 40"

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    .line 226
    const-string/jumbo v1, "Christian Rap"

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    .line 227
    const-string/jumbo v1, "Pop/Funk"

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    .line 228
    const-string/jumbo v1, "Jungle"

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    .line 229
    const-string/jumbo v1, "Native American"

    const/16 v2, 0x40

    aput-object v1, v0, v2

    .line 230
    const-string/jumbo v1, "Cabaret"

    const/16 v2, 0x41

    aput-object v1, v0, v2

    .line 231
    const-string/jumbo v1, "New Wave"

    const/16 v2, 0x42

    aput-object v1, v0, v2

    .line 232
    const-string/jumbo v1, "Psychadelic"

    const/16 v2, 0x43

    aput-object v1, v0, v2

    .line 233
    const-string/jumbo v1, "Rave"

    const/16 v2, 0x44

    aput-object v1, v0, v2

    .line 234
    const-string/jumbo v1, "Showtunes"

    const/16 v2, 0x45

    aput-object v1, v0, v2

    .line 235
    const-string/jumbo v1, "Trailer"

    const/16 v2, 0x46

    aput-object v1, v0, v2

    .line 236
    const-string/jumbo v1, "Lo-Fi"

    const/16 v2, 0x47

    aput-object v1, v0, v2

    .line 237
    const-string/jumbo v1, "Tribal"

    const/16 v2, 0x48

    aput-object v1, v0, v2

    .line 238
    const-string/jumbo v1, "Acid Punk"

    const/16 v2, 0x49

    aput-object v1, v0, v2

    .line 239
    const-string/jumbo v1, "Acid Jazz"

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    .line 240
    const-string/jumbo v1, "Polka"

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    .line 241
    const-string/jumbo v1, "Retro"

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    .line 242
    const-string/jumbo v1, "Musical"

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    .line 243
    const-string/jumbo v1, "Rock & Roll"

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    .line 244
    const-string/jumbo v1, "Hard Rock"

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    .line 246
    const-string/jumbo v1, "Folk"

    const/16 v2, 0x50

    aput-object v1, v0, v2

    .line 247
    const-string/jumbo v1, "Folk-Rock"

    const/16 v2, 0x51

    aput-object v1, v0, v2

    .line 248
    const-string/jumbo v1, "National Folk"

    const/16 v2, 0x52

    aput-object v1, v0, v2

    .line 249
    const-string/jumbo v1, "Swing"

    const/16 v2, 0x53

    aput-object v1, v0, v2

    .line 250
    const-string/jumbo v1, "Fast Fusion"

    const/16 v2, 0x54

    aput-object v1, v0, v2

    .line 251
    const-string/jumbo v1, "Bebob"

    const/16 v2, 0x55

    aput-object v1, v0, v2

    .line 252
    const-string/jumbo v1, "Latin"

    const/16 v2, 0x56

    aput-object v1, v0, v2

    .line 253
    const-string/jumbo v1, "Revival"

    const/16 v2, 0x57

    aput-object v1, v0, v2

    .line 254
    const-string/jumbo v1, "Celtic"

    const/16 v2, 0x58

    aput-object v1, v0, v2

    .line 255
    const-string/jumbo v1, "Bluegrass"

    const/16 v2, 0x59

    aput-object v1, v0, v2

    .line 256
    const-string/jumbo v1, "Avantgarde"

    const/16 v2, 0x5a

    aput-object v1, v0, v2

    .line 257
    const-string/jumbo v1, "Gothic Rock"

    const/16 v2, 0x5b

    aput-object v1, v0, v2

    .line 258
    const-string/jumbo v1, "Progressive Rock"

    const/16 v2, 0x5c

    aput-object v1, v0, v2

    .line 259
    const-string/jumbo v1, "Psychedelic Rock"

    const/16 v2, 0x5d

    aput-object v1, v0, v2

    .line 260
    const-string/jumbo v1, "Symphonic Rock"

    const/16 v2, 0x5e

    aput-object v1, v0, v2

    .line 261
    const-string/jumbo v1, "Slow Rock"

    const/16 v2, 0x5f

    aput-object v1, v0, v2

    .line 262
    const-string/jumbo v1, "Big Band"

    const/16 v2, 0x60

    aput-object v1, v0, v2

    .line 263
    const-string/jumbo v1, "Chorus"

    const/16 v2, 0x61

    aput-object v1, v0, v2

    .line 264
    const-string/jumbo v1, "Easy Listening"

    const/16 v2, 0x62

    aput-object v1, v0, v2

    .line 265
    const-string/jumbo v1, "Acoustic"

    const/16 v2, 0x63

    aput-object v1, v0, v2

    .line 266
    const-string/jumbo v1, "Humour"

    const/16 v2, 0x64

    aput-object v1, v0, v2

    .line 267
    const-string/jumbo v1, "Speech"

    const/16 v2, 0x65

    aput-object v1, v0, v2

    .line 268
    const-string/jumbo v1, "Chanson"

    const/16 v2, 0x66

    aput-object v1, v0, v2

    .line 269
    const-string/jumbo v1, "Opera"

    const/16 v2, 0x67

    aput-object v1, v0, v2

    .line 270
    const-string/jumbo v1, "Chamber Music"

    const/16 v2, 0x68

    aput-object v1, v0, v2

    .line 271
    const-string/jumbo v1, "Sonata"

    const/16 v2, 0x69

    aput-object v1, v0, v2

    .line 272
    const-string/jumbo v1, "Symphony"

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    .line 273
    const-string/jumbo v1, "Booty Bass"

    const/16 v2, 0x6b

    aput-object v1, v0, v2

    .line 274
    const-string/jumbo v1, "Primus"

    const/16 v2, 0x6c

    aput-object v1, v0, v2

    .line 275
    const-string/jumbo v1, "Porn Groove"

    const/16 v2, 0x6d

    aput-object v1, v0, v2

    .line 276
    const-string/jumbo v1, "Satire"

    const/16 v2, 0x6e

    aput-object v1, v0, v2

    .line 277
    const-string/jumbo v1, "Slow Jam"

    const/16 v2, 0x6f

    aput-object v1, v0, v2

    .line 278
    const-string/jumbo v1, "Club"

    const/16 v2, 0x70

    aput-object v1, v0, v2

    .line 279
    const-string/jumbo v1, "Tango"

    const/16 v2, 0x71

    aput-object v1, v0, v2

    .line 280
    const-string/jumbo v1, "Samba"

    const/16 v2, 0x72

    aput-object v1, v0, v2

    .line 281
    const-string/jumbo v1, "Folklore"

    const/16 v2, 0x73

    aput-object v1, v0, v2

    .line 282
    const-string/jumbo v1, "Ballad"

    const/16 v2, 0x74

    aput-object v1, v0, v2

    .line 283
    const-string/jumbo v1, "Power Ballad"

    const/16 v2, 0x75

    aput-object v1, v0, v2

    .line 284
    const-string/jumbo v1, "Rhythmic Soul"

    const/16 v2, 0x76

    aput-object v1, v0, v2

    .line 285
    const-string/jumbo v1, "Freestyle"

    const/16 v2, 0x77

    aput-object v1, v0, v2

    .line 286
    const-string/jumbo v1, "Duet"

    const/16 v2, 0x78

    aput-object v1, v0, v2

    .line 287
    const-string/jumbo v1, "Punk Rock"

    const/16 v2, 0x79

    aput-object v1, v0, v2

    .line 288
    const-string/jumbo v1, "Drum Solo"

    const/16 v2, 0x7a

    aput-object v1, v0, v2

    .line 289
    const-string/jumbo v1, "A capella"

    const/16 v2, 0x7b

    aput-object v1, v0, v2

    .line 290
    const-string/jumbo v1, "Euro-House"

    const/16 v2, 0x7c

    aput-object v1, v0, v2

    .line 291
    const-string/jumbo v1, "Dance Hall"

    const/16 v2, 0x7d

    aput-object v1, v0, v2

    .line 293
    const-string/jumbo v1, "Goa"

    const/16 v2, 0x7e

    aput-object v1, v0, v2

    .line 294
    const-string/jumbo v1, "Drum & Bass"

    const/16 v2, 0x7f

    aput-object v1, v0, v2

    .line 295
    const-string/jumbo v1, "Club-House"

    const/16 v2, 0x80

    aput-object v1, v0, v2

    .line 296
    const-string/jumbo v1, "Hardcore"

    const/16 v2, 0x81

    aput-object v1, v0, v2

    .line 297
    const-string/jumbo v1, "Terror"

    const/16 v2, 0x82

    aput-object v1, v0, v2

    .line 298
    const-string/jumbo v1, "Indie"

    const/16 v2, 0x83

    aput-object v1, v0, v2

    .line 299
    const-string/jumbo v1, "Britpop"

    const/16 v2, 0x84

    aput-object v1, v0, v2

    .line 300
    const/4 v1, 0x0

    const/16 v2, 0x85

    aput-object v1, v0, v2

    .line 301
    const-string/jumbo v1, "Polsk Punk"

    const/16 v2, 0x86

    aput-object v1, v0, v2

    .line 302
    const-string/jumbo v1, "Beat"

    const/16 v2, 0x87

    aput-object v1, v0, v2

    .line 303
    const-string/jumbo v1, "Christian Gangsta"

    const/16 v2, 0x88

    aput-object v1, v0, v2

    .line 304
    const-string/jumbo v1, "Heavy Metal"

    const/16 v2, 0x89

    aput-object v1, v0, v2

    .line 305
    const-string/jumbo v1, "Black Metal"

    const/16 v2, 0x8a

    aput-object v1, v0, v2

    .line 306
    const-string/jumbo v1, "Crossover"

    const/16 v2, 0x8b

    aput-object v1, v0, v2

    .line 307
    const-string/jumbo v1, "Contemporary Christian"

    const/16 v2, 0x8c

    aput-object v1, v0, v2

    .line 308
    const-string/jumbo v1, "Christian Rock"

    const/16 v2, 0x8d

    aput-object v1, v0, v2

    .line 309
    const-string/jumbo v1, "Merengue"

    const/16 v2, 0x8e

    aput-object v1, v0, v2

    .line 310
    const-string/jumbo v1, "Salsa"

    const/16 v2, 0x8f

    aput-object v1, v0, v2

    .line 311
    const-string/jumbo v1, "Thrash Metal"

    const/16 v2, 0x90

    aput-object v1, v0, v2

    .line 312
    const-string/jumbo v1, "Anime"

    const/16 v2, 0x91

    aput-object v1, v0, v2

    .line 313
    const-string/jumbo v1, "JPop"

    const/16 v2, 0x92

    aput-object v1, v0, v2

    .line 314
    const-string/jumbo v1, "Synthpop"

    const/16 v2, 0x93

    aput-object v1, v0, v2

    .line 163
    sput-object v0, Landroid/media/MediaScanner;->ID3_GENRES:[Ljava/lang/String;

    .line 1506
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    .line 1507
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    .line 1509
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v4, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 335
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 362
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v4, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    .line 391
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .line 392
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    .line 396
    iput-object v7, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 465
    new-instance v4, Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-direct {v4, p0}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    iput-object v4, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    .line 399
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_setup()V

    .line 400
    iput-object p1, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    .line 401
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mPackageName:Ljava/lang/String;

    .line 402
    iput-object p2, p0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    .line 404
    iget-object v4, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 405
    iget-object v4, p0, Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    iput-boolean v8, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 407
    invoke-direct {p0}, Landroid/media/MediaScanner;->setDefaultRingtoneFileNames()V

    .line 409
    iget-object v4, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 410
    const-string/jumbo v5, "media"

    .line 409
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 412
    sget-object v4, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 414
    iget-object v4, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "MediaScanBuild"

    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 416
    .local v3, "scanSettings":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "lastScanFingerprint"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 415
    sput-object v4, Landroid/media/MediaScanner;->sLastInternalScanFingerprint:Ljava/lang/String;

    .line 419
    .end local v3    # "scanSettings":Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;

    .line 420
    invoke-static {p2}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    .line 421
    invoke-static {p2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    .line 422
    invoke-static {p2}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 423
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 424
    iget-object v4, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v5, "nonotify"

    const-string/jumbo v6, "1"

    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    .line 426
    const-string/jumbo v4, "internal"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 428
    iput-boolean v8, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 429
    iput-boolean v8, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 430
    invoke-static {p2}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    .line 437
    :goto_0
    iget-object v4, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v2, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 438
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_1

    .line 439
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 440
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "country":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 442
    if-eqz v0, :cond_3

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 450
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "language":Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v4, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v5, "close"

    invoke-virtual {v4, v5}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 453
    const-string/jumbo v4, "media.extractor"

    invoke-static {v4}, Landroid/media/MediaScannerInjector;->initMediaFileCapture(Ljava/lang/String;)V

    .line 398
    return-void

    .line 432
    .end local v2    # "locale":Ljava/util/Locale;
    :cond_2
    iput-boolean v9, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    .line 433
    iput-boolean v9, p0, Landroid/media/MediaScanner;->mProcessGenres:Z

    .line 434
    iput-object v7, p0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    goto :goto_0

    .line 445
    .restart local v0    # "country":Ljava/lang/String;
    .restart local v1    # "language":Ljava/lang/String;
    .restart local v2    # "locale":Ljava/util/Locale;
    :cond_3
    invoke-direct {p0, v1}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1715
    new-instance v1, Landroid/media/MediaScanner$PlaylistEntry;

    const/4 v6, 0x0

    invoke-direct {v1, v6}, Landroid/media/MediaScanner$PlaylistEntry;-><init>(Landroid/media/MediaScanner$PlaylistEntry;)V

    .line 1717
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1718
    .local v2, "entryLength":I
    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1721
    :cond_0
    const/4 v6, 0x3

    if-ge v2, v6, :cond_1

    return-void

    .line 1722
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_2

    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1726
    :cond_2
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1727
    .local v0, "ch1":C
    const/16 v6, 0x2f

    if-eq v0, v6, :cond_4

    .line 1728
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_6

    const/4 v6, 0x2

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_5

    :goto_1
    move v3, v4

    .line 1730
    .local v3, "fullPath":Z
    :goto_2
    if-nez v3, :cond_3

    .line 1731
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1732
    :cond_3
    iput-object p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    .line 1735
    iget-object v4, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    return-void

    .end local v3    # "fullPath":Z
    :cond_4
    move v3, v4

    .line 1727
    goto :goto_2

    :cond_5
    move v4, v5

    .line 1728
    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2
.end method

.method public static clearMediaPathCache(ZZ)V
    .locals 2
    .param p0, "clearMediaPaths"    # Z
    .param p1, "clearNoMediaPaths"    # Z

    .prologue
    .line 1514
    const-class v1, Landroid/media/MediaScanner;

    monitor-enter v1

    .line 1515
    if-eqz p0, :cond_0

    .line 1516
    :try_start_0
    sget-object v0, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1518
    :cond_0
    if-eqz p1, :cond_1

    .line 1519
    sget-object v0, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 1513
    return-void

    .line 1514
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDrmEnabled()Z
    .locals 2

    .prologue
    .line 468
    const-string/jumbo v1, "drm.service.enabled"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isNoMediaFile(Ljava/lang/String;)Z
    .locals 10
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1473
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    .line 1479
    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 1480
    .local v7, "lastSlash":I
    if-ltz v7, :cond_6

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 1482
    add-int/lit8 v0, v7, 0x1

    const-string/jumbo v2, "._"

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v4, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1483
    return v1

    .line 1489
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v0, -0x4

    const-string/jumbo v3, ".jpg"

    const/4 v5, 0x4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1490
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArt_{"

    move-object v0, p0

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1491
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArt."

    const/16 v5, 0x9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 1490
    if-eqz v0, :cond_3

    .line 1492
    :cond_2
    return v1

    .line 1494
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v7

    add-int/lit8 v8, v0, -0x1

    .line 1495
    .local v8, "length":I
    const/16 v0, 0x11

    if-ne v8, v0, :cond_4

    .line 1496
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "AlbumArtSmall"

    const/16 v5, 0xd

    move-object v0, p0

    .line 1495
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1497
    :cond_4
    if-ne v8, v9, :cond_6

    .line 1498
    add-int/lit8 v2, v7, 0x1

    const-string/jumbo v3, "Folder"

    const/4 v5, 0x6

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    .line 1495
    if-eqz v0, :cond_6

    .line 1499
    :cond_5
    return v1

    .line 1503
    .end local v8    # "length":I
    :cond_6
    return v4
.end method

.method public static isNoMediaPath(Ljava/lang/String;)Z
    .locals 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2f

    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 1525
    if-nez p0, :cond_0

    .line 1526
    return v8

    .line 1529
    :cond_0
    const-string/jumbo v6, "/."

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 1530
    return v10

    .line 1533
    :cond_1
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1534
    .local v2, "firstSlash":I
    if-gtz v2, :cond_2

    .line 1535
    return v8

    .line 1537
    :cond_2
    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1540
    .local v4, "parent":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 1542
    .local v0, "externalPath":Ljava/lang/String;
    const-class v7, Landroid/media/MediaScanner;

    monitor-enter v7

    .line 1544
    :try_start_0
    sget-object v6, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 1545
    :cond_3
    invoke-static {}, Landroid/media/MediaScannerInjector;->getNoMediaWhiteList()Ljava/util/HashSet;

    move-result-object v6

    sput-object v6, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    .line 1547
    :cond_4
    sget-object v6, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    invoke-virtual {v6, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_5

    monitor-exit v7

    .line 1548
    return v8

    .line 1552
    :cond_5
    :try_start_1
    sget-object v6, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_6

    monitor-exit v7

    .line 1553
    return v10

    .line 1554
    :cond_6
    :try_start_2
    sget-object v6, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 1557
    const/4 v3, 0x1

    .line 1558
    .local v3, "offset":I
    :goto_0
    if-ltz v3, :cond_9

    .line 1559
    const/16 v6, 0x2f

    invoke-virtual {p0, v6, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 1560
    .local v5, "slashIndex":I
    if-le v5, v3, :cond_7

    .line 1561
    add-int/lit8 v5, v5, 0x1

    .line 1562
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ".nomedia"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1565
    sget-object v6, Landroid/media/MediaScanner;->mWhiteList:Ljava/util/HashSet;

    add-int/lit8 v8, v5, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1572
    .end local v1    # "file":Ljava/io/File;
    :cond_7
    move v3, v5

    goto :goto_0

    .line 1568
    .restart local v1    # "file":Ljava/io/File;
    :cond_8
    sget-object v6, Landroid/media/MediaScanner;->mNoMediaPaths:Ljava/util/HashMap;

    const-string/jumbo v8, ""

    invoke-virtual {v6, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v7

    .line 1569
    return v10

    .line 1574
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "slashIndex":I
    :cond_9
    :try_start_3
    sget-object v6, Landroid/media/MediaScanner;->mMediaPaths:Ljava/util/HashMap;

    const-string/jumbo v8, ""

    invoke-virtual {v6, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v3    # "offset":I
    :cond_a
    monitor-exit v7

    .line 1578
    invoke-static {p0}, Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z

    move-result v6

    return v6

    .line 1542
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private static isSystemSoundWithMetadata(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1167
    const-string/jumbo v0, "/system/media/audio/alarms/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1168
    const-string/jumbo v0, "/system/media/audio/ringtones/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1167
    if-nez v0, :cond_0

    .line 1169
    const-string/jumbo v0, "/system/media/audio/notifications/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1167
    if-eqz v0, :cond_1

    .line 1170
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1172
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private matchEntries(JLjava/lang/String;)Z
    .locals 7
    .param p1, "rowId"    # J
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const v6, 0x7fffffff

    .line 1691
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1692
    .local v3, "len":I
    const/4 v0, 0x1

    .line 1693
    .local v0, "done":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 1694
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaScanner$PlaylistEntry;

    .line 1695
    .local v1, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-ne v5, v6, :cond_1

    .line 1693
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1698
    :cond_1
    const/4 v0, 0x0

    .line 1699
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1700
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 1701
    iput v6, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 1705
    :cond_2
    iget-object v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->path:Ljava/lang/String;

    invoke-direct {p0, p3, v5}, Landroid/media/MediaScanner;->matchPaths(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1706
    .local v4, "matchLength":I
    iget v5, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-le v4, v5, :cond_0

    .line 1707
    iput-wide p1, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    .line 1708
    iput v4, v1, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    goto :goto_1

    .line 1711
    .end local v1    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    .end local v4    # "matchLength":I
    :cond_3
    return v0
.end method

.method private matchPaths(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "path1"    # Ljava/lang/String;
    .param p2, "path2"    # Ljava/lang/String;

    .prologue
    .line 1664
    const/4 v10, 0x0

    .line 1665
    .local v10, "result":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 1666
    .local v8, "end1":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    .line 1668
    .local v9, "end2":I
    :goto_0
    if-lez v8, :cond_0

    if-lez v9, :cond_0

    .line 1669
    const/16 v0, 0x2f

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v11

    .line 1670
    .local v11, "slash1":I
    const/16 v0, 0x2f

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v12

    .line 1671
    .local v12, "slash2":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 1672
    .local v6, "backSlash1":I
    const/16 v0, 0x5c

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v7

    .line 1673
    .local v7, "backSlash2":I
    if-le v11, v6, :cond_1

    move v2, v11

    .line 1674
    .local v2, "start1":I
    :goto_1
    if-le v12, v7, :cond_2

    move v4, v12

    .line 1675
    .local v4, "start2":I
    :goto_2
    if-gez v2, :cond_3

    const/4 v2, 0x0

    .line 1676
    :goto_3
    if-gez v4, :cond_4

    const/4 v4, 0x0

    .line 1677
    :goto_4
    sub-int v5, v8, v2

    .line 1678
    .local v5, "length":I
    sub-int v0, v9, v4

    if-eq v0, v5, :cond_5

    .line 1686
    .end local v2    # "start1":I
    .end local v4    # "start2":I
    .end local v5    # "length":I
    .end local v6    # "backSlash1":I
    .end local v7    # "backSlash2":I
    .end local v11    # "slash1":I
    .end local v12    # "slash2":I
    :cond_0
    return v10

    .line 1673
    .restart local v6    # "backSlash1":I
    .restart local v7    # "backSlash2":I
    .restart local v11    # "slash1":I
    .restart local v12    # "slash2":I
    :cond_1
    move v2, v6

    .restart local v2    # "start1":I
    goto :goto_1

    .line 1674
    :cond_2
    move v4, v7

    .restart local v4    # "start2":I
    goto :goto_2

    .line 1675
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1676
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1679
    .restart local v5    # "length":I
    :cond_5
    const/4 v1, 0x1

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1680
    add-int/lit8 v10, v10, 0x1

    .line 1681
    add-int/lit8 v8, v2, -0x1

    .line 1682
    add-int/lit8 v9, v4, -0x1

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 2
    .param p1, "directories"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1385
    iget-boolean v0, p0, Landroid/media/MediaScanner;->mProcessPlaylists:Z

    if-eqz v0, :cond_0

    .line 1386
    invoke-direct {p0}, Landroid/media/MediaScanner;->processPlayLists()V

    .line 1389
    :cond_0
    iget v0, p0, Landroid/media/MediaScanner;->mOriginalCount:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1390
    invoke-direct {p0}, Landroid/media/MediaScanner;->pruneDeadThumbnailFiles()V

    .line 1393
    :cond_1
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1382
    return-void
.end method

.method private prescan(Ljava/lang/String;Z)V
    .locals 34
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "prescanFiles"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1190
    const/16 v17, 0x0

    .line 1191
    .local v17, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1192
    .local v7, "where":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1194
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1196
    if-eqz p1, :cond_5

    .line 1198
    const-string/jumbo v7, "_id>? AND _data=?"

    .line 1200
    .local v7, "where":Ljava/lang/String;
    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, ""

    const/4 v6, 0x0

    aput-object v4, v8, v6

    const/4 v4, 0x1

    aput-object p1, v8, v4

    .line 1206
    .local v8, "selectionArgs":[Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "ringtone"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z

    .line 1207
    const-string/jumbo v4, "notification_sound"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mDefaultNotificationSet:Z

    .line 1208
    const-string/jumbo v4, "alarm_alert"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/MediaScanner;->wasRingtoneAlreadySet(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/MediaScanner;->mDefaultAlarmSet:Z

    .line 1214
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v16

    .line 1215
    .local v16, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v4, "deletedata"

    const-string/jumbo v6, "false"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1216
    new-instance v18, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-direct {v0, v4, v6}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    .line 1220
    .local v18, "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    if-eqz p2, :cond_2

    .line 1225
    const-wide/high16 v24, -0x8000000000000000L

    .line 1226
    .local v24, "lastId":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    const-string/jumbo v6, "limit"

    const-string/jumbo v9, "1000"

    invoke-virtual {v4, v6, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1229
    .end local v17    # "c":Landroid/database/Cursor;
    .local v5, "limitUri":Landroid/net/Uri;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v8, v6

    .line 1230
    if-eqz v17, :cond_1

    .line 1231
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1232
    const/16 v17, 0x0

    .line 1234
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    sget-object v6, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 1235
    const-string/jumbo v9, "_id"

    const/4 v10, 0x0

    .line 1234
    invoke-virtual/range {v4 .. v10}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 1236
    .local v17, "c":Landroid/database/Cursor;
    if-nez v17, :cond_6

    .line 1284
    .end local v5    # "limitUri":Landroid/net/Uri;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v24    # "lastId":J
    :cond_2
    if-eqz v17, :cond_3

    .line 1285
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1287
    :cond_3
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1291
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1292
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v11, Landroid/media/MediaScanner;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v9 .. v15}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v17

    .line 1293
    .restart local v17    # "c":Landroid/database/Cursor;
    if-eqz v17, :cond_4

    .line 1294
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/MediaScanner;->mOriginalCount:I

    .line 1295
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1189
    :cond_4
    return-void

    .line 1202
    .end local v16    # "builder":Landroid/net/Uri$Builder;
    .end local v18    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .local v7, "where":Ljava/lang/String;
    .local v8, "selectionArgs":[Ljava/lang/String;
    .local v17, "c":Landroid/database/Cursor;
    :cond_5
    const-string/jumbo v7, "_id>?"

    .line 1203
    .local v7, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    .end local v8    # "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, ""

    const/4 v6, 0x0

    aput-object v4, v8, v6

    .local v8, "selectionArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 1240
    .restart local v5    # "limitUri":Landroid/net/Uri;
    .restart local v16    # "builder":Landroid/net/Uri$Builder;
    .local v17, "c":Landroid/database/Cursor;
    .restart local v18    # "deleter":Landroid/media/MediaScanner$MediaBulkDeleter;
    .restart local v24    # "lastId":J
    :cond_6
    :try_start_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v28

    .line 1242
    .local v28, "num":I
    if-eqz v28, :cond_2

    .line 1245
    :cond_7
    :goto_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1246
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 1247
    .local v32, "rowId":J
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1248
    .local v30, "path":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1249
    .local v22, "format":I
    const/4 v4, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1250
    .local v26, "lastModified":J
    move-wide/from16 v24, v32

    .line 1255
    if-eqz v30, :cond_7

    const-string/jumbo v4, "/"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_7

    .line 1256
    const/16 v20, 0x0

    .line 1258
    .local v20, "exists":Z
    :try_start_2
    sget v4, Landroid/system/OsConstants;->F_OK:I

    move-object/from16 v0, v30

    invoke-static {v0, v4}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v20

    .line 1261
    .end local v20    # "exists":Z
    :goto_2
    if-nez v20, :cond_7

    :try_start_3
    invoke-static/range {v22 .. v22}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1266
    invoke-static/range {v30 .. v30}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v23

    .line 1267
    .local v23, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v23, :cond_9

    const/16 v21, 0x0

    .line 1269
    .local v21, "fileType":I
    :goto_3
    invoke-static/range {v21 .. v21}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1270
    move-object/from16 v0, v18

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    .line 1271
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "/.nomedia"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1272
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1273
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v30

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v29

    .line 1274
    .local v29, "parent":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v6, "unhide"

    const/4 v9, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v6, v0, v9}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1283
    .end local v5    # "limitUri":Landroid/net/Uri;
    .end local v17    # "c":Landroid/database/Cursor;
    .end local v21    # "fileType":I
    .end local v22    # "format":I
    .end local v23    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v26    # "lastModified":J
    .end local v28    # "num":I
    .end local v29    # "parent":Ljava/lang/String;
    .end local v30    # "path":Ljava/lang/String;
    .end local v32    # "rowId":J
    :catchall_0
    move-exception v4

    .line 1284
    if-eqz v17, :cond_8

    .line 1285
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1287
    :cond_8
    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    .line 1283
    throw v4

    .line 1267
    .restart local v5    # "limitUri":Landroid/net/Uri;
    .restart local v17    # "c":Landroid/database/Cursor;
    .restart local v22    # "format":I
    .restart local v23    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v26    # "lastModified":J
    .restart local v28    # "num":I
    .restart local v30    # "path":Ljava/lang/String;
    .restart local v32    # "rowId":J
    :cond_9
    :try_start_4
    move-object/from16 v0, v23

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v21, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v21    # "fileType":I
    goto :goto_3

    .line 1259
    .end local v21    # "fileType":I
    .end local v23    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .restart local v20    # "exists":Z
    :catch_0
    move-exception v19

    .local v19, "e1":Landroid/system/ErrnoException;
    goto :goto_2
.end method

.method private processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    .locals 12
    .param p1, "fileList"    # Landroid/database/Cursor;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "playlistUri"    # Landroid/net/Uri;

    .prologue
    const/4 v9, 0x0

    .line 1739
    const/4 v8, -0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1740
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1741
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1742
    .local v6, "rowId":J
    const/4 v8, 0x1

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1743
    .local v0, "data":Ljava/lang/String;
    invoke-direct {p0, v6, v7, v0}, Landroid/media/MediaScanner;->matchEntries(JLjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1748
    .end local v0    # "data":Ljava/lang/String;
    .end local v6    # "rowId":J
    :cond_1
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1749
    .local v5, "len":I
    const/4 v4, 0x0

    .line 1750
    .local v4, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_3

    .line 1751
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$PlaylistEntry;

    .line 1752
    .local v2, "entry":Landroid/media/MediaScanner$PlaylistEntry;
    iget v8, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchlevel:I

    if-lez v8, :cond_2

    .line 1754
    :try_start_0
    invoke-virtual {p2}, Landroid/content/ContentValues;->clear()V

    .line 1755
    const-string/jumbo v8, "play_order"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1756
    const-string/jumbo v8, "audio_id"

    iget-wide v10, v2, Landroid/media/MediaScanner$PlaylistEntry;->bestmatchid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {p2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1757
    iget-object v8, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v8, p3, p2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    add-int/lit8 v4, v4, 0x1

    .line 1750
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1759
    :catch_0
    move-exception v1

    .line 1760
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "MediaScanner"

    const-string/jumbo v9, "RemoteException in MediaScanner.processCachedPlaylist()"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1761
    return-void

    .line 1765
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "entry":Landroid/media/MediaScanner$PlaylistEntry;
    :cond_3
    iget-object v8, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1738
    return-void
.end method

.method private native processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private native processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
.end method

.method private processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 1770
    const/4 v3, 0x0

    .line 1772
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1773
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1774
    new-instance v4, Ljava/io/BufferedReader;

    .line 1775
    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x2000

    .line 1774
    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1776
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v3    # "reader":Ljava/io/BufferedReader;
    move-result-object v2

    .line 1777
    .local v2, "line":Ljava/lang/String;
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1778
    :goto_0
    if-eqz v2, :cond_1

    .line 1780
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x23

    if-eq v5, v6, :cond_0

    .line 1781
    invoke-direct {p0, v2, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1786
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 1792
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v3, :cond_3

    .line 1793
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1769
    .end local v1    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 1794
    .restart local v1    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1795
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1788
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "f":Ljava/io/File;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 1789
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1792
    if-eqz v3, :cond_3

    .line 1793
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1794
    :catch_2
    move-exception v0

    .line 1795
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1790
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1792
    :goto_3
    if-eqz v3, :cond_4

    .line 1793
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1790
    :cond_4
    :goto_4
    throw v5

    .line 1794
    :catch_3
    move-exception v0

    .line 1795
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processM3uPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1790
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1788
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    .locals 18
    .param p1, "entry"    # Landroid/media/MediaScanner$FileEntry;
    .param p2, "fileList"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1898
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    .line 1899
    .local v3, "path":Ljava/lang/String;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1900
    .local v6, "values":Landroid/content/ContentValues;
    const/16 v2, 0x2f

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 1901
    .local v10, "lastSlash":I
    if-gez v10, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "bad path "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1903
    :cond_0
    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    .line 1906
    .local v14, "rowId":J
    const-string/jumbo v2, "name"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1907
    .local v12, "name":Ljava/lang/String;
    if-nez v12, :cond_1

    .line 1908
    const-string/jumbo v2, "title"

    invoke-virtual {v6, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1909
    if-nez v12, :cond_1

    .line 1911
    const/16 v2, 0x2e

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    .line 1912
    .local v9, "lastDot":I
    if-gez v9, :cond_3

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1917
    .end local v9    # "lastDot":I
    :cond_1
    :goto_0
    const-string/jumbo v2, "name"

    invoke-virtual {v6, v2, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    const-string/jumbo v2, "date_modified"

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1920
    const-wide/16 v16, 0x0

    cmp-long v2, v14, v16

    if-nez v2, :cond_4

    .line 1921
    const-string/jumbo v2, "_data"

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 1923
    .local v13, "uri":Landroid/net/Uri;
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 1924
    const-string/jumbo v2, "members"

    invoke-static {v13, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1934
    .local v5, "membersUri":Landroid/net/Uri;
    :goto_1
    add-int/lit8 v2, v10, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1935
    .local v4, "playListDirectory":Ljava/lang/String;
    invoke-static {v3}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v11

    .line 1936
    .local v11, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v11, :cond_5

    const/4 v8, 0x0

    .line 1938
    .local v8, "fileType":I
    :goto_2
    const/16 v2, 0x29

    if-ne v8, v2, :cond_6

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    .line 1939
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner;->processM3uPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    .line 1897
    :cond_2
    :goto_3
    return-void

    .line 1913
    .end local v4    # "playListDirectory":Ljava/lang/String;
    .end local v5    # "membersUri":Landroid/net/Uri;
    .end local v8    # "fileType":I
    .end local v11    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    .end local v13    # "uri":Landroid/net/Uri;
    .restart local v9    # "lastDot":I
    :cond_3
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v3, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 1926
    .end local v9    # "lastDot":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mPlaylistsUri:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 1927
    .restart local v13    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v13, v6, v7, v0}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1930
    const-string/jumbo v2, "members"

    invoke-static {v13, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1931
    .restart local v5    # "membersUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v7, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v5, v7, v0}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 1936
    .restart local v4    # "playListDirectory":Ljava/lang/String;
    .restart local v11    # "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    :cond_5
    iget v8, v11, Landroid/media/MediaFile$MediaFileType;->fileType:I

    goto :goto_2

    .line 1940
    .restart local v8    # "fileType":I
    :cond_6
    const/16 v2, 0x2a

    if-ne v8, v2, :cond_7

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    .line 1941
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner;->processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3

    .line 1942
    :cond_7
    const/16 v2, 0x2b

    if-ne v8, v2, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v7, p2

    .line 1943
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner;->processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V

    goto :goto_3
.end method

.method private processPlayLists()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1948
    iget-object v0, p0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1949
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/MediaScanner$FileEntry;>;"
    const/4 v9, 0x0

    .line 1953
    .local v9, "fileList":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 1954
    const-string/jumbo v3, "media_type=2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1953
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 1955
    .local v9, "fileList":Landroid/database/Cursor;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1956
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/MediaScanner$FileEntry;

    .line 1958
    .local v8, "entry":Landroid/media/MediaScanner$FileEntry;
    iget-boolean v0, v8, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-eqz v0, :cond_0

    .line 1959
    invoke-direct {p0, v8, v9}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1962
    .end local v8    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v9    # "fileList":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 1964
    .local v7, "e1":Landroid/os/RemoteException;
    if-eqz v9, :cond_1

    .line 1965
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1947
    .end local v7    # "e1":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return-void

    .line 1964
    .restart local v9    # "fileList":Landroid/database/Cursor;
    :cond_2
    if-eqz v9, :cond_1

    .line 1965
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1963
    .end local v9    # "fileList":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 1964
    if-eqz v9, :cond_3

    .line 1965
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1963
    :cond_3
    throw v0
.end method

.method private processPlsPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 1802
    const/4 v4, 0x0

    .line 1804
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1805
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1806
    new-instance v5, Ljava/io/BufferedReader;

    .line 1807
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    .line 1806
    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1808
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v4    # "reader":Ljava/io/BufferedReader;
    move-result-object v3

    .line 1809
    .local v3, "line":Ljava/lang/String;
    iget-object v6, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 1810
    :goto_0
    if-eqz v3, :cond_1

    .line 1812
    const-string/jumbo v6, "File"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1813
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1814
    .local v1, "equals":I
    if-lez v1, :cond_0

    .line 1815
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Landroid/media/MediaScanner;->cachePlaylistEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    .end local v1    # "equals":I
    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1821
    :cond_1
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, v5

    .line 1827
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v4, :cond_3

    .line 1828
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1801
    .end local v2    # "f":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 1829
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1830
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1823
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 1824
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1827
    if-eqz v4, :cond_3

    .line 1828
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1829
    :catch_2
    move-exception v0

    .line 1830
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1825
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1827
    :goto_3
    if-eqz v4, :cond_4

    .line 1828
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1825
    :cond_4
    :goto_4
    throw v6

    .line 1829
    :catch_3
    move-exception v0

    .line 1830
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "MediaScanner"

    const-string/jumbo v8, "IOException in MediaScanner.processPlsPlayList()"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1825
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1823
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private processWplPlayList(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playListDirectory"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "values"    # Landroid/content/ContentValues;
    .param p5, "fileList"    # Landroid/database/Cursor;

    .prologue
    .line 1871
    const/4 v3, 0x0

    .line 1873
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1874
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1875
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1877
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaScanner;->mPlaylistEntries:Ljava/util/ArrayList;

    .end local v3    # "fis":Ljava/io/FileInputStream;
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1878
    const-string/jumbo v5, "UTF-8"

    invoke-static {v5}, Landroid/util/Xml;->findEncodingByName(Ljava/lang/String;)Landroid/util/Xml$Encoding;

    move-result-object v5

    .line 1879
    new-instance v6, Landroid/media/MediaScanner$WplHandler;

    invoke-direct {v6, p0, p2, p3, p5}, Landroid/media/MediaScanner$WplHandler;-><init>(Landroid/media/MediaScanner;Ljava/lang/String;Landroid/net/Uri;Landroid/database/Cursor;)V

    invoke-virtual {v6}, Landroid/media/MediaScanner$WplHandler;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v6

    .line 1878
    invoke-static {v4, v5, v6}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 1881
    invoke-direct {p0, p5, p4, p3}, Landroid/media/MediaScanner;->processCachedPlaylist(Landroid/database/Cursor;Landroid/content/ContentValues;Landroid/net/Uri;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .line 1889
    .end local v4    # "fis":Ljava/io/FileInputStream;
    :cond_0
    if-eqz v3, :cond_1

    .line 1890
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1870
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 1891
    .restart local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1892
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1885
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "f":Ljava/io/File;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 1886
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1889
    if-eqz v3, :cond_1

    .line 1890
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 1891
    :catch_2
    move-exception v0

    .line 1892
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1883
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 1884
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v1, "e":Lorg/xml/sax/SAXException;
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1889
    if-eqz v3, :cond_1

    .line 1890
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 1891
    :catch_4
    move-exception v0

    .line 1892
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "MediaScanner"

    const-string/jumbo v6, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1887
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catchall_0
    move-exception v5

    .line 1889
    :goto_3
    if-eqz v3, :cond_2

    .line 1890
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1887
    :cond_2
    :goto_4
    throw v5

    .line 1891
    :catch_5
    move-exception v0

    .line 1892
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "MediaScanner"

    const-string/jumbo v7, "IOException in MediaScanner.processWplPlayList()"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1887
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "f":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1883
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Lorg/xml/sax/SAXException;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1885
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private pruneDeadThumbnailFiles()V
    .locals 18

    .prologue
    .line 1300
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1301
    .local v12, "existingFiles":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v9, "/sdcard/DCIM/.thumbnails"

    .line 1302
    .local v9, "directory":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v15

    .line 1303
    .local v15, "files":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1304
    .local v8, "c":Landroid/database/Cursor;
    if-nez v15, :cond_0

    .line 1305
    const/4 v1, 0x0

    new-array v15, v1, [Ljava/lang/String;

    .line 1307
    :cond_0
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    array-length v1, v15

    move/from16 v0, v17

    if-ge v0, v1, :cond_1

    .line 1308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v15, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1309
    .local v16, "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1307
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1313
    .end local v16    # "fullPathString":Ljava/lang/String;
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    .line 1314
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mThumbsUri:Landroid/net/Uri;

    .line 1315
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "_data"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 1316
    const/4 v4, 0x0

    .line 1317
    const/4 v5, 0x0

    .line 1318
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1313
    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1319
    .local v8, "c":Landroid/database/Cursor;
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1322
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1323
    .restart local v16    # "fullPathString":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1324
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1327
    .end local v16    # "fullPathString":Ljava/lang/String;
    :cond_3
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "fileToDelete$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    .local v13, "fileToDelete":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1332
    :catch_0
    move-exception v11

    .local v11, "ex":Ljava/lang/SecurityException;
    goto :goto_1

    .line 1336
    .end local v11    # "ex":Ljava/lang/SecurityException;
    .end local v13    # "fileToDelete":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string/jumbo v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/pruneDeadThumbnailFiles... "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1340
    if-eqz v8, :cond_5

    .line 1341
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1299
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v14    # "fileToDelete$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    return-void

    .line 1337
    :catch_1
    move-exception v10

    .line 1340
    .local v10, "e":Landroid/os/RemoteException;
    if-eqz v8, :cond_5

    .line 1341
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1339
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1340
    if-eqz v8, :cond_6

    .line 1341
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1339
    :cond_6
    throw v1
.end method

.method private releaseResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1398
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    if-eqz v0, :cond_0

    .line 1399
    iget-object v0, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->close()V

    .line 1400
    iput-object v1, p0, Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;

    .line 1396
    :cond_0
    return-void
.end method

.method private setDefaultRingtoneFileNames()V
    .locals 1

    .prologue
    .line 457
    const-string/jumbo v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;

    .line 459
    const-string/jumbo v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;

    .line 461
    const-string/jumbo v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;

    .line 456
    return-void
.end method

.method private native setLocale(Ljava/lang/String;)V
.end method

.method private settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "base"    # Ljava/lang/String;

    .prologue
    .line 1176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private wasRingtoneAlreadySet(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1180
    iget-object v4, p0, Landroid/media/MediaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1181
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, p1}, Landroid/media/MediaScanner;->settingSetIndicatorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1183
    .local v2, "indicatorName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 1184
    :catch_0
    move-exception v1

    .line 1185
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    return v3
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 1982
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 1983
    iget-object v0, p0, Landroid/media/MediaScanner;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 1985
    invoke-direct {p0}, Landroid/media/MediaScanner;->native_finalize()V

    .line 1981
    :cond_0
    return-void
.end method

.method public native extractAlbumArt(Ljava/io/FileDescriptor;)[B
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1992
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 1993
    invoke-virtual {p0}, Landroid/media/MediaScanner;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1995
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1990
    return-void

    .line 1994
    :catchall_0
    move-exception v0

    .line 1995
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1994
    throw v0
.end method

.method makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;
    .locals 15
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1641
    const/4 v13, 0x0

    .line 1643
    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "_data=?"

    .line 1644
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 1645
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v1, p0, Landroid/media/MediaScanner;->mFilesUriNoNotify:Landroid/net/Uri;

    sget-object v2, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    .line 1646
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1645
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v13

    .line 1647
    .local v13, "c":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1648
    const/4 v0, 0x0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1649
    .local v7, "rowId":J
    const/4 v0, 0x2

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1650
    .local v12, "format":I
    const/4 v0, 0x3

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1651
    .local v10, "lastModified":J
    new-instance v6, Landroid/media/MediaScanner$FileEntry;

    move-object/from16 v9, p1

    invoke-direct/range {v6 .. v12}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    if-eqz v13, :cond_0

    .line 1656
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1651
    :cond_0
    return-object v6

    .line 1655
    .end local v7    # "rowId":J
    .end local v10    # "lastModified":J
    .end local v12    # "format":I
    :cond_1
    if-eqz v13, :cond_2

    .line 1656
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1659
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 1653
    :catch_0
    move-exception v14

    .line 1655
    .local v14, "e":Landroid/os/RemoteException;
    if-eqz v13, :cond_2

    .line 1656
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1654
    .end local v14    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    .line 1655
    if-eqz v13, :cond_3

    .line 1656
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1654
    :cond_3
    throw v0
.end method

.method public scanDirectories([Ljava/lang/String;)V
    .locals 17
    .param p1, "directories"    # [Ljava/lang/String;

    .prologue
    .line 1406
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1407
    .local v12, "start":J
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1412
    .local v8, "prescan":J
    new-instance v14, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/16 v16, 0x1f4

    invoke-direct/range {v14 .. v16}, Landroid/media/MediaInserter;-><init>(Landroid/content/ContentProviderClient;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1415
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v5, v14, :cond_0

    .line 1416
    aget-object v14, p1, v5

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Landroid/media/MediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 1415
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1421
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v14}, Landroid/media/MediaInserter;->flushAll()V

    .line 1422
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    .line 1425
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1426
    .local v10, "scan":J
    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner;->postscan([Ljava/lang/String;)V

    .line 1427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    .line 1444
    .local v6, "end":J
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1404
    .end local v5    # "i":I
    .end local v6    # "end":J
    .end local v8    # "prescan":J
    .end local v10    # "scan":J
    .end local v12    # "start":J
    :goto_1
    return-void

    .line 1441
    :catch_0
    move-exception v3

    .line 1442
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "RemoteException in MediaScanner.scan()"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1444
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1438
    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1440
    .local v4, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1444
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1435
    .end local v4    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v2

    .line 1437
    .local v2, "e":Landroid/database/SQLException;
    :try_start_3
    const-string/jumbo v14, "MediaScanner"

    const-string/jumbo v15, "SQLException in MediaScanner.scan()"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1444
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto :goto_1

    .line 1443
    .end local v2    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v14

    .line 1444
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1443
    throw v14
.end method

.method public scanMtpFile(Ljava/lang/String;II)V
    .locals 21
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "objectHandle"    # I
    .param p3, "format"    # I

    .prologue
    .line 1582
    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v18

    .line 1583
    .local v18, "mediaFileType":Landroid/media/MediaFile$MediaFileType;
    if-nez v18, :cond_3

    const/16 v17, 0x0

    .line 1584
    .local v17, "fileType":I
    :goto_0
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1585
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v6, v2, v4

    .line 1587
    .local v6, "lastModifiedSeconds":J
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1605
    :cond_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1606
    const/16 v16, 0x0

    .line 1608
    .local v16, "fileList":Landroid/database/Cursor;
    :try_start_0
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1610
    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1612
    invoke-virtual/range {p0 .. p1}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v14

    .line 1613
    .local v14, "entry":Landroid/media/MediaScanner$FileEntry;
    if-eqz v14, :cond_1

    .line 1614
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    .line 1615
    sget-object v4, Landroid/media/MediaScanner;->FILES_PRESCAN_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1614
    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .end local v6    # "lastModifiedSeconds":J
    move-result-object v16

    .line 1616
    .local v16, "fileList":Landroid/database/Cursor;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Landroid/media/MediaScanner;->processPlayList(Landroid/media/MediaScanner$FileEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    .end local v14    # "entry":Landroid/media/MediaScanner$FileEntry;
    .end local v16    # "fileList":Landroid/database/Cursor;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1630
    if-eqz v16, :cond_2

    .line 1631
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1633
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1581
    :goto_2
    return-void

    .line 1583
    .end local v15    # "file":Ljava/io/File;
    .end local v17    # "fileType":I
    :cond_3
    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/MediaFile$MediaFileType;->fileType:I

    move/from16 v17, v0

    .restart local v17    # "fileType":I
    goto :goto_0

    .line 1588
    .restart local v6    # "lastModifiedSeconds":J
    .restart local v15    # "file":Ljava/io/File;
    :cond_4
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1589
    invoke-static/range {v17 .. v17}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1592
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 1593
    .local v19, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "_size"

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1594
    const-string/jumbo v2, "date_modified"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1596
    const/4 v2, 0x1

    :try_start_1
    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v20, v3

    .line 1597
    .local v20, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1598
    const-string/jumbo v4, "_id=?"

    .line 1597
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1602
    .end local v20    # "whereArgs":[Ljava/lang/String;
    :goto_3
    return-void

    .line 1599
    :catch_0
    move-exception v13

    .line 1600
    .local v13, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MediaScanner"

    const-string/jumbo v3, "RemoteException in scanMtpFile"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1620
    .end local v13    # "e":Landroid/os/RemoteException;
    .end local v19    # "values":Landroid/content/ContentValues;
    .local v16, "fileList":Landroid/database/Cursor;
    :cond_5
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1623
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 1624
    const/16 v2, 0x3001

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    const/4 v10, 0x1

    :goto_4
    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v12

    const/4 v11, 0x1

    move-object/from16 v4, p1

    .line 1623
    invoke-virtual/range {v3 .. v12}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1626
    .end local v6    # "lastModifiedSeconds":J
    .end local v16    # "fileList":Landroid/database/Cursor;
    :catch_1
    move-exception v13

    .line 1627
    .restart local v13    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v2, "MediaScanner"

    const-string/jumbo v3, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1629
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1630
    if-eqz v16, :cond_6

    .line 1631
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1633
    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    goto/16 :goto_2

    .line 1624
    .end local v13    # "e":Landroid/os/RemoteException;
    .restart local v6    # "lastModifiedSeconds":J
    .restart local v16    # "fileList":Landroid/database/Cursor;
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .line 1628
    .end local v6    # "lastModifiedSeconds":J
    .end local v16    # "fileList":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    .line 1629
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/media/MediaScanner;->mMtpObjectHandle:I

    .line 1630
    if-eqz v16, :cond_8

    .line 1631
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1633
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1628
    throw v2
.end method

.method public scanSingleFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 1451
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, v1}, Landroid/media/MediaScanner;->prescan(Ljava/lang/String;Z)V

    .line 1453
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1454
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1468
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1455
    return-object v12

    .line 1459
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v4, v2, v6

    .line 1462
    .local v4, "lastModifiedSeconds":J
    iget-object v1, p0, Landroid/media/MediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 1463
    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v10

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, p1

    move-object v3, p2

    .line 1462
    invoke-virtual/range {v1 .. v10}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 1468
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1462
    return-object v1

    .line 1464
    .end local v4    # "lastModifiedSeconds":J
    .end local v11    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1465
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "MediaScanner"

    const-string/jumbo v2, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1468
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1466
    return-object v12

    .line 1467
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1468
    invoke-direct {p0}, Landroid/media/MediaScanner;->releaseResources()V

    .line 1467
    throw v1
.end method
