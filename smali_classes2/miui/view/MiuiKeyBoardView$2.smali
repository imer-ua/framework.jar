.class Lmiui/view/MiuiKeyBoardView$2;
.super Ljava/lang/Object;
.source "MiuiKeyBoardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/MiuiKeyBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/MiuiKeyBoardView;


# direct methods
.method constructor <init>(Lmiui/view/MiuiKeyBoardView;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/MiuiKeyBoardView;

    .prologue
    .line 381
    iput-object p1, p0, Lmiui/view/MiuiKeyBoardView$2;->this$0:Lmiui/view/MiuiKeyBoardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lmiui/view/MiuiKeyBoardView$2;->this$0:Lmiui/view/MiuiKeyBoardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/view/MiuiKeyBoardView;->-wrap1(Lmiui/view/MiuiKeyBoardView;Z)V

    .line 382
    return-void
.end method
