.class Landroid/media/MediaPlayerInjector;
.super Ljava/lang/Object;
.source "MediaPlayerInjector.java"


# static fields
.field public static final AUDIO_STATUS_CHANGE:I = 0x75f8


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static updateActiveProcessStatus(ZZII)V
    .locals 3
    .param p0, "stayAwake"    # Z
    .param p1, "awake"    # Z
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 11
    if-eq p0, p1, :cond_0

    const/16 v1, 0x2710

    if-le p3, v1, :cond_0

    .line 12
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 13
    .local v0, "status":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    const-string/jumbo v2, "&"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 15
    const-string/jumbo v2, "&"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x75f8

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 10
    .end local v0    # "status":I
    :cond_0
    return-void

    .line 12
    :cond_1
    const/4 v0, 0x2

    .restart local v0    # "status":I
    goto :goto_0
.end method
