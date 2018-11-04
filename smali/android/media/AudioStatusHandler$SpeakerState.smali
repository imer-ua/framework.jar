.class Landroid/media/AudioStatusHandler$SpeakerState;
.super Landroid/media/AudioStatusHandler$AudioState;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpeakerState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioStatusHandler;)V
    .locals 1
    .param p1, "this$0"    # Landroid/media/AudioStatusHandler;

    .prologue
    .line 281
    iput-object p1, p0, Landroid/media/AudioStatusHandler$SpeakerState;->this$0:Landroid/media/AudioStatusHandler;

    .line 282
    sget-object v0, Landroid/media/AudioStatusHandler$Type;->SPEAKER:Landroid/media/AudioStatusHandler$Type;

    invoke-direct {p0, p1, v0}, Landroid/media/AudioStatusHandler$AudioState;-><init>(Landroid/media/AudioStatusHandler;Landroid/media/AudioStatusHandler$Type;)V

    .line 281
    return-void
.end method


# virtual methods
.method public onMessageReceived(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public onStateChanged()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Landroid/media/AudioStatusHandler$SpeakerState;->this$0:Landroid/media/AudioStatusHandler;

    const-wide/16 v2, 0x0

    const/16 v1, 0x2713

    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioStatusHandler;->-wrap1(Landroid/media/AudioStatusHandler;IJ)V

    .line 291
    return-void
.end method
