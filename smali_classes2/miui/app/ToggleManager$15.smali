.class Lmiui/app/ToggleManager$15;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Lmiui/provider/ExtraTelephony$QuietModeEnableListener;


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
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/app/ToggleManager;

    .prologue
    .line 1231
    iput-object p1, p0, Lmiui/app/ToggleManager$15;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQuietModeEnableChange(Z)V
    .locals 1
    .param p1, "isMode"    # Z

    .prologue
    .line 1234
    iget-object v0, p0, Lmiui/app/ToggleManager$15;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v0}, Lmiui/app/ToggleManager;->-wrap15(Lmiui/app/ToggleManager;)V

    .line 1233
    return-void
.end method
