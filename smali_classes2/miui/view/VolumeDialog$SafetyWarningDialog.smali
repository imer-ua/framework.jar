.class final Lmiui/view/VolumeDialog$SafetyWarningDialog;
.super Landroid/app/AlertDialog;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SafetyWarningDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lmiui/view/VolumeDialog;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 935
    iput-object p1, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog;->this$0:Lmiui/view/VolumeDialog;

    .line 936
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 938
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 939
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 942
    const v0, 0x11090054

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 943
    const v0, 0x1040013

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 944
    new-instance v1, Lmiui/view/VolumeDialog$SafetyWarningDialog$1;

    invoke-direct {v1, p0}, Lmiui/view/VolumeDialog$SafetyWarningDialog$1;-><init>(Lmiui/view/VolumeDialog$SafetyWarningDialog;)V

    .line 943
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 949
    const v0, 0x1040009

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 950
    const/4 v0, 0x0

    nop

    nop

    .line 949
    const/4 v2, -0x2

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 951
    const v0, 0x1010355

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setIconAttribute(I)V

    .line 953
    new-instance v0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;

    invoke-direct {v0, p0}, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;-><init>(Lmiui/view/VolumeDialog$SafetyWarningDialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 935
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 965
    const/16 v0, 0x18

    if-eq v0, p1, :cond_0

    const/16 v0, 0x19

    if-ne v0, p1, :cond_1

    .line 966
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 968
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 973
    const/16 v0, 0x18

    if-eq v0, p1, :cond_0

    const/16 v0, 0x19

    if-ne v0, p1, :cond_1

    .line 974
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 976
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
