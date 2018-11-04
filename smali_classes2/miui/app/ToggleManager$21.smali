.class Lmiui/app/ToggleManager$21;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/ToggleManager;->longClickScreenshot()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 2057
    iput-object p1, p0, Lmiui/app/ToggleManager$21;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 2061
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    .line 2062
    const-string/jumbo v0, "png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "jpg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2063
    const-string/jumbo v0, "jpeg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    .line 2062
    if-eqz v0, :cond_1

    .line 2064
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2066
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
