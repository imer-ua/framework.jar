.class Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "MiuiHideIconAppPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mAppCheck:Lmiui/widget/SlidingButton;

.field mAppIcon:Landroid/widget/ImageView;

.field mAppNames:Landroid/widget/TextView;

.field mAppPackage:Landroid/widget/TextView;

.field final synthetic this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;


# direct methods
.method constructor <init>(Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    .prologue
    .line 462
    iput-object p1, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$ViewHolder;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
