.class final synthetic Landroid/widget/DateTimeView$ReceiverInfo$-void_updateAll__LambdaImpl0;
.super Ljava/lang/Object;
.source "DateTimeView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView$ReceiverInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_updateAll__LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$view:Landroid/widget/DateTimeView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/DateTimeView;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/DateTimeView$ReceiverInfo$-void_updateAll__LambdaImpl0;->val$view:Landroid/widget/DateTimeView;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/DateTimeView$ReceiverInfo$-void_updateAll__LambdaImpl0;->val$view:Landroid/widget/DateTimeView;

    invoke-static {v0}, Landroid/widget/DateTimeView$ReceiverInfo;->-android_widget_DateTimeView$ReceiverInfo_lambda$1(Landroid/widget/DateTimeView;)V

    return-void
.end method
