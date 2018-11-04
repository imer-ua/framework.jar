.class public Lmiui/maml/elements/MusicControlScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicControlScreenElement$1;,
        Lmiui/maml/elements/MusicControlScreenElement$2;,
        Lmiui/maml/elements/MusicControlScreenElement$3;,
        Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
    }
.end annotation


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field private static final MIUI_PLAYER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.player"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private mAlbumInfo:Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

.field private mAlbumVar:Lmiui/maml/data/IndexedVariable;

.field private mArtistVar:Lmiui/maml/data/IndexedVariable;

.field private mArtworkVar:Lmiui/maml/data/IndexedVariable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShow:Z

.field private mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

.field private mDisableNext:Z

.field private mDisableNextVar:Lmiui/maml/data/IndexedVariable;

.field private mDisablePlay:Z

.field private mDisablePlayVar:Lmiui/maml/data/IndexedVariable;

.field private mDisablePrev:Z

.field private mDisablePrevVar:Lmiui/maml/data/IndexedVariable;

.field private mDurationVar:Lmiui/maml/data/IndexedVariable;

.field private mEnableLyric:Z

.field private mEnableProgress:Z

.field private mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

.field private mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

.field private mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricLastVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricNextVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mMiuiMusicContext:Landroid/content/Context;

.field private mMusicController:Lmiui/maml/elements/MusicController;

.field private mMusicStateVar:Lmiui/maml/data/IndexedVariable;

.field private mMusicUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mNeedUpdateLyric:Z

.field private mNeedUpdateProgress:Z

.field private mNeedUpdateUserRating:Z

.field private mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

.field private mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

.field private mPlaying:Z

.field private mPositionVar:Lmiui/maml/data/IndexedVariable;

.field private mSender:Ljava/lang/String;

.field private mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Lmiui/maml/elements/TextScreenElement;

.field private mTitleVar:Lmiui/maml/data/IndexedVariable;

.field private mUpdateProgressInterval:I

.field private mUpdateProgressRunnable:Ljava/lang/Runnable;

.field private mUserRatingStyle:I

.field private mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

.field private mUserRatingValue:F

