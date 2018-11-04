.class public Landroid/preference/MiuiLaunchPreference$AppInfo;
.super Ljava/lang/Object;
.source "MiuiLaunchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MiuiLaunchPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppInfo"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIntent:Landroid/content/Intent;

.field public mPackageName:Ljava/lang/String;

.field final synthetic this$0:Landroid/preference/MiuiLaunchPreference;


# direct methods
.method public constructor <init>(Landroid/preference/MiuiLaunchPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/MiuiLaunchPreference$AppInfo;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
