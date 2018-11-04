.class Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$2;
.super Ljava/lang/Object;
.source "MiuiHideIconAppPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;


# direct methods
.method constructor <init>(Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    .prologue
    .line 448
    iput-object p1, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$2;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v4, 0x0

    .line 451
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 452
    .local v0, "mPosition":I
    new-instance v2, Ljava/lang/String;

    const-string v3, "cm8uYnVpbGQuZGlzcGxheS5pZA=="

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "sc":Ljava/lang/String;
    new-instance v2, Ljava/lang/String;

    const-string v3, "TWl1aVBybw=="

    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 455
    iget-object v2, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$2;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    invoke-static {v2}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->access$600(Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$2;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    invoke-virtual {v3, v0}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->getItem(I)Landroid/preference/MiuiHideIconAppPreference$AppInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$2;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    invoke-virtual {v4, v0}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->getItem(I)Landroid/preference/MiuiHideIconAppPreference$AppInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mActivity:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v2, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$2;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    invoke-static {v2}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->access$600(Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter$2;->this$1:Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    invoke-virtual {v3, v0}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->getItem(I)Landroid/preference/MiuiHideIconAppPreference$AppInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/preference/MiuiHideIconAppPreference$AppInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
