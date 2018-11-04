.class final Lmiui/view/RingerModeLayout$SilenceModeObserver;
.super Landroid/database/ContentObserver;
.source "RingerModeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SilenceModeObserver"
.end annotation


# instance fields
.field private final silence_mode:Landroid/net/Uri;

.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method public constructor <init>(Lmiui/view/RingerModeLayout;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/view/RingerModeLayout;

    .prologue
    .line 464
    iput-object p1, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    .line 465
    invoke-static {p1}, Lmiui/view/RingerModeLayout;->-get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 462
    const-string/jumbo v0, "zen_mode"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->silence_mode:Landroid/net/Uri;

    .line 464
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 479
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 480
    iget-object v1, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 481
    .local v0, "mode":I
    const-string/jumbo v1, "RingerModeLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Zenmode changeded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get2(Lmiui/view/RingerModeLayout;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1, v0}, Lmiui/view/RingerModeLayout;->-set1(Lmiui/view/RingerModeLayout;I)I

    .line 483
    iget-object v1, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v1}, Lmiui/view/RingerModeLayout;->-get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 478
    return-void
.end method

.method public register()V
    .locals 4

    .prologue
    .line 469
    iget-object v0, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->silence_mode:Landroid/net/Uri;

    .line 470
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 469
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 468
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lmiui/view/RingerModeLayout$SilenceModeObserver;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v0}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 473
    return-void
.end method