.field private mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get10(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/RemoteController$MetadataEditor;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    return-object v0
.end method

.method static synthetic -get11(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicController;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    return-object v0
.end method

.method static synthetic -get12(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    return v0
.end method

.method static synthetic -get13(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get14(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get15(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    return v0
.end method

.method static synthetic -get16(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get17(Lmiui/maml/elements/MusicControlScreenElement;)I
    .locals 1

    iget v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    return v0
.end method

.method static synthetic -get2(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    return v0
.end method

.method static synthetic -get3(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get4(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    return v0
.end method

.method static synthetic -get5(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get6(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    return v0
.end method

.method static synthetic -get7(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get8(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic -get9(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    return p1
.end method

.method static synthetic -set1(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    return p1
.end method

.method static synthetic -set2(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    return p1
.end method

.method static synthetic -set3(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    return-object p1
.end method

.method static synthetic -set4(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/RemoteController$MetadataEditor;)Landroid/media/RemoteController$MetadataEditor;
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    return-object p1
.end method

.method static synthetic -wrap0(Lmiui/maml/elements/MusicControlScreenElement;J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;->delayToSetDefaultArtwork(J)V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/maml/elements/MusicControlScreenElement;Z)V
    .locals 0
    .param p1, "playing"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetAll()V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap6(Lmiui/maml/elements/MusicControlScreenElement;J)V
    .locals 1
    .param p1, "position"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    return-void
.end method

.method static synthetic -wrap7(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 0
    .param p1, "lyric"    # Lmiui/maml/elements/MusicLyricParser$Lyric;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    return-void
.end method

.method static synthetic -wrap8(Lmiui/maml/elements/MusicControlScreenElement;JJ)V
    .locals 1
    .param p1, "duration"    # J
    .param p3, "position"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/maml/elements/MusicControlScreenElement;->updateProgress(JJ)V

    return-void
.end method

.method static synthetic -wrap9(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V
    .locals 0
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 9
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 153
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 263
    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    invoke-direct {v4, v7}, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>(Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    .line 265
    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$1;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$1;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 495
    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$2;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$2;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    .line 665
    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$3;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$3;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    .line 155
    const-string/jumbo v4, "music_prev"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    .line 156
    const-string/jumbo v4, "music_next"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    .line 157
    const-string/jumbo v4, "music_play"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    .line 158
    const-string/jumbo v4, "music_pause"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    .line 159
    const-string/jumbo v4, "music_display"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/TextScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    .line 160
    const-string/jumbo v4, "music_album_cover"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ImageScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    .line 161
    invoke-direct {p0, p0}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    .line 163
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 164
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 165
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 166
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    .line 167
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v4, v6}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 170
    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v4, :cond_2

    .line 171
    const-string/jumbo v4, "defAlbumCover"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "strDefAlbumCoverBmp":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 173
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v4, v2}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    .line 175
    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 176
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getResourceDensity()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 179
    .end local v2    # "strDefAlbumCoverBmp":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "autoShow"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    .line 180
    const-string/jumbo v4, "enableLyric"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    .line 181
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_8

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    .line 182
    const-string/jumbo v4, "updateProgressInterval"

    const/16 v7, 0x3e8

    invoke-virtual {p0, p1, v4, v7}, Lmiui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    .line 184
    iget-boolean v4, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v4, :cond_5

    .line 185
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    .line 186
    .local v3, "variables":Lmiui/maml/data/Variables;
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".music_state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/data/IndexedVariable;

    .line 187
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".title"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/data/IndexedVariable;

    .line 188
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/data/IndexedVariable;

    .line 189
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".album"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lmiui/maml/data/IndexedVariable;

    .line 190
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_3

    .line 191
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_current"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

    .line 192
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_before"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

    .line 193
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_after"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

    .line 195
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_last"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/data/IndexedVariable;

    .line 196
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_prev"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

    .line 197
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_next"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/data/IndexedVariable;

    .line 198
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".lyric_current_line_progress"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

    .line 201
    :cond_3
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    if-eqz v4, :cond_4

    .line 202
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".music_duration"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    .line 203
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".music_position"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    .line 205
    :cond_4
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".user_rating_style"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

    .line 206
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".user_rating_value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;

    .line 207
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".disable_play"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lmiui/maml/data/IndexedVariable;

    .line 208
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".disable_prev"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lmiui/maml/data/IndexedVariable;

    .line 209
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".disable_next"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lmiui/maml/data/IndexedVariable;

    .line 210
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ".artwork"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    .line 211
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ".package"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    .line 212
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ".class"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    .line 214
    .end local v3    # "variables":Lmiui/maml/data/Variables;
    :cond_5
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    :goto_1
    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    .line 215
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    if-eqz v4, :cond_6

    iget-boolean v6, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    :cond_6
    iput-boolean v6, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    .line 216
    iget-boolean v4, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    .line 219
    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.miui.player"

    .line 220
    const/4 v6, 0x2

    .line 219
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_2
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    .line 227
    new-instance v4, Lmiui/maml/elements/MusicController;

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lmiui/maml/elements/MusicController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    .line 228
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicController;->enableNotificationService()V

    .line 231
    iget-object v4, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getRootTag()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "rootTag":Ljava/lang/String;
    const-string/jumbo v4, "maml"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 233
    const-string/jumbo v4, "gadget"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 234
    const-string/jumbo v4, "home_widget"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    .line 152
    :cond_7
    :goto_3
    return-void

    .line 181
    .end local v1    # "rootTag":Ljava/lang/String;
    :cond_8
    const-string/jumbo v4, "enableProgress"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_0

    :cond_9
    move v4, v6

    .line 214
    goto :goto_1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "MusicControlScreenElement"

    const-string/jumbo v5, "fail to get MiuiMusic preference"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 235
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "rootTag":Ljava/lang/String;
    :cond_a
    const-string/jumbo v4, "statusbar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 236
    const-string/jumbo v4, "notification_bar"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    goto :goto_3

    .line 237
    :cond_b
    const-string/jumbo v4, "lockscreen"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 238
    const-string/jumbo v4, "lockscreen"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    goto :goto_3
.end method

.method private cancelSetDefaultArtwork()V
    .locals 2

    .prologue
    .line 509
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method private delayToSetDefaultArtwork(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 503
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 504
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 505
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    return-void
.end method

.method private findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    .locals 5
    .param p1, "g"    # Lmiui/maml/elements/ElementGroup;

    .prologue
    const/4 v4, 0x0

    .line 413
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "se$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    .line 414
    .local v1, "se":Lmiui/maml/elements/ScreenElement;
    instance-of v3, v1, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v3, :cond_1

    .line 415
    nop

    nop

    .end local v1    # "se":Lmiui/maml/elements/ScreenElement;
    return-object v1

    .line 416
    .restart local v1    # "se":Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v3, v1, Lmiui/maml/elements/ElementGroup;

    if-eqz v3, :cond_0

    .line 417
    nop

    nop

    .end local v1    # "se":Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v0

    .line 418
    .local v0, "ret":Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    if-eqz v0, :cond_0

    .line 419
    return-object v0

    .line 422
    .end local v0    # "ret":Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    :cond_2
    return-object v4
.end method

.method private onMusicStateChange(Z)V
    .locals 8
    .param p1, "playing"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 433
    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    .line 434
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_0

    .line 435
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz p1, :cond_7

    move v1, v2

    :goto_0
    int-to-double v6, v1

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 438
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v1, :cond_1

    .line 439
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 441
    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v1, :cond_3

    .line 442
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 445
    :cond_3
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-eqz v1, :cond_4

    .line 450
    const/16 v0, 0x64

    .line 451
    .local v0, "delay":I
    if-eqz p1, :cond_8

    const/16 v1, 0x64

    :goto_1
    int-to-long v4, v1

    invoke-direct {p0, p1, v4, v5}, Lmiui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    .line 454
    .end local v0    # "delay":I
    :cond_4
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v1, :cond_5

    .line 455
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    .line 458
    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    if-eqz v1, :cond_6

    const/16 v3, 0x1e

    :cond_6
    int-to-float v1, v3

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 459
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    .line 460
    const-string/jumbo v1, "MusicControlScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "music state change: playing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    :cond_7
    move v1, v3

    .line 435
    goto :goto_0

    .restart local v0    # "delay":I
    :cond_8
    move v1, v3

    .line 451
    goto :goto_1
.end method

.method private resetAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 645
    invoke-direct {p0, v0, v0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetProgress()V

    .line 647
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 648
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 649
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 650
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetPackageName()V

    .line 651
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetMusicState()V

    .line 644
    return-void
.end method

.method private resetLyric()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 625
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 627
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 628
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 629
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 630
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 631
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 624
    :cond_0
    return-void
.end method

.method private resetMusicState()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 654
    return-void
.end method

.method private resetPackageName()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 659
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 661
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 658
    :cond_1
    return-void
.end method

.method private resetProgress()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 615
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 617
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 619
    :cond_0
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 614
    :cond_1
    return-void
.end method

.method private resetUserRating()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 636
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    if-eqz v0, :cond_0

    .line 637
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 638
    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 639
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 640
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 635
    :cond_0
    return-void
.end method

.method private sendMediaKeyEvent(ILjava/lang/String;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 784
    const/4 v0, 0x0

    .line 785
    .local v0, "code":I
    const-string/jumbo v2, "music_prev"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 786
    const/16 v0, 0x58

    .line 793
    :cond_0
    :goto_0
    const/16 v2, 0x58

    if-ne v0, v2, :cond_4

    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    if-eqz v2, :cond_4

    .line 794
    return v4

    .line 787
    :cond_1
    const-string/jumbo v2, "music_next"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 788
    const/16 v0, 0x57

    goto :goto_0

    .line 789
    :cond_2
    const-string/jumbo v2, "music_play"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "music_pause"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 790
    :cond_3
    const/16 v0, 0x55

    goto :goto_0

    .line 796
    :cond_4
    const/16 v2, 0x57

    if-ne v0, v2, :cond_5

    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    if-eqz v2, :cond_5

    .line 797
    return v4

    .line 799
    :cond_5
    const/16 v2, 0x55

    if-ne v0, v2, :cond_6

    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    if-eqz v2, :cond_6

    .line 800
    return v4

    .line 802
    :cond_6
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v2, p1, v0}, Lmiui/maml/elements/MusicController;->sendMediaKeyEvent(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 803
    return v5

    .line 806
    :cond_7
    const-string/jumbo v2, "MusicControlScreenElement"

    const-string/jumbo v3, "fail to dispatch by remote controller, send to MiuiMusic."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    if-nez p1, :cond_8

    .line 809
    return v5

    .line 812
    :cond_8
    const/4 v1, 0x0

    .line 813
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "music_play"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "music_pause"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 814
    :cond_9
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.miui.player.musicservicecommand.togglepause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 820
    :cond_a
    :goto_1
    if-eqz v1, :cond_d

    .line 821
    const-string/jumbo v2, "com.miui.player"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string/jumbo v2, "intent_sender"

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 824
    return v5

    .line 815
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_b
    const-string/jumbo v2, "music_prev"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 816
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.miui.player.musicservicecommand.previous"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    goto :goto_1

    .line 817
    .local v1, "intent":Landroid/content/Intent;
    :cond_c
    const-string/jumbo v2, "music_next"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 818
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.miui.player.musicservicecommand.next"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    goto :goto_1

    .line 826
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_d
    return v4
.end method

.method private setupButton(Lmiui/maml/elements/ButtonScreenElement;)V
    .locals 0
    .param p1, "button"    # Lmiui/maml/elements/ButtonScreenElement;

    .prologue
    .line 426
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    .line 428
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    .line 425
    :cond_0
    return-void
.end method

.method private startProgressUpdate(ZJ)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 464
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 465
    if-eqz p1, :cond_0

    .line 466
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 467
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-boolean v1, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 477
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, p2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 478
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, p3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 481
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    if-eqz v1, :cond_1

    .line 482
    const-string/jumbo v0, ""

    .line 483
    .local v0, "trackInfo":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 484
    move-object v0, p2

    .line 490
    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .line 492
    .end local v0    # "trackInfo":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    .line 474
    return-void

    .line 485
    .restart local v0    # "trackInfo":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 486
    move-object v0, p1

    goto :goto_0

    .line 488
    :cond_3
    const-string/jumbo v1, "%s   %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateArtwork(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    .line 513
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    .line 514
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 517
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 520
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    .line 512
    return-void
.end method

.method private updateLyric(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 3
    .param p1, "lyric"    # Lmiui/maml/elements/MusicLyricParser$Lyric;

    .prologue
    .line 524
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-nez v2, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    if-nez p1, :cond_1

    .line 528
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    .line 529
    return-void

    .line 532
    :cond_1
    invoke-virtual {p1}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getTimeArr()[I

    move-result-object v1

    .line 533
    .local v1, "timeArr":[I
    invoke-virtual {p1}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getStringArr()Ljava/util/ArrayList;

    move-result-object v0

    .line 534
    .local v0, "lyricArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    if-eqz v2, :cond_2

    .line 535
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v2, v1, v0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->set([ILjava/util/ArrayList;)V

    .line 523
    :cond_2
    return-void
.end method

.method private updateLyricVar(J)V
    .locals 9
    .param p1, "position"    # J

    .prologue
    .line 599
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getLyricShot(J)Lmiui/maml/elements/MusicLyricParser$LyricShot;

    move-result-object v5

    iget-wide v6, v5, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .line 600
    .local v6, "percent":D
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 601
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getLine(J)Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, "current":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 603
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getBeforeLines(J)Ljava/lang/String;

    move-result-object v1

    .line 604
    .local v1, "before":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 605
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getAfterLines(J)Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "after":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v0}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 607
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getLastLine(J)Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, "last":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 609
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 610
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getNextLine(J)Ljava/lang/String;

    move-result-object v4

    .line 611
    .local v4, "next":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 598
    return-void
.end method

.method private updateProgress(JJ)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "position"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 540
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-nez v0, :cond_0

    .line 541
    return-void

    .line 543
    :cond_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    cmp-long v0, p3, v4

    if-gez v0, :cond_2

    .line 544
    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetProgress()V

    .line 545
    return-void

    .line 548
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    long-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 549
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    long-to-double v2, p3

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 551
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_3

    .line 552
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    if-eqz v0, :cond_4

    .line 553
    invoke-direct {p0, p3, p4}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    .line 558
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    .line 560
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    invoke-direct {p0, v0, v4, v5}, Lmiui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    .line 539
    return-void

    .line 555
    :cond_4
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    goto :goto_0
.end method

.method private updateUserRating(Landroid/media/Rating;)V
    .locals 4
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 564
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    if-nez v2, :cond_0

    .line 565
    return-void

    .line 567
    :cond_0
    if-nez p1, :cond_1

    .line 568
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    .line 569
    return-void

    .line 572
    :cond_1
    invoke-virtual {p1}, Landroid/media/Rating;->getRatingStyle()I

    move-result v2

    iput v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    .line 573
    iget v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    packed-switch v2, :pswitch_data_0

    .line 589
    iput v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    .line 592
    :goto_0
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

    iget v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 593
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;

    iget v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 595
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    .line 563
    return-void

    .line 575
    :pswitch_0
    invoke-virtual {p1}, Landroid/media/Rating;->hasHeart()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 578
    :pswitch_1
    invoke-virtual {p1}, Landroid/media/Rating;->isThumbUp()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 583
    :pswitch_2
    invoke-virtual {p1}, Landroid/media/Rating;->getStarRating()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_0

    .line 586
    :pswitch_3
    invoke-virtual {p1}, Landroid/media/Rating;->getPercentRating()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 744
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    .line 745
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_0

    .line 746
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 748
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v1}, Lmiui/maml/elements/MusicController;->unregisterListener()V

    .line 750
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 751
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 752
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 743
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 692
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 694
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->initByPreference()V

    .line 696
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/MusicController;->registerListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 698
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 699
    .local v0, "playing":Z
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0, v3}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 701
    invoke-direct {p0, v3}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    .line 691
    :goto_0
    return-void

    .line 703
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    goto :goto_0
.end method

.method public initByPreference()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 708
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 709
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;

    const-string/jumbo v5, "MiuiMusic"

    .line 710
    const/4 v6, 0x4

    .line 709
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 711
    .local v2, "preference":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    .line 712
    const-string/jumbo v4, "songName"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 713
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v4, "artistName"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "artist":Ljava/lang/String;
    const-string/jumbo v4, "albumName"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, "album":Ljava/lang/String;
    invoke-direct {p0, v3, v1, v0}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .line 707
    .end local v0    # "album":Ljava/lang/String;
    .end local v1    # "artist":Ljava/lang/String;
    .end local v2    # "preference":Landroid/content/SharedPreferences;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 767
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 772
    invoke-direct {p0, v2, p1}, Lmiui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 773
    const/4 v0, 0x0

    return v0

    .line 776
    :cond_0
    const-string/jumbo v0, "music_prev"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "music_next"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    .line 778
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 780
    :cond_2
    return v2
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 723
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onVisibilityChange(Z)V

    .line 724
    if-eqz p1, :cond_0

    .line 725
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    .line 722
    :goto_0
    return-void

    .line 727
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 733
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->pause()V

    .line 732
    return-void
.end method

.method public ratingHeart()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 835
    iget v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    if-ne v4, v3, :cond_0

    .line 836
    iget v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    move v0, v3

    .line 837
    .local v0, "hasHeart":Z
    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    invoke-static {v2}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v1

    .line 838
    .local v1, "rating":Landroid/media/Rating;
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v2, v1}, Lmiui/maml/elements/MusicController;->rating(Landroid/media/Rating;)V

    .line 839
    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    .line 834
    .end local v0    # "hasHeart":Z
    .end local v1    # "rating":Landroid/media/Rating;
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 836
    goto :goto_0

    .restart local v0    # "hasHeart":Z
    :cond_2
    move v2, v3

    .line 837
    goto :goto_1
.end method

.method protected readPackageName()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 844
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    if-nez v3, :cond_1

    .line 845
    :cond_0
    return-void

    .line 847
    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v3}, Lmiui/maml/elements/MusicController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v2

    .line 848
    .local v2, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    if-eqz v2, :cond_2

    .line 851
    iget-object v3, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 853
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 854
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 855
    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 856
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 843
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 858
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 859
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v6}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 860
    const-string/jumbo v3, "MusicControlScreenElement"

    const-string/jumbo v4, "set player info fail."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 738
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->resume()V

    .line 739
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    .line 737
    return-void
.end method

.method public seekTo(D)V
    .locals 5
    .param p1, "progress"    # D

    .prologue
    .line 830
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v2

    mul-double/2addr v2, p1

    double-to-long v0, v2

    .line 831
    .local v0, "pos":J
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v2, v0, v1}, Lmiui/maml/elements/MusicController;->seekTo(J)Z

    .line 829
    return-void
.end method
