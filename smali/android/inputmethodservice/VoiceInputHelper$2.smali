.class final Landroid/inputmethodservice/VoiceInputHelper$2;
.super Ljava/util/HashSet;
.source "VoiceInputHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 72
    const-string/jumbo v0, "com.baidu.input_mi"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    const-string/jumbo v0, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method
