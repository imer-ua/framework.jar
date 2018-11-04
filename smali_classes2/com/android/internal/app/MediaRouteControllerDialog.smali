.class public Lcom/android/internal/app/MediaRouteControllerDialog;
.super Landroid/app/Dialog;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;
    }
.end annotation


# static fields
.field private static final VOLUME_UPDATE_DELAY_MILLIS:I = 0xfa


# instance fields
.field private final mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

.field private mControlView:Landroid/view/View;

.field private mCreated:Z

.field private mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mDisconnectButton:Landroid/widget/Button;

.field private mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

.field private mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field private final mRouter:Landroid/media/MediaRouter;

.field private mVolumeControlEnabled:Z

.field private mVolumeLayout:Landroid/widget/LinearLayout;

.field private mVolumeSlider:Landroid/widget/SeekBar;

.field private mVolumeSliderTouched:Z


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/media/MediaRouter;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/app/MediaRouteControllerDialog;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/app/MediaRouteControllerDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/internal/app/MediaRouteControllerDialog;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/app/MediaRouteControllerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 76
    const-string/jumbo v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    .line 77
    new-instance v0, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;)V

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    .line 78
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v0}, Landroid/media/MediaRouter;->getSelectedRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 73
    return-void
.end method

.method private getIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 263
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 264
    const v1, 0x10803b4

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteConnectingDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 269
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 270
    const v1, 0x10803c9

    .line 269
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mMediaRouteOnDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private isVolumeControlAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 289
    iget-boolean v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getVolumeHandling()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private update()Z
    .locals 3

    .prologue
    .line 244
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 245
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 246
    const/4 v1, 0x0

    return v1

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 250
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    .line 252
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 253
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    .line 254
    iput-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCurrentIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 255
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 257
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private updateVolume()V
    .locals 2

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSliderTouched:Z

    if-nez v0, :cond_0

    .line 278
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->isVolumeControlAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolumeMax()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AbsSeekBar;->setMax(I)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMediaControlView()Landroid/view/View;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    return-object v0
.end method

.method public getRoute()Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method public isVolumeControlEnabled()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 211
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 213
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 214
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    .line 210
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 139
    const v1, 0x1090080

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 141
    const v1, 0x10203a4

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeLayout:Landroid/widget/LinearLayout;

    .line 142
    const v1, 0x10203a5

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    .line 143
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeSlider:Landroid/widget/SeekBar;

    new-instance v2, Lcom/android/internal/app/MediaRouteControllerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$1;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 179
    const v1, 0x10203a7

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    .line 180
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mDisconnectButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/internal/app/MediaRouteControllerDialog$2;

    invoke-direct {v2, p0}, Lcom/android/internal/app/MediaRouteControllerDialog$2;-><init>(Lcom/android/internal/app/MediaRouteControllerDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    .line 195
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->update()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/internal/app/MediaRouteControllerDialog;->onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    .line 198
    const v1, 0x10203a6

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 199
    .local v0, "controlFrame":Landroid/widget/FrameLayout;
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 200
    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mControlView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .end local v0    # "controlFrame":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v0    # "controlFrame":Landroid/widget/FrameLayout;
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onCreateMediaControlView(Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCallback:Lcom/android/internal/app/MediaRouteControllerDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 221
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 218
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v3, 0x19

    const/4 v1, 0x1

    .line 226
    if-eq p1, v3, :cond_0

    .line 227
    const/16 v0, 0x18

    if-ne p1, v0, :cond_2

    .line 228
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    if-ne p1, v3, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/media/MediaRouter$RouteInfo;->requestUpdateVolume(I)V

    .line 229
    return v1

    :cond_1
    move v0, v1

    .line 228
    goto :goto_0

    .line 231
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 236
    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    .line 237
    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 238
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setVolumeControlEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    if-eq v0, p1, :cond_0

    .line 118
    iput-boolean p1, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mVolumeControlEnabled:Z

    .line 119
    iget-boolean v0, p0, Lcom/android/internal/app/MediaRouteControllerDialog;->mCreated:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/internal/app/MediaRouteControllerDialog;->updateVolume()V

    .line 116
    :cond_0
    return-void
.end method
