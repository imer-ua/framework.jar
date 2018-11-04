.class Lmiui/app/ToggleManagerCompatibility$1;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManagerCompatibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManagerCompatibility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManagerCompatibility;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManagerCompatibility;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManagerCompatibility;

    .prologue
    .line 124
    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$1;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    sget-boolean v1, Lmiui/app/ToggleManagerCompatibility;->mEnableCustom:Z

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lmiui/app/ToggleManagerCompatibility$1;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-virtual {v1}, Lmiui/app/ToggleManagerCompatibility;->queryCustomToggles()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method
