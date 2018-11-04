.class public Lmiui/process/MiuiApplicationThread;
.super Lmiui/process/IMiuiApplicationThread$Stub;
.source "MiuiApplicationThread.java"


# instance fields
.field private mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lmiui/process/IMiuiApplicationThread$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public longScreenshot(I)Z
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 10
    iget-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    if-nez v0, :cond_0

    new-instance v0, Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-direct {v0}, Lmiui/util/LongScreenshotUtils$ContentPort;-><init>()V

    iput-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    .line 11
    :cond_0
    iget-object v0, p0, Lmiui/process/MiuiApplicationThread;->mContentPort:Lmiui/util/LongScreenshotUtils$ContentPort;

    invoke-virtual {v0, p1}, Lmiui/util/LongScreenshotUtils$ContentPort;->longScreenshot(I)Z

    move-result v0

    return v0
.end method
