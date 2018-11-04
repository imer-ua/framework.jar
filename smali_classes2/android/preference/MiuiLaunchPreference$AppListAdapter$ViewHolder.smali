.class Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MiuiLaunchPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MiuiLaunchPreference$AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mAppIcon:Landroid/widget/ImageView;

.field mAppNames:Landroid/widget/TextView;

.field mAppPackage:Landroid/widget/TextView;

.field final synthetic this$1:Landroid/preference/MiuiLaunchPreference$AppListAdapter;


# direct methods
.method constructor <init>(Landroid/preference/MiuiLaunchPreference$AppListAdapter;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/MiuiLaunchPreference$AppListAdapter$ViewHolder;->this$1:Landroid/preference/MiuiLaunchPreference$AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
