.class Lmiui/app/ToggleManager$7;
.super Landroid/database/ContentObserver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManager;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 1175
    iput-object p1, p0, Lmiui/app/ToggleManager$7;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1178
    iget-object v1, p0, Lmiui/app/ToggleManager$7;->this$0:Lmiui/app/ToggleManager;

    iget-object v2, p0, Lmiui/app/ToggleManager$7;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v2}, Lmiui/app/ToggleManager;->-get4(Lmiui/app/ToggleManager;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 1179
    const-string/jumbo v3, "mobile_policy"

    invoke-static {}, Lmiui/app/ToggleManager;->-get8()I

    move-result v4

    .line 1178
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-static {v1, v0}, Lmiui/app/ToggleManager;->-set1(Lmiui/app/ToggleManager;Z)Z

    .line 1180
    iget-object v0, p0, Lmiui/app/ToggleManager$7;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-wrap9(Lmiui/app/ToggleManager;)V

    .line 1177
    return-void

    .line 1178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
