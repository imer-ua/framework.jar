.class public Lmiui/maml/MamlDrawable$MamlDrawableState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "MamlDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/MamlDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MamlDrawableState"
.end annotation


# instance fields
.field protected mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field protected mStateBadgeLocation:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method


# virtual methods
.method protected createDrawable()Lmiui/maml/MamlDrawable;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 153
    invoke-virtual {p0}, Lmiui/maml/MamlDrawable$MamlDrawableState;->createDrawable()Lmiui/maml/MamlDrawable;

    move-result-object v2

    .line 154
    .local v2, "ret":Lmiui/maml/MamlDrawable;
    if-nez v2, :cond_0

    return-object v3

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 157
    .local v0, "badgeDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 158
    .local v1, "badgeLocation":Landroid/graphics/Rect;
    iget-object v3, p0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 159
    iget-object v3, p0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 161
    .end local v0    # "badgeDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    .line 162
    new-instance v1, Landroid/graphics/Rect;

    .end local v1    # "badgeLocation":Landroid/graphics/Rect;
    iget-object v3, p0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    .line 163
    iget-object v6, p0, Lmiui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    .line 162
    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 166
    :cond_2
    invoke-virtual {v2, v0, v1}, Lmiui/maml/MamlDrawable;->setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 167
    return-object v2
.end method
