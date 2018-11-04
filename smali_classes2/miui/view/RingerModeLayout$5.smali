.class Lmiui/view/RingerModeLayout$5;
.super Ljava/lang/Object;
.source "RingerModeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/RingerModeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/RingerModeLayout;


# direct methods
.method constructor <init>(Lmiui/view/RingerModeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/view/RingerModeLayout;

    .prologue
    .line 357
    iput-object p1, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 360
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 361
    .local v2, "value":I
    iget-object v3, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get15(Lmiui/view/RingerModeLayout;)Lmiui/widget/SeekBar;

    move-result-object v3

    mul-int/lit8 v4, v2, 0x19

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 362
    iget-object v3, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    mul-int/lit8 v4, v2, 0x19

    invoke-static {v3, v4}, Lmiui/view/RingerModeLayout;->-wrap2(Lmiui/view/RingerModeLayout;I)I

    move-result v1

    .line 363
    .local v1, "time":I
    iget-object v3, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MiuiSettings$SilenceMode;->getZenMode(Landroid/content/Context;)I

    move-result v0

    .line 364
    .local v0, "mode":I
    iget-object v3, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    iget-object v3, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get1(Lmiui/view/RingerModeLayout;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/app/ExtraNotificationManager;->startCountDownSilenceMode(Landroid/content/Context;II)V

    .line 366
    if-lez v2, :cond_0

    .line 367
    iget-object v3, p0, Lmiui/view/RingerModeLayout$5;->this$0:Lmiui/view/RingerModeLayout;

    invoke-static {v3}, Lmiui/view/RingerModeLayout;->-get4(Lmiui/view/RingerModeLayout;)Lmiui/view/RingerModeLayout$H;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 359
    :cond_0
    return-void
.end method
