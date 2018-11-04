.class Landroid/preference/MiuiLaunchPreference$1;
.super Ljava/lang/Object;
.source "MiuiLaunchPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MiuiLaunchPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MiuiLaunchPreference;


# direct methods
.method constructor <init>(Landroid/preference/MiuiLaunchPreference;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/MiuiLaunchPreference$1;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Landroid/preference/MiuiLaunchPreference$1;->this$0:Landroid/preference/MiuiLaunchPreference;

    invoke-static {v0}, Landroid/preference/MiuiLaunchPreference;->access$000(Landroid/preference/MiuiLaunchPreference;)Landroid/preference/MiuiLaunchPreference$AppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/MiuiLaunchPreference$AppListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
