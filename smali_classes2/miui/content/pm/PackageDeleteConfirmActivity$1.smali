.class Lmiui/content/pm/PackageDeleteConfirmActivity$1;
.super Landroid/os/Handler;
.source "PackageDeleteConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/PackageDeleteConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;


# direct methods
.method constructor <init>(Lmiui/content/pm/PackageDeleteConfirmActivity;)V
    .locals 0
    .param p1, "this$0"    # Lmiui/content/pm/PackageDeleteConfirmActivity;

    .prologue
    .line 149
    iput-object p1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, 0x64

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 151
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-set0(Lmiui/content/pm/PackageDeleteConfirmActivity;I)I

    .line 152
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get1(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x110900cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 154
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 150
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 158
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x110900d1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 159
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 161
    :cond_1
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get1(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 162
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    new-array v2, v2, [Ljava/lang/Object;

    .line 163
    iget-object v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v3}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 162
    const v3, 0x110900d2

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :goto_1
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get3(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get3(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;

    move-result-object v0

    .line 171
    const-wide/16 v2, 0x3e8

    .line 170
    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    new-array v2, v2, [Ljava/lang/Object;

    .line 166
    iget-object v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-static {v3}, Lmiui/content/pm/PackageDeleteConfirmActivity;->-get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 165
    const v3, 0x110900d0

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
