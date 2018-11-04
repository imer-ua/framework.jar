.class Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;
.super Landroid/database/ContentObserver;
.source "AutoDisableScreenButtonsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/AutoDisableScreenButtonsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisableButtonsSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/AutoDisableScreenButtonsManager;


# direct methods
.method public constructor <init>(Lmiui/util/AutoDisableScreenButtonsManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/util/AutoDisableScreenButtonsManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 307
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    .line 308
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 307
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 317
    iget-object v1, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v1}, Lmiui/util/AutoDisableScreenButtonsManager;->-get0(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 319
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "screen_buttons_state"

    .line 318
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 321
    const-string/jumbo v1, "auto_disable_screen_button"

    .line 320
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 323
    const-string/jumbo v1, "auto_disable_screen_button_cloud_setting"

    .line 322
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 325
    invoke-virtual {p0, v2}, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->onChange(Z)V

    .line 316
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 313
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->-wrap6(Lmiui/util/AutoDisableScreenButtonsManager;)V

    .line 312
    return-void
.end method
