.class Landroid/preference/MiuiHideIconAppPreference$1;
.super Ljava/lang/Object;
.source "MiuiHideIconAppPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MiuiHideIconAppPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MiuiHideIconAppPreference;


# direct methods
.method constructor <init>(Landroid/preference/MiuiHideIconAppPreference;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/MiuiHideIconAppPreference;

    .prologue
    .line 199
    iput-object p1, p0, Landroid/preference/MiuiHideIconAppPreference$1;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 216
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 203
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 207
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$1;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-static {v0}, Landroid/preference/MiuiHideIconAppPreference;->access$000(Landroid/preference/MiuiHideIconAppPreference;)Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Landroid/preference/MiuiHideIconAppPreference$1;->this$0:Landroid/preference/MiuiHideIconAppPreference;

    invoke-static {v0}, Landroid/preference/MiuiHideIconAppPreference;->access$000(Landroid/preference/MiuiHideIconAppPreference;)Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/MiuiHideIconAppPreference$AppListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 211
    :cond_0
    return-void
.end method
