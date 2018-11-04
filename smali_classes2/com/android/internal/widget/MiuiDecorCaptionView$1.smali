.class Lcom/android/internal/widget/MiuiDecorCaptionView$1;
.super Ljava/lang/Object;
.source "MiuiDecorCaptionView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/MiuiDecorCaptionView;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {p2}, Lcom/miui/freeform/IMiuiFreeformWindowService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/freeform/IMiuiFreeformWindowService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-set0(Lcom/android/internal/widget/MiuiDecorCaptionView;Lcom/miui/freeform/IMiuiFreeformWindowService;)Lcom/miui/freeform/IMiuiFreeformWindowService;

    .line 140
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$1;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-set0(Lcom/android/internal/widget/MiuiDecorCaptionView;Lcom/miui/freeform/IMiuiFreeformWindowService;)Lcom/miui/freeform/IMiuiFreeformWindowService;

    .line 145
    return-void
.end method
