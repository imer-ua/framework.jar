.class public final Landroid/media/MiuiAudioRecord$AudioInfo;
.super Ljava/lang/Object;
.source "MiuiAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MiuiAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AudioInfo"
.end annotation


# instance fields
.field public size:J

.field final synthetic this$0:Landroid/media/MiuiAudioRecord;

.field public timeUs:J


# direct methods
.method public constructor <init>(Landroid/media/MiuiAudioRecord;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MiuiAudioRecord;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/media/MiuiAudioRecord$AudioInfo;->this$0:Landroid/media/MiuiAudioRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
