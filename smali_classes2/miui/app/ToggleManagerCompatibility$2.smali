.class Lmiui/app/ToggleManagerCompatibility$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lmiui/app/ToggleManagerCompatibility;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManagerCompatibility;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 183
    iput-object p1, p0, Lmiui/app/ToggleManagerCompatibility$2;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 185
    sget-boolean v0, Lmiui/app/ToggleManagerCompatibility;->mEnableCustom:Z

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lmiui/app/ToggleManagerCompatibility$2;->this$0:Lmiui/app/ToggleManagerCompatibility;

    invoke-virtual {v0}, Lmiui/app/ToggleManagerCompatibility;->queryCustomToggles()V

    .line 184
    :cond_0
    return-void
.end method
