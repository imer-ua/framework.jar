.class public Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuperResolution.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/improve/SuperResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuperResolutionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/improve/SuperResolution;


# direct methods
.method public constructor <init>(Landroid/graphics/improve/SuperResolution;)V
    .locals 0
    .param p1, "this$0"    # Landroid/graphics/improve/SuperResolution;

    .prologue
    .line 183
    iput-object p1, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 187
    const-string/jumbo v1, "miui.intent.action.super_resolution_turnon"

    const-string/jumbo v2, "onReceive"

    invoke-static {v1, v2}, Landroid/graphics/improve/SRLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-nez p2, :cond_0

    .line 189
    return-void

    .line 191
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "miui.intent.action.super_resolution_turnon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v1, p1}, Landroid/graphics/improve/SuperResolution;->-wrap2(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    invoke-static {v1, p1}, Landroid/graphics/improve/SuperResolution;->-wrap7(Landroid/graphics/improve/SuperResolution;Landroid/content/Context;)V

    .line 186
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v1, p0, Landroid/graphics/improve/SuperResolution$SuperResolutionReceiver;->this$0:Landroid/graphics/improve/SuperResolution;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/improve/SuperResolution;->-set0(Landroid/graphics/improve/SuperResolution;Z)Z

    goto :goto_0
.end method
