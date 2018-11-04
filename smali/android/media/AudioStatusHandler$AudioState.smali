.class abstract Landroid/media/AudioStatusHandler$AudioState;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AudioState"
.end annotation


# instance fields
.field final DEFAULT_STATE:I

.field mPid:I

.field mStartTime:J

.field mState:I

.field mType:Landroid/media/AudioStatusHandler$Type;

.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioStatusHandler;Landroid/media/AudioStatusHandler$Type;)V
    .locals 1
    .param p1, "this$0"    # Landroid/media/AudioStatusHandler;
    .param p2, "type"    # Landroid/media/AudioStatusHandler$Type;

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioStatusHandler$AudioState;-><init>(Landroid/media/AudioStatusHandler;Landroid/media/AudioStatusHandler$Type;I)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioStatusHandler;Landroid/media/AudioStatusHandler$Type;I)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/AudioStatusHandler;
    .param p2, "type"    # Landroid/media/AudioStatusHandler$Type;
    .param p3, "defaultState"    # I

    .prologue
    .line 145
    iput-object p1, p0, Landroid/media/AudioStatusHandler$AudioState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput p3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    .line 147
    iput-object p2, p0, Landroid/media/AudioStatusHandler$AudioState;->mType:Landroid/media/AudioStatusHandler$Type;

    .line 148
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    .line 150
    iget v0, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    iput v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    .line 145
    return-void
.end method


# virtual methods
.method public abstract onMessageReceived(Landroid/os/Message;)Z
.end method

.method public abstract onStateChanged()V
.end method

.method public update(Landroid/os/Bundle;)Z
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 154
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    :cond_0
    return v4

    .line 158
    :cond_1
    iget-object v3, p0, Landroid/media/AudioStatusHandler$AudioState;->mType:Landroid/media/AudioStatusHandler$Type;

    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Landroid/media/AudioStatusHandler$Type;

    if-eq v3, v2, :cond_2

    .line 159
    return v4

    .line 162
    :cond_2
    const-string/jumbo v2, "pid"

    invoke-virtual {p1, v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "inPid":I
    const-string/jumbo v2, "state"

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 164
    .local v1, "inState":I
    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    if-ne v0, v2, :cond_3

    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    if-ne v1, v2, :cond_3

    .line 165
    return v4

    .line 168
    :cond_3
    iput v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    .line 169
    iput v1, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    .line 170
    iget-wide v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_4

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    .line 173
    :cond_4
    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    if-ne v2, v3, :cond_5

    .line 174
    iput-wide v6, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    .line 177
    :cond_5
    invoke-virtual {p0}, Landroid/media/AudioStatusHandler$AudioState;->onStateChanged()V

    .line 179
    const/4 v2, 0x1

    return v2
.end method
