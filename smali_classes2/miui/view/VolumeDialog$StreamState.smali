.class final Lmiui/view/VolumeDialog$StreamState;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamState"
.end annotation


# instance fields
.field private level:I

.field private levelMax:I

.field private levelMin:I

.field private muteSupported:Z

.field private muted:Z


# direct methods
.method static synthetic -get0(Lmiui/view/VolumeDialog$StreamState;)I
    .locals 1

    iget v0, p0, Lmiui/view/VolumeDialog$StreamState;->level:I

    return v0
.end method

.method static synthetic -get1(Lmiui/view/VolumeDialog$StreamState;)I
    .locals 1

    iget v0, p0, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    return v0
.end method

.method static synthetic -get2(Lmiui/view/VolumeDialog$StreamState;)I
    .locals 1

    iget v0, p0, Lmiui/view/VolumeDialog$StreamState;->levelMin:I

    return v0
.end method

.method static synthetic -get3(Lmiui/view/VolumeDialog$StreamState;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/view/VolumeDialog$StreamState;->muteSupported:Z

    return v0
.end method

.method static synthetic -get4(Lmiui/view/VolumeDialog$StreamState;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/view/VolumeDialog$StreamState;->muted:Z

    return v0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1087
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStreamStateByStreamType(Landroid/content/Context;ILmiui/view/VolumeDialog$VolumePanelDelegate;)Lmiui/view/VolumeDialog$StreamState;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "delegate"    # Lmiui/view/VolumeDialog$VolumePanelDelegate;

    .prologue
    .line 1105
    new-instance v1, Lmiui/view/VolumeDialog$StreamState;

    invoke-direct {v1}, Lmiui/view/VolumeDialog$StreamState;-><init>()V

    .line 1106
    .local v1, "ret":Lmiui/view/VolumeDialog$StreamState;
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1107
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v2

    iput v2, v1, Lmiui/view/VolumeDialog$StreamState;->level:I

    .line 1108
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iput v2, v1, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    .line 1109
    invoke-interface {p2, p1}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getStreamMinVolume(I)I

    move-result v2

    iput v2, v1, Lmiui/view/VolumeDialog$StreamState;->levelMin:I

    .line 1110
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    iput-boolean v2, v1, Lmiui/view/VolumeDialog$StreamState;->muted:Z

    .line 1111
    invoke-interface {p2, p1}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->isStreamAffectedByMute(I)Z

    move-result v2

    iput-boolean v2, v1, Lmiui/view/VolumeDialog$StreamState;->muteSupported:Z

    .line 1113
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 1114
    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    if-nez p1, :cond_1

    .line 1115
    :cond_0
    iget v2, v1, Lmiui/view/VolumeDialog$StreamState;->level:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmiui/view/VolumeDialog$StreamState;->level:I

    .line 1116
    iget v2, v1, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    .line 1120
    :cond_1
    return-object v1
.end method


# virtual methods
.method public copy()Lmiui/view/VolumeDialog$StreamState;
    .locals 2

    .prologue
    .line 1095
    new-instance v0, Lmiui/view/VolumeDialog$StreamState;

    invoke-direct {v0}, Lmiui/view/VolumeDialog$StreamState;-><init>()V

    .line 1096
    .local v0, "ret":Lmiui/view/VolumeDialog$StreamState;
    iget v1, p0, Lmiui/view/VolumeDialog$StreamState;->level:I

    iput v1, v0, Lmiui/view/VolumeDialog$StreamState;->level:I

    .line 1097
    iget v1, p0, Lmiui/view/VolumeDialog$StreamState;->levelMin:I

    iput v1, v0, Lmiui/view/VolumeDialog$StreamState;->levelMin:I

    .line 1098
    iget v1, p0, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    iput v1, v0, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    .line 1099
    iget-boolean v1, p0, Lmiui/view/VolumeDialog$StreamState;->muted:Z

    iput-boolean v1, v0, Lmiui/view/VolumeDialog$StreamState;->muted:Z

    .line 1100
    iget-boolean v1, p0, Lmiui/view/VolumeDialog$StreamState;->muteSupported:Z

    iput-boolean v1, v0, Lmiui/view/VolumeDialog$StreamState;->muteSupported:Z

    .line 1101
    return-object v0
.end method
