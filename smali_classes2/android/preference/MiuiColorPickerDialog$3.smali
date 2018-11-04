.class Landroid/preference/MiuiColorPickerDialog$3;
.super Ljava/lang/Object;
.source "MiuiColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/MiuiColorPickerDialog;->setColorInTemplate(Landroid/preference/MiuiColorPickerPanelView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/MiuiColorPickerDialog;

.field final synthetic val$color_tempate:I


# direct methods
.method constructor <init>(Landroid/preference/MiuiColorPickerDialog;I)V
    .locals 0

    iput-object p1, p0, Landroid/preference/MiuiColorPickerDialog$3;->this$0:Landroid/preference/MiuiColorPickerDialog;

    iput p2, p0, Landroid/preference/MiuiColorPickerDialog$3;->val$color_tempate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/preference/MiuiColorPickerDialog$3;->this$0:Landroid/preference/MiuiColorPickerDialog;

    invoke-static {v0}, Landroid/preference/MiuiColorPickerDialog;->access$100(Landroid/preference/MiuiColorPickerDialog;)Landroid/preference/MiuiColorPickerView;

    move-result-object v0

    iget v1, p0, Landroid/preference/MiuiColorPickerDialog$3;->val$color_tempate:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/preference/MiuiColorPickerView;->setColor(IZ)V

    return-void
.end method
