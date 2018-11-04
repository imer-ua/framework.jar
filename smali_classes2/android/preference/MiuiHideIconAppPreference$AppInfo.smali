.class public Landroid/preference/MiuiHideIconAppPreference$AppInfo;
.super Ljava/lang/Object;
.source "MiuiHideIconAppPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MiuiHideIconAppPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInfo"
.end annotation


# instance fields
.field public mActivity:Ljava/lang/String;

.field public mAppName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIntent:Landroid/content/Intent;

.field public mPackageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/preference/MiuiHideIconAppPreference;


# direct methods
.method public constructor <init>(Landroid/preference/MiuiHideIconAppPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/MiuiHideIconAppPreference;

    .prologue
    .line 287
    iput-object p1, p0, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
