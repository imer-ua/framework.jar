.class public Lmiui/content/pm/PackageDeleteConfirmActivity;
.super Landroid/app/Activity;
.source "PackageDeleteConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/content/pm/PackageDeleteConfirmActivity$1;
    }
.end annotation


# static fields
.field private static final DELETE_MSG_NEXT_STEP_INTERVAL:I = 0x3e8

.field private static final DELETE_MSG_NEXT_STEP_WHAT:I = 0x64

.field public static final EXTRA_PKGNAME:Ljava/lang/String; = "extra_pkgname"

.field private static final MAX_STEPS:I = 0x3


# instance fields
.field private delete:Z

.field private mAppLabel:Ljava/lang/CharSequence;

.field private mAutoNextStepTime:I

.field private mCancelButton:Landroid/widget/Button;

.field private mCurrentStep:I

.field private mDeleteButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

.field private mPkgName:Ljava/lang/String;

.field private mWarningInfoView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lmiui/content/pm/PackageDeleteConfirmActivity;)I
    .locals 1

    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    return v0
.end method

.method static synthetic -get1(Lmiui/content/pm/PackageDeleteConfirmActivity;)I
    .locals 1

    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    return v0
.end method

.method static synthetic -get2(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/content/pm/PackageDeleteConfirmActivity;I)I
    .locals 0

    iput p1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    .line 42
    const/4 v0, 0x5

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    .line 149
    new-instance v0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;

    invoke-direct {v0, p0}, Lmiui/content/pm/PackageDeleteConfirmActivity$1;-><init>(Lmiui/content/pm/PackageDeleteConfirmActivity;)V

    iput-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method private getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p1, "step"    # I
    .param p2, "appLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    packed-switch p1, :pswitch_data_0

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 180
    :pswitch_0
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x110900d2

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 182
    :pswitch_1
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x110900d3

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :pswitch_2
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const v1, 0x110900d4

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadAppLabel()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 141
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 142
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 143
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 88
    iput-boolean v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 92
    :pswitch_1
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    if-ne v0, v6, :cond_0

    .line 93
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 94
    iput-boolean v5, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 97
    :cond_0
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    .line 98
    const/4 v0, 0x5

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    .line 100
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    if-ne v0, v6, :cond_1

    .line 103
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    new-array v1, v5, [Ljava/lang/Object;

    .line 104
    iget v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 103
    const v2, 0x110900d1

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_1
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    .line 113
    const-wide/16 v2, 0x3e8

    .line 112
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    new-array v1, v5, [Ljava/lang/Object;

    .line 107
    iget v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 106
    const v2, 0x110900cf

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 85
    :pswitch_data_0
    .packed-switch 0x110c0015
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v2, 0x11030001

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string/jumbo v2, "extra_pkgname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 61
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string/jumbo v2, "observer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 64
    invoke-static {v2}, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IPackageDeleteConfirmObserver;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

    .line 66
    invoke-direct {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->loadAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    .line 68
    const v2, 0x110c0014

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    .line 70
    const v2, 0x110c0015

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCancelButton:Landroid/widget/Button;

    .line 71
    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v2, 0x110c0016

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    .line 73
    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    iget-object v4, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x110900cf

    invoke-virtual {p0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 80
    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    const/16 v3, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 49
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 128
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    :try_start_0
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

    iget-boolean v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    invoke-interface {v1, v2}, Lmiui/content/pm/IPackageDeleteConfirmObserver;->onConfirm(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 127
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
